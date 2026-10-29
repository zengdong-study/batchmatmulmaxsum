#pragma once

#include <hip/hip_runtime.h>
#include <cstddef>
#include <cstdint>

namespace bmms {

enum class Status { Success, InvalidArgument, NotImplemented, RuntimeError };
enum class DataType { Float16, BFloat16 };
enum class KernelFamily { Small, SplitB };
enum class SplitAxis { Auto, B, M, N };
enum class ComputePath { Auto, Matrix, Simd };
// WithinTask covers the complete batch inside one task. LastTask is a
// proposed cross-task protocol, not an implemented synchronization mechanism.
enum class FinalizeMode { Auto, WithinTask, LastTask };

struct Problem {
    std::int64_t B = 0;
    std::int64_t M = 0;
    std::int64_t N = 0;
    std::int64_t K = 0;
    DataType dtype = DataType::Float16;
    bool transposeX1 = false;
    bool transposeX2 = false;
};

// Zero sizes and Auto choices are unresolved configuration, not tuned defaults.
struct Config {
    KernelFamily family = KernelFamily::Small;
    int wavesPerBatch = 0; // SplitB: 1/2/4/8, groupB*wavesPerBatch <= 8.
    SplitAxis splitAxis = SplitAxis::Auto;
    ComputePath computePath = ComputePath::Auto;
    FinalizeMode finalizeMode = FinalizeMode::Auto;
    int lanesK = 0; // SIMD: 1/2/4/8/16/32 lanes per dot; 0 resolves to 8.
    int baseM = 0;
    int baseN = 0;
    int baseK = 0;
    int groupBaseM = 0;
    int groupBaseN = 0;
    int groupB = 0;
};

// No owned allocation. Layout and initialization protocol remain to be defined.
// Any future completion counters must be isolated per invocation and published
// using a correct device memory-order protocol. No implicit memset is permitted.
struct WorkspaceLayout {
    std::size_t bytes = 0;
    std::size_t alignment = 0;
    std::size_t partialOffset = 0;
    std::size_t completionOffset = 0;
};

struct Plan {
    Problem problem{};
    Config config{};
    WorkspaceLayout workspace{};
    // Task count is distinct from hardware thread/block count.
    std::uint64_t taskCount = 0;
    dim3 grid{0, 0, 0};
    dim3 block{0, 0, 0};
    std::size_t dynamicSharedBytes = 0;
    bool ready = false;
};

struct Arguments {
    const void* x1 = nullptr; // Contiguous device storage, dtype from Problem.
    const void* x2 = nullptr;
    float* y = nullptr;      // Device output [B], float32.
    void* workspace = nullptr;
    std::size_t workspaceBytes = 0;
    hipStream_t stream = nullptr;
};

// Explicit Small or SplitB planning; both finalize entirely inside a block.
// Auto compute path returns NotImplemented until crossover measurements mature.
// No device allocation, copies or launches; failed calls leave *plan unchanged.
Status make_plan(const Problem& problem, const Config& requested, Plan* plan);

// Enqueue exactly one Small or SplitB kernel on args.stream; no global workspace or sync.
// RuntimeError reports launch/runtime API failure; completion is asynchronous.
// Currently gfx1100/wave32 only. Split M/N and Auto compute selection remain unimplemented.
Status launch(const Plan& plan, const Arguments& args);

} // namespace bmms
