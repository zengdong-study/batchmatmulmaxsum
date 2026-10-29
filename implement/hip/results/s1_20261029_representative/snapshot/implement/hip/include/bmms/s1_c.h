#pragma once
#include <stddef.h>
#ifdef __cplusplus
extern "C" {
#endif
// Experimental fixed metadata policy, version 1. Return bmms::Status (0..3).
// route: 0 Small Matrix, 1 Split-B, 2 conditional Split-N, 3 conditional Split-M.
// allowInitializedWorkspace is an explicit first-use counter-initialization
// contract opt-in (0 or 1), never inferred from pointers or problem data.
// plan performs no device work; outputs are untouched on failure.
int bmms_s1_plan(int B, int M, int N, int K, int bf16, int t1, int t2,
    int allowInitializedWorkspace, int* route, size_t* bytes, size_t* counterOffset);
// Exactly one kernel on success, no allocation, copy, memset or synchronization.
// For conditional routes, initialize B uint32 counters at counterOffset to zero
// before FIRST use, ordered on stream. Partials need no initialization. Serial
// replay reuses workspace; concurrent calls need disjoint workspace/output.
// Reinitialize after failure/incomplete execution or workspace layout change.
// Workspace is 256-byte aligned. Unconditional routes require zero bytes.
int bmms_s1(const void* x1, const void* x2, float* y, void* workspace,
    size_t workspaceBytes, int B, int M, int N, int K, int bf16, int t1, int t2,
    int allowInitializedWorkspace, void* stream);
#ifdef __cplusplus
}
#endif
