#pragma once
#include <stddef.h>
#ifdef __cplusplus
extern "C" {
#endif
// Explicit diagnostic candidates, not an Auto/final fused entry.
// config: 0=16x32/K64, 1=16x64/K64, 2=32x64/K64, 3=16x64/K32.
// Output is full FP32 C[B,M,N]. No workspace or initial state, one kernel.
int bmms_tiled_gemm(const void* x, const void* z, float* c,
    int B,int M,int N,int K,int bf16,int t1,int t2,int config,void* stream);
#ifdef __cplusplus
}
#endif
