#include "tiled.h"
#include "bmms/native_wmma.hip.h"
#include <cstring>

namespace bmms::tiled {
using detail::Bits16;
using detail::Float8;
struct Args {
    const unsigned short* x;
    const unsigned short* z;
    float* output;
    int B,M,N,K;
};
struct Accumulators { Float8 lo{},hi{}; };

// A and B are staged once per CTA, in input-storage order for coalescing,
// then reused by all waves. Padding changes consecutive row LDS bank mapping.
// Single buffer: every producer/consumer, including masked tail lanes,
// participates in both barriers. No input-dependent preprocessing off-kernel.
template<int Rows,int TK,bool ContiguousK,int Threads>
__device__ __forceinline__ void stage(const unsigned short* input,unsigned short* lds,
    int origin,int tokens,int K,int k0) {
    constexpr int Count=Rows*TK/Threads;
    unsigned short values[Count];
    // Queue independent loads before LDS stores; the first implementation's
    // runtime-stride loop serialized VMEM -> wait -> DS for each scalar.
    #pragma unroll
    for(int j=0;j<Count;++j) {
        const int i=threadIdx.x+j*Threads;
        const int r=ContiguousK ? i/TK : i%Rows;
        const int k=ContiguousK ? i%TK : i/Rows;
        const int token=origin+r;
        values[j]=token<tokens && k0+k<K ? input[ContiguousK ? token*K+k0+k : (k0+k)*tokens+token] : 0;
    }
    #pragma unroll
    for(int j=0;j<Count;++j) {
        const int i=threadIdx.x+j*Threads;
        const int r=ContiguousK ? i/TK : i%Rows;
        const int k=ContiguousK ? i%TK : i/Rows;
        lds[r*(TK+2)+k]=values[j];
    }
}

template<int TM,int TN,int TK,DataType D,bool T1,bool T2>
__device__ __forceinline__ Accumulators compute(Args a,unsigned short* sa,unsigned short* sb) {
    const int mt=(a.M+TM-1)/TM,nt=(a.N+TN-1)/TN;
    const int task=blockIdx.x%(mt*nt),batch=blockIdx.x/(mt*nt);
    const int m0=(task/nt)*TM,n0=(task%nt)*TN;
    const int lane=threadIdx.x&31,wave=threadIdx.x>>5;
    const int wm=wave/(TN/32),wn=wave%(TN/32);
    const auto* x=a.x+batch*a.M*a.K;
    const auto* z=a.z+batch*a.N*a.K;
    Accumulators acc;
    for(int k0=0;k0<a.K;k0+=TK) {
        stage<TM,TK,!T1,32*(TM/16)*(TN/32)>(x,sa,m0,a.M,a.K,k0);
        stage<TN,TK,T2,32*(TM/16)*(TN/32)>(z,sb,n0,a.N,a.K,k0);
        __syncthreads();
        #pragma unroll
        for(int k=0;k<TK;k+=16) {
            Bits16 av,b0,b1;
            __builtin_memcpy(&av,sa+(wm*16+(lane&15))*(TK+2)+k,32);
            __builtin_memcpy(&b0,sb+(wn*32+(lane&15))*(TK+2)+k,32);
            __builtin_memcpy(&b1,sb+(wn*32+16+(lane&15))*(TK+2)+k,32);
            acc.lo=detail::native_mma<D>(av,b0,acc.lo);
            acc.hi=detail::native_mma<D>(av,b1,acc.hi);
        }
        __syncthreads();
    }
    return acc;
}

template<int TM,int TN,int TK,DataType D,bool T1,bool T2>
__global__ __launch_bounds__(32*(TM/16)*(TN/32)) void tiled_gemm(Args a) {
    __shared__ unsigned short sa[TM*(TK+2)],sb[TN*(TK+2)];
    const auto acc=compute<TM,TN,TK,D,T1,T2>(a,sa,sb);
    const int mt=(a.M+TM-1)/TM,nt=(a.N+TN-1)/TN;
    const int task=blockIdx.x%(mt*nt),batch=blockIdx.x/(mt*nt);
    const int lane=threadIdx.x&31,wave=threadIdx.x>>5;
    const int m0=(task/nt)*TM+(wave/(TN/32))*16;
    const int n0=(task%nt)*TN+(wave%(TN/32))*32+(lane&15);
    #pragma unroll
    for(int i=0;i<8;++i) {
        const int m=m0+2*i+(lane>>4);
        if(m<a.M) {
            if(n0<a.N)a.output[(batch*a.M+m)*a.N+n0]=acc.lo[i];
            if(n0+16<a.N)a.output[(batch*a.M+m)*a.N+n0+16]=acc.hi[i];
        }
    }
}

// Within-CTA split-K increases independent waves for low-B problems. Every
// C element is merged in fixed order BEFORE any Max; no cross-CTA split-K.
template<DataType D,bool T1,bool T2>
__global__ __launch_bounds__(128) void splitk_gemm(Args a) {
    __shared__ float partial[4*16*32];
    const int mt=(a.M+15)/16,nt=(a.N+31)/32;
    const int task=blockIdx.x%(mt*nt),batch=blockIdx.x/(mt*nt);
    const int m0=(task/nt)*16,n0=(task%nt)*32;
    const int lane=threadIdx.x&31,wave=threadIdx.x>>5;
    const int chunks=(a.K+15)/16,per=(chunks+3)/4;
    const auto* x=a.x+batch*a.M*a.K;
    const auto* z=a.z+batch*a.N*a.K;
    Accumulators acc;
    for(int kk=wave*per*16;kk<a.K && kk<(wave+1)*per*16;kk+=16) {
        auto av=detail::load_native<!T1>(x,m0+(lane&15),kk,a.M,a.K);
        auto b0=detail::load_native<T2>(z,n0+(lane&15),kk,a.N,a.K);
        auto b1=detail::load_native<T2>(z,n0+16+(lane&15),kk,a.N,a.K);
        acc.lo=detail::native_mma<D>(av,b0,acc.lo);
        acc.hi=detail::native_mma<D>(av,b1,acc.hi);
    }
    #pragma unroll
    for(int i=0;i<8;++i) {
        const int row=2*i+(lane>>4),col=lane&15;
        partial[(wave*16+row)*32+col]=acc.lo[i];
        partial[(wave*16+row)*32+col+16]=acc.hi[i];
    }
    __syncthreads();
    if(wave==0) {
        #pragma unroll
        for(int i=0;i<8;++i) {
            const int row=2*i+(lane>>4),col=lane&15;
            float lo=0,hi=0;
            #pragma unroll
            for(int w=0;w<4;++w) {
                lo+=partial[(w*16+row)*32+col];
                hi+=partial[(w*16+row)*32+col+16];
            }
            if(m0+row<a.M) {
                if(n0+col<a.N)a.output[(batch*a.M+m0+row)*a.N+n0+col]=lo;
                if(n0+col+16<a.N)a.output[(batch*a.M+m0+row)*a.N+n0+col+16]=hi;
            }
        }
    }
}

bool valid(int B,int M,int N,int K,int bf16,int t1,int t2,int config) {
    return B>=1 && B<=64 && M>=1 && M<=8192 && N>=1 && N<=8192 && K>=32 && K<=8192 && K%8==0 &&
           static_cast<long long>(B)*M*K<=(1LL<<26) && static_cast<long long>(B)*N*K<=(1LL<<26) &&
           bf16>=0 && bf16<=1 && t1>=0 && t1<=1 && t2>=0 && t2<=1 && config>=0 && config<=6;
}

template<DataType D,bool T1,bool T2>
void enqueue(Args a,int config,hipStream_t stream) {
    #define TILE(TM,TN,TK) hipLaunchKernelGGL((tiled_gemm<TM,TN,TK,D,T1,T2>),dim3(a.B*((a.M+TM-1)/TM)*((a.N+TN-1)/TN)),dim3(32*(TM/16)*(TN/32)),0,stream,a)
    switch(config) {
        case 0:TILE(16,32,64);break;
        case 1:TILE(16,64,64);break;
        case 2:TILE(32,64,64);break;
        case 3:TILE(16,64,32);break;
        case 4:hipLaunchKernelGGL((splitk_gemm<D,T1,T2>),dim3(a.B*((a.M+15)/16)*((a.N+31)/32)),dim3(128),0,stream,a);break;
    }
    #undef TILE
}

template<DataType D>
void dispatch(Args a,bool t1,bool t2,int config,hipStream_t stream) {
    if(t1) {if(t2)enqueue<D,true,true>(a,config,stream);else enqueue<D,true,false>(a,config,stream);}
    else {if(t2)enqueue<D,false,true>(a,config,stream);else enqueue<D,false,false>(a,config,stream);}
}
}

