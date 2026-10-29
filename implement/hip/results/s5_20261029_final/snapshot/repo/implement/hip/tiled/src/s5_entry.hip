#include "tiled.h"
namespace {
bool large(int B,int M,int N,int K,int allow) {
    return allow==1 && B>=1 && B<=64 && M>=1024 && N>=1024 && K>=32;
}
int config(int K) { return K>=4096 ? 14 : 13; }
}
extern "C" int bmms_s5_plan(int B,int M,int N,int K,int bf16,int t1,int t2,int allow,int* route,size_t* bytes,size_t* offset) {
    if(!route || !bytes || !offset || allow<0 || allow>1)return 1;
    if(large(B,M,N,K,allow)) {
        size_t size,off;const int code=bmms_tiled_plan(B,M,N,K,bf16,t1,t2,config(K),&size,&off);
        if(code)return code;
        *route=K>=4096 ? 6 : 7;*bytes=size;*offset=off;return 0;
    }
    return bmms_s4_plan(B,M,N,K,bf16,t1,t2,allow,route,bytes,offset);
}
extern "C" int bmms_s5(const void* x,const void* z,float* y,void* workspace,size_t bytes,int B,int M,int N,int K,int bf16,int t1,int t2,int allow,void* stream) {
    if(allow<0 || allow>1)return 1;
    if(large(B,M,N,K,allow))return bmms_tiled_fused(x,z,y,workspace,bytes,B,M,N,K,bf16,t1,t2,config(K),stream);
    return bmms_s4(x,z,y,workspace,bytes,B,M,N,K,bf16,t1,t2,allow,stream);
}
