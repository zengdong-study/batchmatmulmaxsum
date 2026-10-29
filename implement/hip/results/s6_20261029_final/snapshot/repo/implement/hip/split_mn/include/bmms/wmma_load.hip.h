#pragma once
#include "bmms/batch_matmul_max_sum.h"
#include <cmath>

namespace bmms::split_mn::detail {
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
        if constexpr(!ContiguousK) {
            if(k0+16<=K) {
                const int tile=token-(threadIdx.x&15);
                if((tokens&1)==0 && tile+16<=tokens)
                    return load_coalesced(base,tile,k0,tokens);
                return load_strided_full(base,token,k0,tokens);
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

} // namespace bmms::split_mn::detail
