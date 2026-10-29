#pragma once
#include <stddef.h>
#ifdef __cplusplus
extern "C" {
#endif
// Fixed host metadata policy. 0 success; 1 invalid; 2 unsupported; 3 runtime error.
// Failed planning preserves outputs. route8: certified FMA/FP64 refinement;
// route9: compensated long-K; other routes delegate to frozen S6.
// allowInitializedWorkspace explicitly permits FIRST-use zeroing of B uint32
// counters at counterOffset. workspace must be 256-byte aligned. Replan and
// reinitialize on layout change/failure; concurrent calls isolate workspace/y.
int bmms_accurate_plan(int B,int M,int N,int K,int bf16,int t1,int t2,
    int allowInitializedWorkspace,int* route,size_t* bytes,size_t* counterOffset);
// Exactly one kernel on success; no owned allocation/copy/memset/sync.
// Strict precision is validated for original40; performance is NOT released.
int bmms_accurate(const void* x,const void* z,float* y,void* workspace,size_t bytes,
    int B,int M,int N,int K,int bf16,int t1,int t2,int allowInitializedWorkspace,
    void* stream);
#ifdef __cplusplus
}
#endif
