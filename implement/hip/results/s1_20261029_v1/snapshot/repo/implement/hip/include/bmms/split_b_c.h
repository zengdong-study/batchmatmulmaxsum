#pragma once
#ifdef __cplusplus
extern "C" {
#endif
// Pointers are device pointers on current HIP device. Exactly one kernel/call.
// groupB and wavesPerBatch are powers of 2, product <= 8; groupBaseN=16/32/64.
// Return values follow bmms::Status. Zero config values resolve to 1/1/32.
int bmms_split_b(const void* x1, const void* x2, float* y,
    int B, int M, int N, int K, int bf16, int t1, int t2,
    int groupB, int wavesPerBatch, int groupBaseN, void* stream);
#ifdef __cplusplus
}
#endif
