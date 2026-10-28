#include "bmms/split_b_impl.hip.h"
#include "bmms/split_b_c.h"
#include "bmms/small_c.h"
#include <cstring>

namespace bmms {
Status make_plan(const Problem& p,const Config& r,Plan* plan) {
    if(!plan || p.B<1 || p.B>64 || p.M<1 || p.M>8192 || p.N<1 || p.N>8192 ||
       p.K<32 || p.K>8192 || p.K%8 || p.B*p.M*p.K>(1LL<<26) ||
       p.B*p.N*p.K>(1LL<<26) ||
       (p.dtype!=DataType::Float16 && p.dtype!=DataType::BFloat16))
        return Status::InvalidArgument;
    if(r.computePath!=ComputePath::Matrix && r.computePath!=ComputePath::Simd)
        return Status::NotImplemented;
    if(r.family==KernelFamily::SplitB) {
        if(r.computePath!=ComputePath::Matrix) return Status::NotImplemented;
        const int gb=r.groupB==0 ? 1 : r.groupB;
        const int wpb=r.wavesPerBatch==0 ? 1 : r.wavesPerBatch;
        const int gn=r.groupBaseN==0 ? 32 : r.groupBaseN;
        if(gb<1 || gb>8 || wpb<1 || wpb>8 || (gb&(gb-1)) ||
           (wpb&(wpb-1)) || gb*wpb>8) return Status::InvalidArgument;
        const int wm=detail::waves_m(static_cast<int>(p.M),static_cast<int>(p.N),wpb,gn/16);
        if((gn!=16 && gn!=32 && gn!=64) ||
           (r.splitAxis!=SplitAxis::Auto && r.splitAxis!=SplitAxis::B) ||
           (r.finalizeMode!=FinalizeMode::Auto && r.finalizeMode!=FinalizeMode::WithinTask) ||
           (r.baseM!=0 && r.baseM!=16) || (r.baseN!=0 && r.baseN!=16) ||
           (r.baseK!=0 && r.baseK!=16) ||
           (r.groupBaseM!=0 && r.groupBaseM!=16*wm)) return Status::NotImplemented;
        Plan q;
        q.problem=p; q.config=r;
        q.config.splitAxis=SplitAxis::B;
        q.config.finalizeMode=FinalizeMode::WithinTask;
        q.config.baseM=q.config.baseN=q.config.baseK=16;
        q.config.groupB=gb; q.config.wavesPerBatch=wpb;
        q.config.groupBaseM=16*wm; q.config.groupBaseN=gn;
        q.taskCount=(p.B+gb-1)/gb;
        q.grid=dim3(static_cast<unsigned>(q.taskCount)); q.block=dim3(32*gb*wpb);
        q.dynamicSharedBytes=static_cast<std::size_t>(gb*wpb)*(32*sizeof(float)+sizeof(float));
        q.ready=true; *plan=q;
        return Status::Success;
    }
    if(r.family!=KernelFamily::Small) return Status::InvalidArgument;
    const int lk=r.lanesK==0 ? 8 : r.lanesK;
    if(lk<1 || lk>32 || (lk&(lk-1))) return Status::InvalidArgument;
    const bool matrix=r.computePath==ComputePath::Matrix;
    int sw=r.wavesPerBatch;
    if(sw==0) {
        sw=1;
        if(matrix) {
            const int tiles=static_cast<int>((p.M+15)/16)*static_cast<int>((p.N+31)/32);
            while(sw<8 && sw<tiles) sw<<=1;
        }
    }
    if(sw<1 || sw>8 || (sw&(sw-1))) return Status::InvalidArgument;
    if(!matrix && sw!=1) return Status::NotImplemented;
    const int bm=matrix ? 16 : 1;
    const int bn=matrix ? 16 : 32/lk;
    const int bk=matrix ? 16 : lk;
    const int gm=static_cast<int>((p.M+bm-1)/bm*bm);
    const int gn=static_cast<int>((p.N+bn-1)/bn*bn);
    if((r.splitAxis!=SplitAxis::Auto && r.splitAxis!=SplitAxis::B) ||
       (r.finalizeMode!=FinalizeMode::Auto && r.finalizeMode!=FinalizeMode::WithinTask) ||
       (r.groupB!=0 && r.groupB!=1) ||
       (r.groupBaseM!=0 && r.groupBaseM!=gm) ||
       (r.groupBaseN!=0 && r.groupBaseN!=gn) ||
       (r.baseM!=0 && r.baseM!=bm) || (r.baseN!=0 && r.baseN!=bn) ||
       (r.baseK!=0 && r.baseK!=bk)) return Status::NotImplemented;
    Plan q;
    q.problem=p; q.config=r;
    q.config.splitAxis=SplitAxis::B;
    q.config.finalizeMode=FinalizeMode::WithinTask;
    q.config.baseM=bm; q.config.baseN=bn; q.config.baseK=bk;
    q.config.groupBaseM=gm; q.config.groupBaseN=gn;
    q.config.groupB=1; q.config.lanesK=lk; q.config.wavesPerBatch=sw;
    q.taskCount=p.B; q.grid=dim3(static_cast<unsigned>(p.B)); q.block=dim3(32*sw);
    q.dynamicSharedBytes=sw>1 ? static_cast<std::size_t>(sw)*132 : 0;
    q.ready=true;
    *plan=q;
    return Status::Success;
}

namespace {
template<DataType D,bool T1,bool T2>
void enqueue(const Plan& p,const Arguments& a) {
    detail::KernelArguments k{a.x1,a.x2,a.y,a.workspace,p.problem,p.config,p.workspace};
    if(p.config.family==KernelFamily::SplitB) {
        if(p.config.groupBaseN==16)
            hipLaunchKernelGGL((detail::fused_split_b<D,T1,T2,1>),p.grid,p.block,p.dynamicSharedBytes,a.stream,k);
        else if(p.config.groupBaseN==32)
            hipLaunchKernelGGL((detail::fused_split_b<D,T1,T2,2>),p.grid,p.block,p.dynamicSharedBytes,a.stream,k);
        else
            hipLaunchKernelGGL((detail::fused_split_b<D,T1,T2,4>),p.grid,p.block,p.dynamicSharedBytes,a.stream,k);
    } else if(p.config.computePath==ComputePath::Matrix) {
        if(p.config.wavesPerBatch==1)
            hipLaunchKernelGGL((detail::fused_small<D,T1,T2,ComputePath::Matrix,1>),p.grid,p.block,0,a.stream,k);
        else
            hipLaunchKernelGGL((detail::fused_small<D,T1,T2,ComputePath::Matrix,8>),p.grid,p.block,p.dynamicSharedBytes,a.stream,k);
    } else {
        #define BMMS_SIMD(LK) case LK: hipLaunchKernelGGL((detail::fused_small<D,T1,T2,ComputePath::Simd,LK>),p.grid,p.block,0,a.stream,k); break
        switch(p.config.lanesK) {
            BMMS_SIMD(1); BMMS_SIMD(2); BMMS_SIMD(4);
            BMMS_SIMD(8); BMMS_SIMD(16); BMMS_SIMD(32);
        }
        #undef BMMS_SIMD
    }
}
template<DataType D>
void dispatch(const Plan& p,const Arguments& a) {
    if(p.problem.transposeX1) {
        if(p.problem.transposeX2) enqueue<D,true,true>(p,a);
        else enqueue<D,true,false>(p,a);
    } else {
        if(p.problem.transposeX2) enqueue<D,false,true>(p,a);
        else enqueue<D,false,false>(p,a);
    }
}
}
Status launch(const Plan& p,const Arguments& a) {
    if(!p.ready || !a.x1 || !a.x2 || !a.y) return Status::InvalidArgument;
    Plan expected;
    auto status=make_plan(p.problem,p.config,&expected);
    if(status!=Status::Success) return status;
    if(p.grid.x!=expected.grid.x || p.grid.y!=1 || p.grid.z!=1 ||
       p.block.x!=expected.block.x || p.block.y!=1 || p.block.z!=1 || p.workspace.bytes!=0 ||
       p.dynamicSharedBytes!=expected.dynamicSharedBytes) return Status::InvalidArgument;
    int device=0;
    hipDeviceProp_t props{};
    if(hipGetDevice(&device)!=hipSuccess || hipGetDeviceProperties(&props,device)!=hipSuccess)
        return Status::RuntimeError;
    if(std::strncmp(props.gcnArchName,"gfx1100",7)!=0 || props.warpSize!=32)
        return Status::NotImplemented;
    if(p.problem.dtype==DataType::Float16) dispatch<DataType::Float16>(p,a);
    else dispatch<DataType::BFloat16>(p,a);
    return hipGetLastError()==hipSuccess ? Status::Success : Status::RuntimeError;
}
} // namespace bmms

