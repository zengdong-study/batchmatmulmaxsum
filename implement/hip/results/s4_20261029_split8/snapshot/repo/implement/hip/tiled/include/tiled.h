#pragma once
#include <stddef.h>
#ifdef __cplusplus
extern "C" {
#endif
// Explicit diagnostic candidates, not an Auto/final fused entry.
// config: 0=16x32/K64, 1=16x64/K64, 2=32x64/K64, 3=16x64/K32.
// config 4=16x32, 4 within-CTA contiguous K partitions, register loads.
// Output is full FP32 C[B,M,N]. No workspace or initial state, one kernel.
int bmms_tiled_gemm(const void* x, const void* z, float* c,
    int B,int M,int N,int K,int bf16,int t1,int t2,int config,void* stream);
#ifdef __cplusplus
}
#endif

#ifdef __cplusplus
extern "C" {
#endif
// Fused configs: 4=4 K partitions, 5=8 K partitions (same 16x32 output).
// Conditional fused candidate: FIRST use requires B zero uint32 counters at
// counterOffset, ordered on stream. 256-byte aligned workspace; isolated per
// concurrent invocation. Serial/replay resets inside kernel; failure/layout
// changes require reinitialization. No copy/allocation/sync inside launch.
int bmms_tiled_plan(int B,int M,int N,int K,int bf16,int t1,int t2,int config,
    size_t* bytes,size_t* counterOffset);
int bmms_tiled_fused(const void* x,const void* z,float* y,void* workspace,size_t bytes,
    int B,int M,int N,int K,int bf16,int t1,int t2,int config,void* stream);
// S3 fixed host policy: long K + explicit initialization opt-in uses route 4;
// other inputs retain the S1 host policy/ABI. plan outputs unchanged on failure.
int bmms_s3_plan(int B,int M,int N,int K,int bf16,int t1,int t2,int allow,
    int* route,size_t* bytes,size_t* offset);
int bmms_s3(const void* x,const void* z,float* y,void* workspace,size_t bytes,
    int B,int M,int N,int K,int bf16,int t1,int t2,int allow,void* stream);
#ifdef __cplusplus
}
#endif
