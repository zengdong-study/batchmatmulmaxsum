#include "tiled.h"
#include "bmms/s1_c.h"
namespace {
bool use_tiled(int B,int M,int N,int K,int allow) {
    return allow==1 && B>=1 && B<=8 && M>=1 && M<=128 && N>1 && N<=257 && K>=4096;
}
}
extern "C" int bmms_s3_plan(int B,int M,int N,int K,int bf16,int t1,int t2,int allow,int* route,size_t* bytes,size_t* offset) {
    if(!route || !bytes || !offset || allow<0 || allow>1)return 1;
    if(use_tiled(B,M,N,K,allow)) {
        size_t size,off;const int code=bmms_tiled_plan(B,M,N,K,bf16,t1,t2,4,&size,&off);
        if(code)return code;
        *route=4;*bytes=size;*offset=off;return 0;
    }
    return bmms_s1_plan(B,M,N,K,bf16,t1,t2,allow,route,bytes,offset);
}
extern "C" int bmms_s3(const void* x,const void* z,float* y,void* workspace,size_t bytes,
    int B,int M,int N,int K,int bf16,int t1,int t2,int allow,void* stream) {
    if(allow<0 || allow>1)return 1;
    if(use_tiled(B,M,N,K,allow))return bmms_tiled_fused(x,z,y,workspace,bytes,B,M,N,K,bf16,t1,t2,4,stream);
    return bmms_s1(x,z,y,workspace,bytes,B,M,N,K,bf16,t1,t2,allow,stream);
}