extern "C" int bmms_tiled_gemm(const void* x,const void* z,float* c,
    int B,int M,int N,int K,int bf16,int t1,int t2,int config,void* stream) {
    using namespace bmms::tiled;
    if(config>4 || !x || !z || !c || !valid(B,M,N,K,bf16,t1,t2,config))return 1;
    int device;hipDeviceProp_t p{};
    if(hipGetDevice(&device)!=hipSuccess || hipGetDeviceProperties(&p,device)!=hipSuccess)return 3;
    if(std::strncmp(p.gcnArchName,"gfx1100",7)!=0 || p.warpSize!=32)return 2;
    Args a{static_cast<const unsigned short*>(x),static_cast<const unsigned short*>(z),c,B,M,N,K};
    if(bf16)dispatch<bmms::DataType::BFloat16>(a,t1,t2,config,static_cast<hipStream_t>(stream));
    else dispatch<bmms::DataType::Float16>(a,t1,t2,config,static_cast<hipStream_t>(stream));
    return hipGetLastError()==hipSuccess ? 0 : 3;
}

namespace bmms::tiled {
struct FusionArgs { Args dot; float* partial; unsigned* counters; };

__device__ float finish_sum(float value,float* scratch) {
    const int lane=threadIdx.x&31,wave=threadIdx.x>>5;
    for(int d=16;d;d>>=1)value+=__shfl_down(value,d,32);
    if(lane==0)scratch[wave]=value;
    __syncthreads();
    value=threadIdx.x<blockDim.x/32 ? scratch[lane] : 0.0f;
    if(wave==0)for(int d=16;d;d>>=1)value+=__shfl_down(value,d,32);
    return value;
}

template<int Split,bool Prefetch,DataType D,bool T1,bool T2>
__global__ __launch_bounds__(32*Split) void fused_tiled(FusionArgs f) {
    __shared__ float shared[Split*16*32];
    __shared__ float sums[Split];
    __shared__ unsigned last;
    const auto a=f.dot;
    const int mt=(a.M+15)/16,nt=(a.N+31)/32,groups=mt*nt;
    const int task=blockIdx.x%groups,batch=blockIdx.x/groups;
    const int m0=(task/nt)*16,n0=(task%nt)*32;
    const int lane=threadIdx.x&31,wave=threadIdx.x>>5;
    const int chunks=(a.K+15)/16,per=(chunks+Split-1)/Split;
    const auto* x=a.x+batch*a.M*a.K;
    const auto* z=a.z+batch*a.N*a.K;
    Accumulators acc;
    if constexpr(Prefetch) {
        const int begin=wave*per*16,end=min(a.K,(wave+1)*per*16);
        if(begin<end) {
            auto av=detail::finish_operand<!T1>(detail::issue_operand<!T1>(x,m0+(lane&15),begin,a.M,a.K));
            auto b0=detail::finish_operand<T2>(detail::issue_operand<T2>(z,n0+(lane&15),begin,a.N,a.K));
            auto b1=detail::finish_operand<T2>(detail::issue_operand<T2>(z,n0+16+(lane&15),begin,a.N,a.K));
            for(int kk=begin;kk<end;kk+=16) {
                detail::PendingOperand na{},nb0{},nb1{};
                if(kk+16<end) {
                    na=detail::issue_operand<!T1>(x,m0+(lane&15),kk+16,a.M,a.K);
                    nb0=detail::issue_operand<T2>(z,n0+(lane&15),kk+16,a.N,a.K);
                    nb1=detail::issue_operand<T2>(z,n0+16+(lane&15),kk+16,a.N,a.K);
                }
                acc.lo=detail::native_mma<D>(av,b0,acc.lo);
                acc.hi=detail::native_mma<D>(av,b1,acc.hi);
#ifdef __HIP_DEVICE_COMPILE__
                asm volatile("" :: "v"(acc.lo),"v"(acc.hi) : "memory");
#endif
                if(kk+16<end) {
                    av=detail::finish_operand<!T1>(na);
                    b0=detail::finish_operand<T2>(nb0);
                    b1=detail::finish_operand<T2>(nb1);
                }
            }
        }
    } else {
    for(int kk=wave*per*16;kk<a.K && kk<(wave+1)*per*16;kk+=16) {
        auto av=detail::load_native<!T1>(x,m0+(lane&15),kk,a.M,a.K);
        auto b0=detail::load_native<T2>(z,n0+(lane&15),kk,a.N,a.K);
        auto b1=detail::load_native<T2>(z,n0+16+(lane&15),kk,a.N,a.K);
        acc.lo=detail::native_mma<D>(av,b0,acc.lo);
        acc.hi=detail::native_mma<D>(av,b1,acc.hi);
    }
    }
    #pragma unroll
    for(int i=0;i<8;++i) {
        const int row=2*i+(lane>>4),col=lane&15;
        shared[(wave*16+row)*32+col]=acc.lo[i];
        shared[(wave*16+row)*32+col+16]=acc.hi[i];
    }
    __syncthreads();
    if(wave==0) {
        #pragma unroll
        for(int i=0;i<8;++i) {
            const int row=2*i+(lane>>4),col=lane&15;
            float lo=0,hi=0;
            #pragma unroll
            for(int w=0;w<Split;++w) {
                lo+=shared[(w*16+row)*32+col];
                hi+=shared[(w*16+row)*32+col+16];
            }
            // Full-K C is merged before Max. Tail N never contributes zero.
            float maximum=fmaxf(n0+col<a.N ? lo : -INFINITY,n0+col+16<a.N ? hi : -INFINITY);
            for(int d=8;d;d>>=1)maximum=fmaxf(maximum,__shfl_down(maximum,d,16));
            if(col==0)f.partial[(batch*groups+task)*16+row]=maximum;
        }
    }
    __syncthreads();
    if(threadIdx.x==0) {
        const unsigned ticket=__hip_atomic_fetch_add(f.counters+batch,1u,__ATOMIC_ACQ_REL,__HIP_MEMORY_SCOPE_AGENT);
        last=ticket==static_cast<unsigned>(groups-1);
    }
    __syncthreads();
    if(!last)return;
    // Every finalizer thread acquires; finish_sum's barrier precedes reset.
    (void)__hip_atomic_load(f.counters+batch,__ATOMIC_ACQUIRE,__HIP_MEMORY_SCOPE_AGENT);
    float value=0;
    for(int m=threadIdx.x;m<a.M;m+=blockDim.x) {
        float maximum=-INFINITY;
        for(int n=0;n<nt;++n)maximum=fmaxf(maximum,f.partial[(batch*groups+(m/16)*nt+n)*16+m%16]);
        value+=maximum;
    }
    value=finish_sum(value,sums);
    if(threadIdx.x==0) {
        a.output[batch]=value;
        __hip_atomic_store(f.counters+batch,0u,__ATOMIC_RELEASE,__HIP_MEMORY_SCOPE_AGENT);
    }
}

template<DataType D,bool T1,bool T2>
void fused_enqueue(FusionArgs a,int config,hipStream_t stream) {
    const dim3 grid(a.dot.B*((a.dot.M+15)/16)*((a.dot.N+31)/32));
    if(config==4)hipLaunchKernelGGL((fused_tiled<4,false,D,T1,T2>),grid,dim3(128),0,stream,a);
    else if(config==5)hipLaunchKernelGGL((fused_tiled<8,false,D,T1,T2>),grid,dim3(256),0,stream,a);
    else hipLaunchKernelGGL((fused_tiled<8,true,D,T1,T2>),grid,dim3(256),0,stream,a);
}

template<DataType D>
void fused_dispatch(FusionArgs a,bool t1,bool t2,int config,hipStream_t stream) {
    if(t1) {if(t2)fused_enqueue<D,true,true>(a,config,stream);else fused_enqueue<D,true,false>(a,config,stream);}
    else {if(t2)fused_enqueue<D,false,true>(a,config,stream);else fused_enqueue<D,false,false>(a,config,stream);}
}
}

