#pragma once
// Minimal experiment ABI. Pointers and stream refer to the current HIP device.
// Returns bmms::Status as int: 0 success, 1 invalid, 2 unimplemented, 3 runtime error.
// matrix: 0 SIMD, 1 rocWMMA. lanesK: 0(default 8) or 1/2/4/8/16/32.
#ifdef __cplusplus
extern "C" {
#endif
int bmms_small(const void* x1, const void* x2, float* y,
    int B, int M, int N, int K, int bf16, int t1, int t2,
    int matrix, int lanesK, void* stream);
#ifdef __cplusplus
}
#endif
