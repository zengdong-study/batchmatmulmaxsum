#include "bmms/native_wmma.hip.h"
using namespace bmms;
__global__ void probe(const unsigned short* x,const unsigned short* z,float* y) {
    int k0=(blockIdx.x/16)*16,term=blockIdx.x%16,lane=threadIdx.x&31;
    auto a=detail::load_native<true>(x,lane&15,k0,8192,128);
    auto b=detail::load_native<false>(z,lane&15,k0,8192,128);
    #pragma unroll
    for(int k=0;k<16;++k)if(k!=term)a[k]=0;
    detail::Float8 zero{};
    auto c=detail::native_mma<DataType::BFloat16>(a,b,zero);
    #pragma unroll
    for(int i=0;i<8;++i)y[(k0+term)*256+(2*i+(lane>>4))*16+(lane&15)]=c[i];
}
extern "C" int product_probe(const void* x,const void* z,float* y,void* stream) {
 hipLaunchKernelGGL(probe,dim3(128),dim3(32),0,static_cast<hipStream_t>(stream),static_cast<const unsigned short*>(x),static_cast<const unsigned short*>(z),y);
 return hipGetLastError()==hipSuccess ? 0 : 1;
}
