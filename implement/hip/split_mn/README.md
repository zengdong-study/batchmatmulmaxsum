# Split-M 与 Split-N 单 kernel 路径

这是独立实验模块，提供 `bmms::split_mn::make_plan/launch` 和 C ABI，不改变 Small/Split-B 的源码、ABI、构建目标或调优结果。当前支持 gfx1100 / wave32、FP16/BF16、四种连续存储布局。配置显式指定，尚无 Auto 分派。

## 计算与单 kernel 收尾

- **Split-M**：一个 block 负责一个 batch 的 `groupSize` 行，完成完整 K 的点积和完整 N 的行 Max，再发布该组的部分 Sum。
- **Split-N**：一个 block 负责一个 batch 的 `groupSize` 列，遍历全部 M 和 K，发布每行的部分 Max。最终必须先跨 N group 合并行 Max，然后 Sum(M)。

每个 wave 负责 16 行，两个独立 N tile 累加器复用 A fragment。完整 K 后才更新 Max；无效 N 使用负无穷，无效 M 不参与 Sum。每调用只有一次 `hipLaunchKernelGGL`，不保存完整相似度矩阵。

每个 batch 通过 device/agent 范围的 acq_rel 原子计数选出最后一个 block。生产者写部分结果后经 block barrier 发布，最后一个 block 的所有收尾线程各自执行 acquire load，再读取部分结果；不依赖一个线程的 acquire 自动传播给其他线程。固定线程分工和固定树形 Sum 使结果与 block 完成顺序无关。无跨 block 自旋，无浮点 atomicAdd，无第二次 kernel。

## 工作区契约

`make_plan` 返回 `workspace.bytes`、256-byte 对齐要求及 `completionOffset`。调用方负责设备分配，并在**首次使用前**向 `workspace + completionOffset` 复制 B 个零值 uint32 计数器。此复制必须在计算前按 stream 顺序完成；部分结果区不用初始化。

最后一个 block 写 y 后，在同一 kernel 内以 release store 将计数器复位。相同问题与计划可在同一 stream 连续调用及反复 replay HIP Graph，不需要逐次清零。更换 workspace 布局、失败或未完成执行后，必须重新初始化。

并发调用须使用互不重叠的 workspace 和输出，或者建立明确 stream 依赖。输入可只读共享。算子不会检查计数器是否为零，因为这需要额外设备读回或操作；这是调用方必须遵守的前提。

首次分配和初始化在算子调用与计时外进行。此方案要求评测接口允许调用方提供工作区并初始化计数器；尚不能宣称适用于完全不允许任何外部初始化的接口。

## 构建

在仓库根目录执行：

```bash
cmake -S implement/hip/split_mn -B /tmp/bmms-split-mn-build \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_HIP_COMPILER=/opt/rocm/llvm/bin/clang++ \
  -DCMAKE_HIP_ARCHITECTURES=gfx1100
cmake --build /tmp/bmms-split-mn-build -j2
```

生成独立 `libbmms_split_mn.so`。头文件为 `include/bmms/split_mn.h`，引用原有 `bmms/batch_matmul_max_sum.h` 的 Problem/Arguments。`wmma_load.hip.h` 固化本轮开始时的加载函数，避免并行开发的 Small/Split-B 变更改变本模块的构建身份。

## C++ 使用顺序

```cpp
bmms::split_mn::Config config;
config.axis = bmms::SplitAxis::M; // N 为另一条路径
config.groupSize = 64;           // M: 行数；N: 列数；必须为16的倍数
config.waves = 4;                // 1/2/4/8
bmms::split_mn::Plan plan;
auto status = bmms::split_mn::make_plan(problem, config, &plan);
// 检查 status；按 plan.workspace.bytes 分配至少256-byte对齐的设备工作区。
// 首次向 completionOffset 位置复制 B 个零 uint32，按 stream 顺序完成。
// 设置 Arguments 的 x1/x2/y/workspace/workspaceBytes/stream。
status = bmms::split_mn::launch(plan, arguments);
// 检查 status；执行是异步的，完成错误还需通过 stream/event 同步检查。
```

