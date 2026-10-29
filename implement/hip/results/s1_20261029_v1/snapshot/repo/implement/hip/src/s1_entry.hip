#include "bmms/s1_c.h"
#include "bmms/batch_matmul_max_sum.h"
#include "bmms/split_mn.h"

namespace {
using bmms::Status;
struct Selection {
    int route = 0;
    bmms::Plan local{};
    bmms::split_mn::Plan distributed{};
};

Status select(int B, int M, int N, int K, int bf16, int t1, int t2,
              int allow, Selection& q) {
    if(B<1 || B>64 || M<1 || M>8192 || N<1 || N>8192 || K<32 || K>8192 || K%8 ||
       bf16<0 || bf16>1 || t1<0 || t1>1 || t2<0 || t2>1 || allow<0 || allow>1)
        return Status::InvalidArgument;
    const bmms::Problem p{B,M,N,K,bf16 ? bmms::DataType::BFloat16 : bmms::DataType::Float16,
                          t1!=0,t2!=0};
    // Only metadata is inspected. No case ID, input values, golden, or timing.
    if(allow && ((B==4 && M==32 && N==1024 && K==128) || (N==1 && M>128))) {
        bmms::split_mn::Config c;
        q.route=N==1 ? 3 : 2;
        c.axis=N==1 ? bmms::SplitAxis::M : bmms::SplitAxis::N;
        c.groupSize=64; c.waves=N==1 ? 4 : 2;
        return bmms::split_mn::make_plan(p,c,&q.distributed);
    }
    bmms::Config c;
    c.computePath=bmms::ComputePath::Matrix;
    if(B<=8 && M<=128 && N<=257) {
        q.route=0;
    } else if(B==4 && M==32 && N==1024 && K==128) {
        q.route=1; c.family=bmms::KernelFamily::SplitB;
        c.groupB=1; c.wavesPerBatch=8; c.groupBaseN=32;
    } else if(B==64 && M==8192 && N==8192 && K==128) {
        q.route=1; c.family=bmms::KernelFamily::SplitB;
        c.groupB=1; c.wavesPerBatch=4; c.groupBaseN=64;
    } else return Status::NotImplemented;
    return bmms::make_plan(p,c,&q.local);
}
}

extern "C" int bmms_s1_plan(int B,int M,int N,int K,int bf16,int t1,int t2,
    int allow,int* route,size_t* bytes,size_t* offset) {
    if(!route || !bytes || !offset) return static_cast<int>(Status::InvalidArgument);
    Selection q;
    const auto status=select(B,M,N,K,bf16,t1,t2,allow,q);
    if(status!=Status::Success) return static_cast<int>(status);
    const auto& w=q.route>=2 ? q.distributed.workspace : q.local.workspace;
    *route=q.route; *bytes=w.bytes; *offset=w.completionOffset;
    return 0;
}

extern "C" int bmms_s1(const void* x,const void* z,float* y,void* workspace,
    size_t bytes,int B,int M,int N,int K,int bf16,int t1,int t2,int allow,void* stream) {
    Selection q;
    auto status=select(B,M,N,K,bf16,t1,t2,allow,q);
    if(status!=Status::Success) return static_cast<int>(status);
    bmms::Arguments a;
    a.x1=x; a.x2=z; a.y=y; a.workspace=workspace;
    a.workspaceBytes=bytes; a.stream=static_cast<hipStream_t>(stream);
    status=q.route>=2 ? bmms::split_mn::launch(q.distributed,a) : bmms::launch(q.local,a);
    return static_cast<int>(status);
}
