#include "bmms/split_mn.h"
#include "bmms/wmma_load.hip.h"
#include <cstring>
#include <cstdint>

namespace bmms::split_mn {
namespace {
struct KernelArgs {
    const unsigned short* x;
    const unsigned short* z;
    float* y;
    float* partial;
    unsigned* counters;
    int B,M,N,K,groupSize,groups;
};

// At most eight waves. Fixed tree makes floating-point summation independent
// of which producer wins the last-task election.
__device__ float block_sum(float value,float* scratch) {
    const int lane=threadIdx.x&31,wave=threadIdx.x>>5;
    for(int d=16;d;d>>=1)value+=__shfl_down(value,d,32);
    if(lane==0)scratch[wave]=value;
    __syncthreads();
    value=threadIdx.x<blockDim.x/32 ? scratch[lane] : 0.0f;
    if(wave==0)for(int d=16;d;d>>=1)value+=__shfl_down(value,d,32);
    return value;
}

template<DataType D,bool T1,bool T2,bool AlongN>
__global__ __launch_bounds__(256) void fused_split_mn(KernelArgs a) {
    __shared__ float sums[8];
    __shared__ unsigned last;
    const int task=blockIdx.x%a.groups,batch=blockIdx.x/a.groups;
    const int lane=threadIdx.x&31,wave=threadIdx.x>>5,waves=blockDim.x>>5;
    const auto* x=a.x+batch*(a.M*a.K);
    const auto* z=a.z+batch*(a.N*a.K);
    const int mBegin=AlongN ? 0 : task*a.groupSize;
    const int mEnd=AlongN ? a.M : min(a.M,mBegin+a.groupSize);
    const int nBegin=AlongN ? task*a.groupSize : 0;
    const int nEnd=AlongN ? min(a.N,nBegin+a.groupSize) : a.N;
    float total=0.0f;
    for(int m0=mBegin+wave*16;m0<mEnd;m0+=waves*16) {
        detail::Float8 maximum;
        #pragma unroll
        for(int i=0;i<8;++i)maximum[i]=-INFINITY;
        // Two independent N accumulators reuse A, without materializing a
        // similarity matrix. A complete K dot precedes every Max update.
        for(int n0=nBegin;n0<nEnd;n0+=32) {
            detail::Float8 c0{},c1{};
            for(int k=0;k<a.K;k+=16) {
                auto av=detail::load_native<!T1>(x,m0+(lane&15),k,a.M,a.K);
                auto b0=detail::load_native<T2>(z,n0+(lane&15),k,a.N,a.K);
                c0=detail::native_mma<D>(av,b0,c0);
                if(n0+16<nEnd) {
                    auto b1=detail::load_native<T2>(z,n0+16+(lane&15),k,a.N,a.K);
                    c1=detail::native_mma<D>(av,b1,c1);
                }
            }
            #pragma unroll
            for(int i=0;i<8;++i) {
                if(n0+(lane&15)<nEnd)maximum[i]=fmaxf(maximum[i],c0[i]);
                if(n0+16+(lane&15)<nEnd)maximum[i]=fmaxf(maximum[i],c1[i]);
            }
        }
        #pragma unroll
        for(int i=0;i<8;++i) {
            #pragma unroll
            for(int d=8;d;d>>=1)maximum[i]=fmaxf(maximum[i],__shfl_down(maximum[i],d,16));
            const int m=m0+2*i+(lane>>4);
            if((lane&15)==0 && m<mEnd) {
                if constexpr(AlongN)a.partial[(batch*a.groups+task)*a.M+m]=maximum[i];
                else total+=maximum[i];
            }
        }
    }
    if constexpr(!AlongN) {
        const float sum=block_sum(total,sums);
        if(threadIdx.x==0)a.partial[batch*a.groups+task]=sum;
    }
    // Producer writes happen before its device-scoped release RMW. The
    // last RMW acquires the entire release sequence; no task spins or waits
    // for a block that has not yet been scheduled.
    __syncthreads();
    if(threadIdx.x==0) {
        const unsigned ticket=__hip_atomic_fetch_add(a.counters+batch,1u,
            __ATOMIC_ACQ_REL,__HIP_MEMORY_SCOPE_AGENT);
        last=ticket==static_cast<unsigned>(a.groups-1);
    }
    __syncthreads();
    if(!last)return;
    // Each finalizer thread performs an acquire reading the completed count.
    // Reset happens only after block_sum's barrier, so all threads acquire the
    // last producer's release before reading partials, even with cached data
    // from an earlier graph replay. Do not rely on thread 0's acquire alone.
    (void)__hip_atomic_load(a.counters+batch,__ATOMIC_ACQUIRE,__HIP_MEMORY_SCOPE_AGENT);
    float value=0.0f;
    if constexpr(AlongN) {
        for(int m=threadIdx.x;m<a.M;m+=blockDim.x) {
            float maximum=-INFINITY;
            for(int g=0;g<a.groups;++g)
                maximum=fmaxf(maximum,a.partial[(batch*a.groups+g)*a.M+m]);
            value+=maximum;
        }
    } else {
        for(int g=threadIdx.x;g<a.groups;g+=blockDim.x)
            value+=a.partial[batch*a.groups+g];
    }
    value=block_sum(value,sums);
    if(threadIdx.x==0) {
        a.y[batch]=value;
        __hip_atomic_store(a.counters+batch,0u,__ATOMIC_RELEASE,__HIP_MEMORY_SCOPE_AGENT);
    }
}

template<DataType D,bool T1,bool T2>
void enqueue(const Plan& p,const Arguments& a) {
    auto* raw=static_cast<unsigned char*>(a.workspace);
    KernelArgs k{static_cast<const unsigned short*>(a.x1),static_cast<const unsigned short*>(a.x2),a.y,
        reinterpret_cast<float*>(raw+p.workspace.partialOffset),reinterpret_cast<unsigned*>(raw+p.workspace.completionOffset),
        static_cast<int>(p.problem.B),static_cast<int>(p.problem.M),static_cast<int>(p.problem.N),static_cast<int>(p.problem.K),p.config.groupSize,static_cast<int>(p.groups)};
    if(p.config.axis==SplitAxis::N)
        hipLaunchKernelGGL((fused_split_mn<D,T1,T2,true>),p.grid,p.block,0,a.stream,k);
    else
        hipLaunchKernelGGL((fused_split_mn<D,T1,T2,false>),p.grid,p.block,0,a.stream,k);
}
template<DataType D>
void dispatch(const Plan& p,const Arguments& a) {
    if(p.problem.transposeX1) {
        if(p.problem.transposeX2)enqueue<D,true,true>(p,a);else enqueue<D,true,false>(p,a);
    } else {
        if(p.problem.transposeX2)enqueue<D,false,true>(p,a);else enqueue<D,false,false>(p,a);
    }
}
}

Status make_plan(const Problem& p,const Config& c,Plan* out) {
    if(!out || p.B<1 || p.B>64 || p.M<1 || p.M>8192 || p.N<1 || p.N>8192 ||
       p.K<32 || p.K>8192 || p.K%8 || p.B*p.M*p.K>(1LL<<26) || p.B*p.N*p.K>(1LL<<26) ||
       (p.dtype!=DataType::Float16 && p.dtype!=DataType::BFloat16))return Status::InvalidArgument;
    if(c.axis!=SplitAxis::M && c.axis!=SplitAxis::N)return Status::NotImplemented;
    if(c.waves<1 || c.waves>8 || (c.waves&(c.waves-1)))return Status::InvalidArgument;
    const int size=c.groupSize ? c.groupSize : (c.axis==SplitAxis::M ? 64 : 256);
    if(size<16 || size>8192 || size%16)return Status::InvalidArgument;
    Plan q;q.problem=p;q.config=c;q.config.groupSize=size;
    const auto extent=c.axis==SplitAxis::M ? p.M : p.N;
    q.groups=static_cast<unsigned>((extent+size-1)/size);
    const std::size_t elements=static_cast<std::size_t>(p.B)*q.groups*(c.axis==SplitAxis::N ? p.M : 1);
    q.workspace.alignment=256;q.workspace.partialOffset=0;
    q.workspace.completionOffset=(elements*sizeof(float)+255)&~std::size_t(255);
    q.workspace.bytes=(q.workspace.completionOffset+p.B*sizeof(unsigned)+255)&~std::size_t(255);
    q.grid=dim3(static_cast<unsigned>(p.B)*q.groups);q.block=dim3(32*c.waves);q.ready=true;
    *out=q;return Status::Success;
}

Status launch(const Plan& p,const Arguments& a) {
    if(!p.ready || !a.x1 || !a.x2 || !a.y || !a.workspace)return Status::InvalidArgument;
    Plan expected;const auto s=make_plan(p.problem,p.config,&expected);
    if(s!=Status::Success)return s;
    if(p.groups!=expected.groups || p.grid.x!=expected.grid.x || p.grid.y!=1 || p.grid.z!=1 ||
       p.block.x!=expected.block.x || p.block.y!=1 || p.block.z!=1 ||
       p.workspace.bytes!=expected.workspace.bytes || p.workspace.alignment!=expected.workspace.alignment ||
       p.workspace.partialOffset!=expected.workspace.partialOffset || p.workspace.completionOffset!=expected.workspace.completionOffset ||
       a.workspaceBytes<p.workspace.bytes || reinterpret_cast<std::uintptr_t>(a.workspace)%p.workspace.alignment)
        return Status::InvalidArgument;
    hipDeviceProp_t props{};int device;
    if(hipGetDevice(&device)!=hipSuccess || hipGetDeviceProperties(&props,device)!=hipSuccess)return Status::RuntimeError;
    if(std::strncmp(props.gcnArchName,"gfx1100",7)!=0 || props.warpSize!=32)return Status::NotImplemented;
    if(p.problem.dtype==DataType::Float16)dispatch<DataType::Float16>(p,a);else dispatch<DataType::BFloat16>(p,a);
    return hipGetLastError()==hipSuccess ? Status::Success : Status::RuntimeError;
}
} // namespace bmms::split_mn