默认 M group=64、N group=256、4 waves，是可运行的代表配置，未声称最优。groupSize 支持 16–8192，必须为16的倍数。退化为一个 group 时也使用相同协议。

C ABI 的 `bmms_mn_plan` 查询字节数和计数器偏移；`bmms_mn` 提交调用，axis=0/1 分别代表 M/N。返回值对应 `bmms::Status`。Python Runner 展示了通过 CPU 零值 H2D 初始化计数器的方法。

## 验证和正式计时

```bash
/opt/venv/bin/python implement/hip/split_mn/tools/experiment_split_mn.py \
  --mode validate --output implement/hip/split_mn/results/my_validation
/opt/venv/bin/python implement/hip/split_mn/tools/experiment_split_mn.py \
  --mode time --output implement/hip/split_mn/results/my_timing
# 另一组显式配置，使用独立输出目录
/opt/venv/bin/python implement/hip/split_mn/tools/experiment_split_mn.py \
  --mode time --balanced --output implement/hip/split_mn/results/my_balanced_timing
/opt/venv/bin/python implement/hip/split_mn/tools/compare_split_mn.py \
  --mode baseline --output implement/hip/split_mn/results/my_baseline
/opt/venv/bin/python implement/hip/split_mn/tools/compare_split_mn.py \
  --mode summarize --timing implement/hip/split_mn/results/my_timing \
  --output implement/hip/split_mn/results/my_baseline
```

仅使用已有 case 1–32。正确性为 M 路径三组、N 路径四组配置，共224项；每项额外重复3次，将输出预置 NaN 后检查覆盖写、相等性和计数器归零，另验证双 stream 独立工作区。暂用 `abs_error <= 1e-4 + 1e-4*abs(golden)`，并非赛题精度档位的最终解释。

默认正式计时为两个代表配置共64项；另用 `--balanced` 比较 M group16/wave1、N group64/waves2 两组更细任务粒度（独立输出目录，同样64项）。每轮每项恰好10次未计时预热，捕获100次调用，单次 GPU event 计时 replay，elapsed/100 算术平均；计时外搬运、分配、捕获、验证。额外一次不计时 replay 检查工作区复用。拆分基线沿用 FP32 bmm → amax(N) → sum(M) 的原实现并在同机测量。

脚本在检测到其他 Python 实验进程时会停止，不与主对话的性能测量主动并行；已完成项原子保存，相同设备、输入、库和脚本指纹下可续跑。不同版本选择新输出目录。

单 kernel 核对：

```bash
rocprofv3 --kernel-trace --hip-runtime-trace --output-format csv \
  --output-directory implement/hip/split_mn/results/my_profile --output-file split_mn -- \
  /opt/venv/bin/python implement/hip/split_mn/tools/experiment_split_mn.py \
  --mode smoke --output implement/hip/split_mn/results/my_smoke
```

按 HIP API correlation 只统计 `fused_split_mn`，不把计时外 memcpy 的运行时 copy kernel 算作算子启动。

## 当前边界

未启用 Auto、跨 block split-K、组间输入缓存或跨 M tile 的显式 B 复用。Split-N 的工作区为 B×ceil(N/groupSize)×M 个 FP32 部分 Max，适合 M 小的场景，M 大时可能显著退化。Split-M 工作区只存每组一个 FP32 Sum。

本轮不生成新 case，不替代缺失的 LFS 数据；case33–40不属于已验证范围。最终验证与性能、失败/退化情况见同目录的实验记录。

## 本轮已完成产物

- [实验记录与收益/退化分析](实验记录.md)
- [最终224项正确性和综合核对](results/verification.json)
- [最终默认配置的32-case对照](results/final_timing/comparison.md)
- [细粒度配置的32-case对照](results/balanced_timing/comparison.md)
- [单kernel证据](results/final_profile/verification.json)

在本轮case9–16上，显式N group64/waves2优于默认代表配置；M的细粒度配置没有普遍收益，保留所有对照数据。默认值未作为Auto阈值或全面调优结论。