// Minimal C ABI for ctypes-based experiments, avoiding a PyTorch C++ dependency.
extern "C" int bmms_small(const void* x1,const void* x2,float* y,
    int B,int M,int N,int K,int bf16,int t1,int t2,int matrix,int lanesK,void* stream) {
    bmms::Problem p{B,M,N,K,bf16 ? bmms::DataType::BFloat16 : bmms::DataType::Float16,
                    t1!=0,t2!=0};
    bmms::Config c;
    c.computePath=matrix ? bmms::ComputePath::Matrix : bmms::ComputePath::Simd;
    c.lanesK=lanesK;
    bmms::Plan plan;
    auto status=bmms::make_plan(p,c,&plan);
    if(status!=bmms::Status::Success) return static_cast<int>(status);
    bmms::Arguments a;
    a.x1=x1; a.x2=x2; a.y=y; a.stream=static_cast<hipStream_t>(stream);
    return static_cast<int>(bmms::launch(plan,a));
}

extern "C" int bmms_split_b(const void* x1,const void* x2,float* y,
    int B,int M,int N,int K,int bf16,int t1,int t2,
    int groupB,int wavesPerBatch,int groupBaseN,void* stream) {
    bmms::Problem p{B,M,N,K,bf16 ? bmms::DataType::BFloat16 : bmms::DataType::Float16,
                   t1!=0,t2!=0};
    bmms::Config c;
    c.family=bmms::KernelFamily::SplitB;
    c.computePath=bmms::ComputePath::Matrix;
    c.groupB=groupB; c.wavesPerBatch=wavesPerBatch; c.groupBaseN=groupBaseN;
    bmms::Plan plan;
    auto status=bmms::make_plan(p,c,&plan);
    if(status!=bmms::Status::Success) return static_cast<int>(status);
    bmms::Arguments a;
    a.x1=x1; a.x2=x2; a.y=y; a.stream=static_cast<hipStream_t>(stream);
    return static_cast<int>(bmms::launch(plan,a));
}