namespace {
bmms::Status cplan(int B,int M,int N,int K,int bf16,int t1,int t2,int axis,int group,int waves,bmms::split_mn::Plan* p) {
    if(axis<0 || axis>1 || bf16<0 || bf16>1 || t1<0 || t1>1 || t2<0 || t2>1)return bmms::Status::InvalidArgument;
    return bmms::split_mn::make_plan({B,M,N,K,bf16 ? bmms::DataType::BFloat16 : bmms::DataType::Float16,t1!=0,t2!=0},
        {axis ? bmms::SplitAxis::N : bmms::SplitAxis::M,group,waves},p);
}
}
extern "C" int bmms_mn_plan(int B,int M,int N,int K,int bf16,int t1,int t2,int axis,int group,int waves,std::size_t* bytes,std::size_t* offset) {
    if(!bytes || !offset)return static_cast<int>(bmms::Status::InvalidArgument);
    bmms::split_mn::Plan p;auto s=cplan(B,M,N,K,bf16,t1,t2,axis,group,waves,&p);
    if(s==bmms::Status::Success){*bytes=p.workspace.bytes;*offset=p.workspace.completionOffset;}
    return static_cast<int>(s);
}
extern "C" int bmms_mn(const void* x,const void* z,float* y,void* workspace,std::size_t bytes,
    int B,int M,int N,int K,int bf16,int t1,int t2,int axis,int group,int waves,void* stream) {
    bmms::split_mn::Plan p;auto s=cplan(B,M,N,K,bf16,t1,t2,axis,group,waves,&p);
    if(s!=bmms::Status::Success)return static_cast<int>(s);
    bmms::Arguments a;a.x1=x;a.x2=z;a.y=y;a.workspace=workspace;a.workspaceBytes=bytes;a.stream=static_cast<hipStream_t>(stream);
    return static_cast<int>(bmms::split_mn::launch(p,a));
}
