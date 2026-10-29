#pragma once

#include "batch_matmul_max_sum.h"

namespace bmms::detail {

// Minimize the maximum tile groups assigned to a wave. N splitting stores
// at most two M tiles per wave in the existing 32-float row scratch.
__host__ __device__ inline int waves_m(int M,int N,int waves,int ntiles) {
    const int mt=(M+15)/16,ng=(N+16*ntiles-1)/(16*ntiles);
    int original=waves;
    while(original>1 && original>mt) original>>=1;
    // Regular M tile counts already divide the wave group exactly.
    if(mt>=waves || (mt&(mt-1))==0) return original;
    int best=waves,bestWork=0x7fffffff;
    const int shift=__builtin_ctz(static_cast<unsigned>(waves));
    for(int ms=shift;ms>=0;--ms) {
        const int wm=1<<ms,ns=shift-ms,wn=1<<ns;
        const int rows=(mt+wm-1)>>ms;
        if(wn>1 && rows>2) continue;
        const int work=rows*((ng+wn-1)>>ns);
        if(work<bestWork) { best=wm;bestWork=work; }
    }
    return best;
}

struct KernelArguments {
    const void* x1;
    const void* x2;
    float* y;
    void* workspace;
    Problem problem;
    Config config;
    WorkspaceLayout workspaceLayout;
};

// Small and SplitB are implemented; split M/N remain declarations.
// Each template path will specialize both storage layouts and input dtype.

// Own complete batch(es): local tiled dot -> Max(N) -> Sum(M) -> y.
template <DataType Dtype, bool TransposeX1, bool TransposeX2, int NTiles = 1>
__global__ void fused_split_b(KernelArguments args);

// Own groupBaseM rows: local full-N Max -> partial Sum -> same-kernel finalize.
template <DataType Dtype, bool TransposeX1, bool TransposeX2>
__global__ void fused_split_m(KernelArguments args);

// Own groupBaseN columns: partial Max per row -> same-kernel Max then Sum.
template <DataType Dtype, bool TransposeX1, bool TransposeX2>
__global__ void fused_split_n(KernelArguments args);

// Small B/M/N: compare SIMD versus matrix path, consider intra-task K splitting.
// No cross-block split-K path is committed in this skeleton.
template <DataType Dtype, bool TransposeX1, bool TransposeX2, ComputePath Path, int LanesK = 8>
__global__ void fused_small(KernelArguments args);

// Remaining split M/N implementation stages:
// 1. Map tasks/groups to block/wave and derive valid M/N ranges.
// 2. Load four storage layouts with coalescing and M/N/K boundary handling.
// 3. Matrix/SIMD full-K accumulation in FP32 or equivalent precision.
// 4. Max only after full dot; invalid N lanes and initial Max use -infinity.
// 5. Group-local Max/Sum and partial-result publication.
// 6. If split M/N: last-task election with release/acquire visibility, then
//    fixed-order final reduction. Initialization and reuse protocol unresolved.
// Never introduce a global spinning block barrier or a second kernel.

} // namespace bmms::detail