extern "C" int bmms_tiled_plan(int B,int M,int N,int K,int bf16,int t1,int t2,int config,size_t* bytes,size_t* offset) {
    if(!bytes || !offset || (config!=4 && config!=5 && config!=6) || !bmms::tiled::valid(B,M,N,K,bf16,t1,t2,config))return 1;
    const size_t parts=static_cast<size_t>(B)*((M+15)/16)*((N+31)/32)*16;
    const size_t off=(parts*sizeof(float)+255)&~size_t(255);
    *bytes=(off+B*sizeof(unsigned)+255)&~size_t(255);*offset=off;
    return 0;
}

extern "C" int bmms_tiled_fused(const void* x,const void* z,float* y,void* workspace,size_t bytes,
    int B,int M,int N,int K,int bf16,int t1,int t2,int config,void* stream) {
    using namespace bmms::tiled;
    size_t required,offset;
    const int code=bmms_tiled_plan(B,M,N,K,bf16,t1,t2,config,&required,&offset);
    if(code)return code;
    if(!x || !z || !y || !workspace || bytes<required || reinterpret_cast<uintptr_t>(workspace)%256)return 1;
    int device;hipDeviceProp_t p{};
    if(hipGetDevice(&device)!=hipSuccess || hipGetDeviceProperties(&p,device)!=hipSuccess)return 3;
    if(std::strncmp(p.gcnArchName,"gfx1100",7)!=0 || p.warpSize!=32)return 2;
    FusionArgs a{{static_cast<const unsigned short*>(x),static_cast<const unsigned short*>(z),y,B,M,N,K},
        static_cast<float*>(workspace),reinterpret_cast<unsigned*>(static_cast<unsigned char*>(workspace)+offset)};
    if(bf16)fused_dispatch<bmms::DataType::BFloat16>(a,t1,t2,config,static_cast<hipStream_t>(stream));
    else fused_dispatch<bmms::DataType::Float16>(a,t1,t2,config,static_cast<hipStream_t>(stream));
    return hipGetLastError()==hipSuccess ? 0 : 3;
}
