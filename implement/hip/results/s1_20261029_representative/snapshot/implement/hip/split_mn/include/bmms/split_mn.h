#pragma once
#include "bmms/batch_matmul_max_sum.h"

namespace bmms::split_mn {
// Separate API so experimental M/N paths do not change Small/SplitB's ABI.
struct Config {
    SplitAxis axis = SplitAxis::M;
    int groupSize = 0; // M: rows/task (default 64); N: columns/task (default 256).
    int waves = 4;     // 1/2/4/8; one block owns one task.
};
struct Plan {
    Problem problem{};
    Config config{};
    WorkspaceLayout workspace{};
    unsigned groups = 0;
    dim3 grid{0,0,0}, block{0,0,0};
    bool ready = false;
};
// No allocation, device operation or launch. Failure preserves *plan.
Status make_plan(const Problem&, const Config&, Plan*);
// Exactly one kernel. Before FIRST use, the caller copies zero to B uint32
// counters at completionOffset, ordered before launch on the same stream.
// Partial storage need not be initialized. Kernel completion resets counters.
// Serial calls (including graph replays) may reuse one workspace. Concurrent
// calls require disjoint workspace/output, or an explicit stream dependency.
// After a failed/incomplete execution, reinitialize before reusing workspace.
Status launch(const Plan&, const Arguments&);
} // namespace bmms::split_mn

extern "C" {
// axis=0: Split-M; axis=1: Split-N. Return bmms::Status as int.
int bmms_mn_plan(int B,int M,int N,int K,int bf16,int t1,int t2,int axis,
                 int groupSize,int waves,std::size_t* bytes,std::size_t* counterOffset);
int bmms_mn(const void*,const void*,float*,void*,std::size_t,
            int B,int M,int N,int K,int bf16,int t1,int t2,int axis,
            int groupSize,int waves,void* stream);
}
