#pragma once
#include "kernels.hip.h"
#include <cmath>

namespace bmms::detail {
using Bits16=unsigned short __attribute__((ext_vector_type(16)));
using Half16=_Float16 __attribute__((ext_vector_type(16)));
using Signed16=short __attribute__((ext_vector_type(16)));
using Float8=float __attribute__((ext_vector_type(8)));

// gfx1100/wave32 register contract, verified by an independent coordinate probe:
// A: row=lane%16, B: column=lane%16, 16 K values replicated in both half-waves.
// C[i]: row=2*i+lane/16, column=lane%16. No LDS store/fragment transform required.
template<bool ContiguousK>
__device__ __forceinline__ Bits16 load_native(const unsigned short* base,int token,int k0,int tokens,int K) {
    Bits16 v{};
    if(token<tokens) {
        if constexpr(ContiguousK) {
            if(k0+16<=K) {
                // memcpy supports valid but non-32-byte-aligned row starts.
                __builtin_memcpy(&v,base+token*K+k0,32);
                return v;
            }
        }
        #pragma unroll
        for(int i=0;i<16;++i) {
            const int k=k0+i;
            if(k<K) v[i]=base[ContiguousK ? token*K+k : k*tokens+token];
        }
    }
    return v;
}

template<DataType D>
__device__ __forceinline__ Float8 native_mma(Bits16 a,Bits16 b,Float8 c) {
    if constexpr(D==DataType::Float16)
        return __builtin_amdgcn_wmma_f32_16x16x16_f16_w32(
            __builtin_bit_cast(Half16,a),__builtin_bit_cast(Half16,b),c);
    else
        return __builtin_amdgcn_wmma_f32_16x16x16_bf16_w32(
            __builtin_bit_cast(Signed16,a),__builtin_bit_cast(Signed16,b),c);
}

template<DataType D,bool T1,bool T2,int NTiles,bool SingleWave>
__device__ __forceinline__ void native_batch(KernelArguments args,float* shared) {
    const int M=static_cast<int>(args.problem.M),N=static_cast<int>(args.problem.N),K=static_cast<int>(args.problem.K);
    const int lane=threadIdx.x&31,wave=threadIdx.x>>5;
    const int wpb=SingleWave ? 1 : args.config.wavesPerBatch;
    const int gb=SingleWave ? 1 : args.config.groupB;
    const int wShift=__builtin_ctz(static_cast<unsigned>(wpb));
    const int wi=wave&(wpb-1), batch=blockIdx.x*gb+(wave>>wShift);
    int wm=wpb;
    while(wm>1 && wm>(M+15)/16) wm>>=1;
    const int mShift=__builtin_ctz(static_cast<unsigned>(wm));
    const int wn=wpb>>mShift,mi=wi&(wm-1),ni=wi>>mShift;
    float total=0.0f;
    if(batch<args.problem.B) {
        const auto* x=static_cast<const unsigned short*>(args.x1)+batch*(M*K);
        const auto* z=static_cast<const unsigned short*>(args.x2)+batch*(N*K);
        for(int m0=mi*16;m0<M;m0+=wm*16) {
            Float8 maximum;
            #pragma unroll
            for(int i=0;i<8;++i) maximum[i]=-INFINITY;
            for(int ng=ni*NTiles*16;ng<N;ng+=wn*NTiles*16) {
                Float8 acc[NTiles];
                #pragma unroll
                for(int j=0;j<NTiles;++j) acc[j]=Float8{};
                // Two K steps: next A/B are loaded before dependent MMA work.
                // Multiple accumulators remain independent across adjacent N tiles.
                for(int k0=0;k0<K;k0+=32) {
                    Bits16 a0=load_native<!T1>(x,m0+(lane&15),k0,M,K);
                    Bits16 a1=load_native<!T1>(x,m0+(lane&15),k0+16,M,K);
                    #pragma unroll
                    for(int j=0;j<NTiles;++j) {
                        const int n=ng+j*16+(lane&15);
                        if(ng+j*16<N) {
                            Bits16 b0=load_native<T2>(z,n,k0,N,K);
                            Bits16 b1=load_native<T2>(z,n,k0+16,N,K);
                            acc[j]=native_mma<D>(a0,b0,acc[j]);
                            if(k0+16<K) acc[j]=native_mma<D>(a1,b1,acc[j]);
                        }
                    }
                }
                #pragma unroll
                for(int j=0;j<NTiles;++j) {
                    if(ng+j*16+(lane&15)<N) {
                        #pragma unroll
                        for(int i=0;i<8;++i) maximum[i]=fmaxf(maximum[i],acc[j][i]);
                    }
                }
            }
            #pragma unroll
            for(int i=0;i<8;++i) {
                #pragma unroll
                for(int offset=8;offset>0;offset>>=1)
                    maximum[i]=fmaxf(maximum[i],__shfl_down(maximum[i],offset,16));
            }
            if(wn==1) {
                float halfSum=0.0f;
                #pragma unroll
                for(int i=0;i<8;++i)
                    if(m0+2*i+(lane>>4)<M) halfSum+=maximum[i];
                halfSum+=__shfl_xor(halfSum,16,32);
                if(lane==0) total+=halfSum;
            } else if((lane&15)==0) {
                // N splitting occurs only when M has fewer tiles than wpb.
                // wm=floor_pow2(tileM), hence each wave owns at most two M tiles.
                const int slot=(m0>>4)>>mShift;
                #pragma unroll
                for(int i=0;i<8;++i)
                    shared[wave*32+slot*16+2*i+(lane>>4)]=maximum[i];
            }
        }
    }
    if constexpr(SingleWave) {
        if(lane==0) args.y[batch]=total;
    } else {
        float* sums=shared+blockDim.x; // 32 floats/wave reserved for row maxima.
        if(lane==0) sums[wave]=total;
        __syncthreads();
        if(batch<args.problem.B && wi==0) {
            if(wn==1) {
                if(lane==0) {
                    float sum=0.0f;
                    for(int w=0;w<wpb;++w) sum+=sums[wave+w];
                    args.y[batch]=sum;
                }
            } else {
                float sum=0.0f;
                for(int m=lane;m<M;m+=32) {
                    float value=-INFINITY;
                    const int source=wave+((m>>4)&(wm-1));
                    const int slot=(m>>4)>>mShift;
                    for(int w=0;w<wn;++w)
                        value=fmaxf(value,shared[(source+w*wm)*32+slot*16+(m&15)]);
                    sum+=value;
                }
                for(int offset=16;offset>0;offset>>=1) sum+=__shfl_down(sum,offset,32);
                if(lane==0) args.y[batch]=sum;
            }
        }
    }
}
} // namespace bmms::detail
