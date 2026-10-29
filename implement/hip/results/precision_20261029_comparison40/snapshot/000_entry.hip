#include "tiled.h"
#include "accurate.h"
extern "C" {
int bmms_precision_plan(int,int,int,int,int,int,int,int,size_t*,size_t*);
int bmms_precision_fused(const void*,const void*,float*,void*,size_t,int,int,int,int,int,int,int,int,void*);
int bmms_refine_plan(int,int,int,int,int,int,int,int,size_t*,size_t*);
int bmms_refine_fused(const void*,const void*,float*,void*,size_t,int,int,int,int,int,int,int,int,void*);
}
namespace {
int choose(int B,int M,int N,int K,int allow) {
 if(allow!=1)return 0;
 if(B>=1 && B<=64 && M>=1024 && N>=1024 && K>=32 && K<=256)return 8;
 if(K>=4096 && ((B>=1 && B<=8 && M>=1 && M<=128 && N>1 && N<=257) || (B>=1 && B<=64 && M>=1024 && N>=1024)))return 9;
 return 0;
}
int config(int M,int N,int t2) {return M>=1024 && N>=1024 ? 14 : t2 ? 5 : 6;}
}
extern "C" int bmms_accurate_plan(int B,int M,int N,int K,int bf,int t1,int t2,int allow,int* route,size_t* bytes,size_t* off) {
 if(!route || !bytes || !off || allow<0 || allow>1)return 1;
 const int r=choose(B,M,N,K,allow);
 if(!r)return bmms_s5_plan(B,M,N,K,bf,t1,t2,allow,route,bytes,off);
 size_t size,offset;const int status=r==8 ? bmms_refine_plan(B,M,N,K,bf,t1,t2,13,&size,&offset) : bmms_precision_plan(B,M,N,K,bf,t1,t2,config(M,N,t2),&size,&offset);
 if(status)return status;
 *route=r;*bytes=size;*off=offset;return 0;
}
extern "C" int bmms_accurate(const void* x,const void* z,float* y,void* w,size_t bytes,int B,int M,int N,int K,int bf,int t1,int t2,int allow,void* stream) {
 if(allow<0 || allow>1)return 1;
 const int r=choose(B,M,N,K,allow);
 if(r==8)return bmms_refine_fused(x,z,y,w,bytes,B,M,N,K,bf,t1,t2,13,stream);
 if(r==9)return bmms_precision_fused(x,z,y,w,bytes,B,M,N,K,bf,t1,t2,config(M,N,t2),stream);
 return bmms_s5(x,z,y,w,bytes,B,M,N,K,bf,t1,t2,allow,stream);
}
