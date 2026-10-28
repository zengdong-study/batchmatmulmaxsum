#pragma once
#include "kernels.hip.h"
#include <cmath>

namespace bmms::detail {
using Bits16=unsigned short __attribute__((ext_vector_type(16)));
using Words8=unsigned __attribute__((ext_vector_type(8)));
using Half16=_Float16 __attribute__((ext_vector_type(16)));
using Signed16=short __attribute__((ext_vector_type(16)));
using Float8=float __attribute__((ext_vector_type(8)));

// Keep each 16-bit load in an independent full VGPR. D16 low/high writes
// otherwise create a preserved-half dependency and serialize VMEM completion.
__device__ __forceinline__ Bits16 load_strided_full(const unsigned short* base,int token,int k0,int tokens) {
    unsigned words[16];
    #pragma unroll
    for(int i=0;i<16;++i) {
        const auto* ptr=base+(k0+i)*tokens+token;
        asm volatile("global_load_u16 %0, %1, off" : "=v"(words[i]) : "v"(ptr) : "memory");
    }
    // Tied operands prohibit arithmetic using loaded values before completion.
    asm volatile("s_waitcnt vmcnt(0)" : "+v"(words[0]), "+v"(words[1]), "+v"(words[2]), "+v"(words[3]), "+v"(words[4]), "+v"(words[5]), "+v"(words[6]), "+v"(words[7]), "+v"(words[8]), "+v"(words[9]), "+v"(words[10]), "+v"(words[11]), "+v"(words[12]), "+v"(words[13]), "+v"(words[14]), "+v"(words[15]) :: "memory");
    Words8 packed;
    #pragma unroll
    for(int i=0;i<8;++i) packed[i]=words[2*i]|(words[2*i+1]<<16);
    return __builtin_bit_cast(Bits16,packed);
}

// Cooperative 32-bit loads: 32 lanes load the full 16x16 tile in four
// transactions per lane, then gather K-pairs into duplicated WMMA operands.
// This replaces sixteen scalar half loads per lane and avoids D16 dependencies.
__device__ __forceinline__ Bits16 load_coalesced(const unsigned short* base,int tile,int k0,int tokens) {
    unsigned r[4];
    const int lane=threadIdx.x&31;
    #pragma unroll
    for(int i=0;i<4;++i) {
        const auto* p=reinterpret_cast<const unsigned*>(base+(k0+4*(lane>>3)+i)*tokens+tile+2*(lane&7));
        asm volatile("global_load_b32 %0, %1, off" : "=v"(r[i]) : "v"(p) : "memory");
    }
    asm volatile("s_waitcnt vmcnt(0)" : "+v"(r[0]),"+v"(r[1]),"+v"(r[2]),"+v"(r[3]) :: "memory");
    Words8 packed;
    const int pair=(lane&15)>>1,shift=(lane&1)*16;
    #pragma unroll
    for(int i=0;i<8;++i) {
        const int source=(i>>1)*8+pair;
        unsigned lo=__shfl(r[(2*i)&3],source,32);
        unsigned hi=__shfl(r[(2*i+1)&3],source,32);
        packed[i]=((lo>>shift)&65535)|(((hi>>shift)&65535)<<16);
    }
    return __builtin_bit_cast(Bits16,packed);
}

// Half-waves load alternating K values for the same 16 tokens. Eight
// full-VGPR half loads and eight cross-half-wave exchanges reconstruct the
// operand, including odd leading dimensions without unaligned dword loads.
__device__ __forceinline__ Bits16 load_coalesced_halves(const unsigned short* base,int tile,int k0,int tokens) {
    unsigned r[8]={};
    const int lane=threadIdx.x&31;
    if(tile+(lane&15)<tokens) {
    #pragma unroll
    for(int i=0;i<8;++i) {
        const auto* p=base+(k0+2*i+(lane>>4))*tokens+tile+(lane&15);
        asm volatile("global_load_u16 %0, %1, off" : "=v"(r[i]) : "v"(p) : "memory");
    }
    }
    asm volatile("s_waitcnt vmcnt(0)" : "+v"(r[0]),"+v"(r[1]),"+v"(r[2]),"+v"(r[3]),
                 "+v"(r[4]),"+v"(r[5]),"+v"(r[6]),"+v"(r[7]) :: "memory");
    Words8 packed;
    #pragma unroll
    for(int i=0;i<8;++i) {
        const unsigned other=__shfl_xor(r[i],16,32);
        const unsigned lo=lane<16 ? r[i] : other;
        const unsigned hi=lane<16 ? other : r[i];
        packed[i]=lo|(hi<<16);
    }
    return __builtin_bit_cast(Bits16,packed);
}

// gfx1100/wave32 register contract, verified by an independent coordinate probe:
// A: row=lane%16, B: column=lane%16, 16 K values replicated in both half-waves.
// C[i]: row=2*i+lane/16, column=lane%16. No LDS store/fragment transform required.
template<bool ContiguousK>
__device__ __forceinline__ Bits16 load_native(const unsigned short* base,int token,int k0,int tokens,int K) {
    // All lanes participate in operand exchange, including padded tokens.
    // Mask only the loads, then reconverge before cross-half-wave shuffles.
    if constexpr(!ContiguousK) {
        if(k0+16<=K) {
            const int tile=token-(threadIdx.x&15);
            return load_coalesced_halves(base,tile,k0,tokens);
        }
    }
    Bits16 v{};
    if(token<tokens) {
        if constexpr(ContiguousK) {
            if(k0+16<=K) {
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

// Pending operands keep VMEM results in full VGPRs until finish_operand.
// The next K tile is issued before the current tile's independent WMMA work.
struct PendingOperand { unsigned r[8]; };
template<bool ContiguousK>
__device__ __forceinline__ PendingOperand issue_operand(const unsigned short* base,int token,int k0,int tokens,int K) {
    PendingOperand result{};
    const int lane=threadIdx.x&31;
    if(token<tokens) {
        #pragma unroll
        for(int i=0;i<8;++i) {
            if constexpr(ContiguousK) {
                if(k0+2*i<K) {
                    const auto* p=reinterpret_cast<const unsigned*>(base+token*K+k0+2*i);
                    asm volatile("global_load_b32 %0, %1, off" : "=v"(result.r[i]) : "v"(p) : "memory");
                }
            } else {
                const int k=k0+2*i+(lane>>4);
                if(k<K) {
                    const auto* p=base+k*tokens+token;
                    asm volatile("global_load_u16 %0, %1, off" : "=v"(result.r[i]) : "v"(p) : "memory");
                }
            }
        }
    }
    return result;
}
template<bool ContiguousK>
__device__ __forceinline__ Bits16 finish_operand(PendingOperand value) {
    asm volatile("s_waitcnt vmcnt(0)" : "+v"(value.r[0]),"+v"(value.r[1]),"+v"(value.r[2]),"+v"(value.r[3]),
                 "+v"(value.r[4]),"+v"(value.r[5]),"+v"(value.r[6]),"+v"(value.r[7]) :: "memory");
    Words8 packed;
    #pragma unroll
    for(int i=0;i<8;++i) {
        if constexpr(ContiguousK) packed[i]=value.r[i];
        else {
            const unsigned other=__shfl_xor(value.r[i],16,32);
            const unsigned lo=(threadIdx.x&16)==0 ? value.r[i] : other;
            const unsigned hi=(threadIdx.x&16)==0 ? other : value.r[i];
            packed[i]=lo|(hi<<16);
        }
    }
    return __builtin_bit_cast(Bits16,packed);
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
                Bits16 a=finish_operand<!T1>(issue_operand<!T1>(x,m0+(lane&15),0,M,K));
                Bits16 bs[NTiles];
                #pragma unroll
                for(int j=0;j<NTiles;++j)
                    bs[j]=finish_operand<T2>(issue_operand<T2>(z,ng+j*16+(lane&15),0,N,K));
                for(int k0=0;k0<K;k0+=16) {
                    PendingOperand nextA{},nextB[NTiles]{};
                    if(k0+16<K) {
                        nextA=issue_operand<!T1>(x,m0+(lane&15),k0+16,M,K);
                        #pragma unroll
                        for(int j=0;j<NTiles;++j)
                            nextB[j]=issue_operand<T2>(z,ng+j*16+(lane&15),k0+16,N,K);
                    }
                    #pragma unroll
                    for(int j=0;j<NTiles;++j)
                        if(ng+j*16<N) acc[j]=native_mma<D>(a,bs[j],acc[j]);
                    if(k0+16<K) {
                        a=finish_operand<!T1>(nextA);
                        #pragma unroll
                        for(int j=0;j<NTiles;++j) bs[j]=finish_operand<T2>(nextB[j]);
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
