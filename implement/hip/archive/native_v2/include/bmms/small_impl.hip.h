#pragma once
#include "native_wmma.hip.h"

namespace bmms::detail {
template<DataType D>
__device__ __forceinline__ float bits_float(unsigned short bits) {
    if constexpr(D==DataType::Float16) return static_cast<float>(__builtin_bit_cast(_Float16,bits));
    else return __uint_as_float(static_cast<unsigned>(bits)<<16);
}

template<DataType D,bool T1,bool T2,int LK>
__device__ __forceinline__ void simd_small(KernelArguments args) {
    const int lane=threadIdx.x,kl=lane&(LK-1),group=lane/LK;
    constexpr int groups=32/LK;
    const int M=args.problem.M,N=args.problem.N,K=args.problem.K,batch=blockIdx.x;
    const auto* x=static_cast<const unsigned short*>(args.x1)+batch*(M*K);
    const auto* z=static_cast<const unsigned short*>(args.x2)+batch*(N*K);
    float total=0.0f;
    const int rounds=N==1 ? (M+groups-1)/groups : M;
    for(int r=0;r<rounds;++r) {
        const int m=N==1 ? r*groups+group : r;
        float maximum=-INFINITY;
        const int nRounds=N==1 ? 1 : (N+groups-1)/groups;
        for(int nr=0;nr<nRounds;++nr) {
            const int n=N==1 ? 0 : nr*groups+group;
            float d0=0,d1=0,d2=0,d3=0;
            if(m<M && n<N) {
                for(int k0=kl;k0<K;k0+=4*LK) {
                    #pragma unroll
                    for(int j=0;j<4;++j) {
                        const int k=k0+j*LK;
                        if(k<K) {
                            float a=bits_float<D>(x[T1 ? k*M+m : m*K+k]);
                            float b=bits_float<D>(z[T2 ? n*K+k : k*N+n]);
                            if constexpr(true) {
                                if(j==0)d0=fmaf(a,b,d0);
                                else if(j==1)d1=fmaf(a,b,d1);
                                else if(j==2)d2=fmaf(a,b,d2);
                                else d3=fmaf(a,b,d3);
                            }
                        }
                    }
                }
            }
            float dot=(d0+d1)+(d2+d3);
            #pragma unroll
            for(int off=LK/2;off>0;off>>=1) dot+=__shfl_down(dot,off,LK);
            if(kl==0 && m<M && n<N) maximum=fmaxf(maximum,dot);
        }
        if(N==1) {
            if(kl==0 && m<M) total+=maximum;
        } else {
            for(int off=16;off>0;off>>=1) maximum=fmaxf(maximum,__shfl_down(maximum,off,32));
            if(lane==0) total+=maximum;
        }
    }
    if(N==1) for(int off=16;off>0;off>>=1) total+=__shfl_down(total,off,32);
    if(lane==0) args.y[batch]=total;
}

template<DataType Dtype,bool TransposeX1,bool TransposeX2,ComputePath Path,int LanesK>
__global__ __launch_bounds__(32) void fused_small(KernelArguments args) {
    if constexpr(Path==ComputePath::Matrix)
        native_batch<Dtype,TransposeX1,TransposeX2,2,true>(args,nullptr);
    else
        simd_small<Dtype,TransposeX1,TransposeX2,LanesK>(args);
}
} // namespace bmms::detail
