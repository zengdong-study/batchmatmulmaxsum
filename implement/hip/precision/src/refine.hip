#include <hip/hip_runtime.h>
#include <cmath>
#include <cstdint>
#include <cfloat>
#include <cstring>

#ifndef BMMS_REFINE_N
#define BMMS_REFINE_N 256
#endif
namespace {
struct Args {const unsigned short *x,*z;float* y;double* partial;unsigned* counters;int B,M,N,K;};
template<bool BF> __device__ float decode(unsigned short v) {
    if constexpr(BF)return __uint_as_float(static_cast<unsigned>(v)<<16);
    else return static_cast<float>(__builtin_bit_cast(_Float16,v));
}
template<bool BF,bool CK,int Rows> __device__ void stage(const unsigned short* src,float* dst,int origin,int tokens,int K,int k0,float& maximum) {
    #pragma unroll
    for(int j=0;j<Rows*16/256;++j) {
        const int idx=threadIdx.x+j*256,r=CK ? idx/16 : idx%Rows,k=CK ? idx%16 : idx/Rows;
        float v=0;
        if(origin+r<tokens && k0+k<K)v=decode<BF>(src[CK ? (origin+r)*K+k0+k : (k0+k)*tokens+origin+r]);
        dst[r*17+k]=v;maximum=fmaxf(maximum,fabsf(v));
    }
}
__device__ double block_sum(double v,double* scratch) {
    const int lane=threadIdx.x&31,wave=threadIdx.x>>5;
    for(int d=16;d;d>>=1)v+=__shfl_down(v,d,32);
    if(lane==0)scratch[wave]=v;
    __syncthreads();v=threadIdx.x<8 ? scratch[lane] : 0;
    if(wave==0)for(int d=16;d;d>>=1)v+=__shfl_down(v,d,32);
    return v;
}
template<bool BF,bool T1,bool T2>
__global__ __launch_bounds__(256) void certified_fma(Args a) {
    constexpr int Cols=BMMS_REFINE_N/16;
    __shared__ float sa[64*17],sb[BMMS_REFINE_N*17],norms[16];
    __shared__ double sums[8];__shared__ unsigned last;
    const int mt=(a.M+63)/64,nt=(a.N+BMMS_REFINE_N-1)/BMMS_REFINE_N,groups=mt*nt;
    const int task=blockIdx.x%groups,batch=blockIdx.x/groups;
    const int m0=(task/nt)*64,n0=(task%nt)*BMMS_REFINE_N;
    const int tx=threadIdx.x&15,ty=threadIdx.x>>4,lane=threadIdx.x&31,wave=threadIdx.x>>5;
    const auto* x=a.x+batch*a.M*a.K;const auto* z=a.z+batch*a.N*a.K;
    float c[4][Cols]={},ma=0,mb=0;
    for(int k0=0;k0<a.K;k0+=16) {
        stage<BF,!T1,64>(x,sa,m0,a.M,a.K,k0,ma);stage<BF,T2,BMMS_REFINE_N>(z,sb,n0,a.N,a.K,k0,mb);__syncthreads();
        #pragma unroll
        for(int k=0;k<16;++k) {
            float aa[4],bb[Cols];
            #pragma unroll
            for(int i=0;i<4;++i)aa[i]=sa[(ty*4+i)*17+k];
            #pragma unroll
            for(int j=0;j<Cols;++j)bb[j]=sb[(tx*Cols+j)*17+k];
            #pragma unroll
            for(int i=0;i<4;++i) {
                #pragma unroll
                for(int j=0;j<Cols;++j)c[i][j]=fmaf(aa[i],bb[j],c[i][j]);
            }
        }
        __syncthreads();
    }
    for(int d=16;d;d>>=1){ma=fmaxf(ma,__shfl_xor(ma,d,32));mb=fmaxf(mb,__shfl_xor(mb,d,32));}
    if(lane==0){norms[wave]=ma;norms[8+wave]=mb;}
    __syncthreads();ma=0;mb=0;
    #pragma unroll
    for(int i=0;i<8;++i){ma=fmaxf(ma,norms[i]);mb=fmaxf(mb,norms[8+i]);}
    // FP32 FMA forward error <= gamma_K * K * max|A| * max|B|.
    // The discard band is 8x this bound (vs required 2x), leaving room for
    // evaluating the bound/threshold in FP32. FTZ is covered by K*FLT_MIN.
    // Nonfinite approximations/bounds refine ALL corresponding columns.
    const double u=0x1p-24;
    const float band=static_cast<float>(8.0*((a.K*u)/(1-a.K*u))*a.K*static_cast<double>(ma)*mb+8.0*a.K*FLT_MIN);
    #pragma unroll
    for(int i=0;i<4;++i) {
        float best=-INFINITY;
        #pragma unroll
        for(int j=0;j<Cols;++j)if(n0+tx*Cols+j<a.N)best=fmaxf(best,c[i][j]);
        for(int d=8;d;d>>=1)best=fmaxf(best,__shfl_xor(best,d,16));
        const float threshold=best-band;
        double exact=-INFINITY;
        #pragma unroll
        for(int j=0;j<Cols;++j) {
            const bool candidate=m0+ty*4+i<a.M && n0+tx*Cols+j<a.N &&
                (!isfinite(c[i][j]) || !isfinite(threshold) || c[i][j]>=threshold);
            const unsigned bits=static_cast<unsigned>(__ballot(candidate));
            unsigned mask=(bits>>((lane>>4)*16))&65535u;
            while(mask) {
                const int source=__ffs(mask)-1,n=n0+source*Cols+j,m=m0+ty*4+i;
                double dot=0;
                for(int k=tx;k<a.K;k+=16) {
                    const float av=decode<BF>(x[T1 ? k*a.M+m : m*a.K+k]);
                    const float bv=decode<BF>(z[T2 ? n*a.K+k : k*a.N+n]);
                    dot=fma(static_cast<double>(av),static_cast<double>(bv),dot);
                }
                for(int d=8;d;d>>=1)dot+=__shfl_down(dot,d,16);
                if(tx==0)exact=fmax(exact,dot);
                mask&=mask-1;
            }
        }
        if(tx==0)a.partial[(static_cast<size_t>(batch)*groups+task)*64+ty*4+i]=exact;
    }
    __syncthreads();
    if(threadIdx.x==0)last=__hip_atomic_fetch_add(a.counters+batch,1u,__ATOMIC_ACQ_REL,__HIP_MEMORY_SCOPE_AGENT)==static_cast<unsigned>(groups-1);
    __syncthreads();if(!last)return;
    (void)__hip_atomic_load(a.counters+batch,__ATOMIC_ACQUIRE,__HIP_MEMORY_SCOPE_AGENT);
    double value=0;
    for(int m=threadIdx.x;m<a.M;m+=256) {
        double maximum=-INFINITY;
        for(int n=0;n<nt;++n)maximum=fmax(maximum,a.partial[(static_cast<size_t>(batch)*groups+(m/64)*nt+n)*64+m%64]);
        value+=maximum;
    }
    value=block_sum(value,sums);
    if(threadIdx.x==0){a.y[batch]=static_cast<float>(value);__hip_atomic_store(a.counters+batch,0u,__ATOMIC_RELEASE,__HIP_MEMORY_SCOPE_AGENT);}
}
template<bool BF>void dispatch(Args a,int t1,int t2,hipStream_t stream) {
    const dim3 grid(a.B*((a.M+63)/64)*((a.N+BMMS_REFINE_N-1)/BMMS_REFINE_N));
    #define GO(T1,T2) hipLaunchKernelGGL((certified_fma<BF,T1,T2>),grid,dim3(256),0,stream,a)
    if(t1){if(t2){GO(true,true);}else{GO(true,false);}}else{if(t2){GO(false,true);}else{GO(false,false);}}
    #undef GO
}
}
extern "C" int bmms_refine_plan(int B,int M,int N,int K,int bf,int t1,int t2,int cfg,size_t* bytes,size_t* offset) {
    if(!bytes || !offset || B<1 || B>64 || M<1 || M>8192 || N<1 || N>8192 || K<32 || K>256 || K%8 ||
       bf<0 || bf>1 || t1<0 || t1>1 || t2<0 || t2>1 || cfg!=13 || static_cast<long long>(B)*M*K>(1LL<<26) || static_cast<long long>(B)*N*K>(1LL<<26))return 1;
    const size_t off=(static_cast<size_t>(B)*((M+63)/64)*((N+BMMS_REFINE_N-1)/BMMS_REFINE_N)*64*8+255)&~size_t(255);
    *offset=off;*bytes=(off+B*4+255)&~size_t(255);return 0;
}
extern "C" int bmms_refine_fused(const void* x,const void* z,float* y,void* workspace,size_t size,int B,int M,int N,int K,int bf,int t1,int t2,int cfg,void* stream) {
    size_t bytes,off;const int code=bmms_refine_plan(B,M,N,K,bf,t1,t2,cfg,&bytes,&off);if(code)return code;
    if(!x || !z || !y || !workspace || size<bytes || reinterpret_cast<uintptr_t>(workspace)%256)return 1;
    int dev;hipDeviceProp_t prop{};if(hipGetDevice(&dev)!=hipSuccess || hipGetDeviceProperties(&prop,dev)!=hipSuccess)return 3;
    if(std::strncmp(prop.gcnArchName,"gfx1100",7)!=0 || prop.warpSize!=32)return 2;
    Args a{static_cast<const unsigned short*>(x),static_cast<const unsigned short*>(z),y,static_cast<double*>(workspace),reinterpret_cast<unsigned*>(static_cast<unsigned char*>(workspace)+off),B,M,N,K};
    if(bf)dispatch<true>(a,t1,t2,static_cast<hipStream_t>(stream));else dispatch<false>(a,t1,t2,static_cast<hipStream_t>(stream));
    return hipGetLastError()==hipSuccess ? 0 : 3;
}

extern "C" int bmms_tiled_plan(int B,int M,int N,int K,int bf,int t1,int t2,int cfg,size_t* bytes,size_t* off) {return bmms_refine_plan(B,M,N,K,bf,t1,t2,cfg,bytes,off);}
extern "C" int bmms_tiled_fused(const void* x,const void* z,float* y,void* w,size_t bytes,int B,int M,int N,int K,int bf,int t1,int t2,int cfg,void* stream) {return bmms_refine_fused(x,z,y,w,bytes,B,M,N,K,bf,t1,t2,cfg,stream);}
