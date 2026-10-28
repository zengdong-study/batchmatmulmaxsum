# HIP 融合算子：Small 与 SplitB 分支

已实现 `fused_small` 的 Matrix/SIMD 和 `fused_split_b` 的 Matrix 路径，当前支持 gfx1100 / wave32。SplitB 支持 groupB 和多 wave；沿 M/N 分配独立 block 与自动路径选择尚未实现。

## Small 实现范围

一个 block（32 个线程、一个 wave）负责一个 batch，遍历完整 M/N/K，在 block 内完成点积、Max(N)、Sum(M)，直接覆盖写入 FP32 `y[b]`。每次调用只启动一个 kernel，不需要 workspace、计数器、输出清零或第二个归约 kernel。

| 路径 | 计算组织 |
|---|---|
| Matrix | rocWMMA 16×16×16，FP16/BF16 输入、FP32 累加；LDS 整理四种布局并处理尾块；完整 K 后在 block 内更新行 Max |
| Simd | `lanesK` 个 lane 协作完成一个点积，其他 lane 并行处理 N；完整点积先归约，再取行 Max，最后累加各行 |

SIMD 支持 lanesK=1/2/4/8/16/32，默认 8。初步实验比较其中 1/4/8/16/32 五种配置。Max 初值为负无穷；无效 N 不参与 Max，K 尾部补零，无效 M 不参与 Sum。

执行计划中的 base 值反映实际计算组织：Matrix 为 16/16/16；SIMD 为 `1 / (32/lanesK) / lanesK`。groupBaseM/groupBaseN 覆盖向对应 base 向上对齐后的完整 M/N 范围，groupB=1。这只是全 batch 的任务范围，不代表所有 tile 同时驻留寄存器。

当前是可测量的初版：Matrix 使用 LDS 输入整理及累加器写回 LDS 后归约；尚未做直接累加器归约、双缓冲、多 wave、group 优化。显式调用接受题目有效维度，但不意味着大形状适合此路径。未宣称该实现达到优化后的性能。

## 接口和文件

- `include/bmms/batch_matmul_max_sum.h`：Problem、Config、Plan、Arguments 和公开 C++ 接口。
- `include/bmms/kernels.hip.h`：各路径 kernel 声明；split M/N 仍未定义。
- `include/bmms/small_impl.hip.h`：small 的 SIMD 和 rocWMMA 实现。
- `include/bmms/split_b_impl.hip.h`：split-B 的直接矩阵加载、N tile 复用、groupB 和多 wave 协作。
- `include/bmms/split_b_c.h`：split-B C ABI。
- `src/batch_matmul_max_sum.hip`：参数检查、显式规划、dtype/布局分派和单 kernel 启动。
- `include/bmms/small_c.h`：供 ctypes 实验使用的 C ABI。
- `tools/experiment_small.py`：正确性验证、HIP Graph 性能扫描及 profiler smoke 入口。

C++ 使用顺序：填充 Problem，指定 `Config.computePath=Matrix/Simd`，调用 `make_plan`，检查返回值后提交 device 输入、输出及 stream 到 `launch`。所有调用均需检查返回值。

`ComputePath::Auto` 返回 NotImplemented，暂不固化自动阈值。暂不支持的切分和 group 配置也返回 NotImplemented。当前维度、输入规模、dtype、SIMD lane 配置会在规划阶段检查；失败不修改输出计划。launch 检查计划和设备；成功是异步提交，设备执行错误还需通过 stream/event 同步检查。

## 构建

在仓库根目录运行：

```bash
cmake -S implement/hip -B /tmp/bmms-build \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_HIP_COMPILER=/opt/rocm/llvm/bin/clang++ \
  -DCMAKE_HIP_ARCHITECTURES=gfx1100
cmake --build /tmp/bmms-build
```

生成 `libbmms.a` 和 `libbmms_small.so`。默认实验脚本加载 `/tmp/bmms-build/libbmms_small.so`，可通过 `--library` 指定其他路径。临时构建目录不属于持久化源码，环境重启后可能需要重建。

## 正确性验证

```bash
/opt/venv/bin/python implement/hip/tools/experiment_small.py --mode validate
```

使用持久化 case 1–26、28–31，共 30 个，逐个比较 Matrix 和五种 SIMD lane 配置；每种配置额外重复运行 3 次检查相等性，并验证独立输出下的双 stream 调用。

暂用 `abs_error <= 1e-4 + 1e-4*abs(golden)` 作为明确的实验判定，不能视为对赛题含糊精度档位的最终解释。逐项最大绝对/相对误差记录到 `results/small_baseline/correctness.json`。这不是全部 40 个 case 的算子验收。

## 性能扫描

```bash
# 105 个形状点：3种B × 7种M/N × 5种K；先扫描FP16、F/F
/opt/venv/bin/python implement/hip/tools/experiment_small.py \
  --mode scan --repeats 3

# 64个交叉点：两种dtype、四布局、两种B、两种M/N、两种K
/opt/venv/bin/python implement/hip/tools/experiment_small.py \
  --mode scan --cross-layout --shapes 1x16 16x16 \
  --b-values 1 64 --k-values 32 8192 --repeats 3 \
  --output implement/hip/results/small_cross_layout
```

每个点测试六种配置，扫描时也核对独立 FP64 参考结果。计时使用 HIP event 包围包含若干算子调用的 HIP Graph，预热后报告三批计时的中位数除以调用次数，避免 Python/ctypes 提交间隙；单次校准低于 100 μs 时批内至少 64 次，其余采用 --repeats 指定的最低次数。实际次数见 CSV，仍包含 graph 调度开销。分配、输入生成、golden、编译和数据搬运不在计时内。不要同时运行其他 GPU 工作来比较性能。

`scan.csv` 保存耗时、误差和三次原始样本；`timing_method.json` 保存测量口径、环境和扫描配置。`exploratory_*` 为初轮探索数据，其开头和正确性验证重叠，不用于正式结论。

单 kernel 检查入口：

```bash
rocprofv3 --kernel-trace --hip-runtime-trace --output-format csv \
  --output-directory implement/hip/results/small_profile --output-file small -- \
  /opt/venv/bin/python implement/hip/tools/experiment_small.py --mode smoke
```

smoke 对 Matrix、SIMD 各调用一次，使用 CPU 输入拷贝与已有 golden。按 API correlation 核对两个调用对应两个 fused kernel；整份日志还包含调用范围外 memcpy 触发的运行时 copy kernel，不能直接用全部日志行数作为算子启动次数。

## 后续决策

先比较相同任务范围的 Matrix 和 SIMD，检查 K、布局、dtype、B 是否改变胜出路径；在耗时接近处增加采样。small 与沿 M/N 多 block 路径的分界必须等待其他路径实现后比较，当前不设置统一 BMN 阈值。

保存的结果可用 `python implement/hip/tools/summarize_small.py` 汇总，见 [实验结果](results/small_summary.md)。


## 拆分算子基线（40 个持久化 case）

```bash
/opt/venv/bin/python implement/hip/tools/benchmark_baseline.py
```

只测 case_001.pt 至 case_040.pt，不包括 small 扫描点。低精度输入按实际值转成 FP32，并按属性解释逻辑布局；输入转换、搬运、内存分配全部在计时外。用预分配 out 缓冲执行 `torch.bmm → torch.amax → torch.sum`，保留拆分实现必需的设备中间结果，但不落盘相似度矩阵。

每个 case 严格执行 10 次未计时预热；捕获包含 100 次拆分调用的 HIP Graph，只 replay 一次，用 GPU event 得到总 device 时间，除以 100 得到算术平均。没有自适应次数、额外 replay 预热或三批取中位数。包括算子设备执行、中间显存流量和 graph 调度开销，不用 CPU wall time，也不包含 Python 提交每次算子的间隙。

结果见 [40-case 基线汇总](results/baseline_device_10_100/summary.md)，原始 CSV、计时口径和验证信息在同一目录。已有融合计时采用不同预热/统计协议，本次不将两者直接换算成可比的加速比。


## 同口径融合计时与加速比（22 个小 BMN case）

```bash
/opt/venv/bin/python -u implement/hip/tools/benchmark_fused.py \
  > implement/hip/logs/fused_small_device_10_100.log 2>&1
```

按用户确认的 B≤8、M≤128、N≤257 筛选，测量 22 个 case × Matrix/SIMD lanesK=1/4/8/16/32，共 132 项，K 不额外限制。编号为 1–8、17–26、28–31。其余 18 个 case 的 108 个配置显式标记 skipped，不运行。不修改算子实现，不生成额外 case。

每项恰好 10 次未计时预热，捕获 100 次调用，只做一次计时 replay；GPU event 总 device 时间除以 100。无中位数、自适应重复或 replay 预热。输入搬运、分配、捕获和 golden 检查在计时外，口径与 `benchmark_baseline.py` 一致。

结果逐配置写入 `results/fused_small_device_10_100/items/`，每完成一项更新 [原始 CSV](results/fused_small_device_10_100/fused.csv) 与 [比较汇总](results/fused_small_device_10_100/summary.md)。加速比=已保存同口径 baseline_us/fused_us，仅对 golden 检查通过项报告。测量结果与旧扫描数据分开保存；缺失项保持空白，不使用外推替代。

默认 --import-from 指向此前停止的全量结果目录，相同命令支持断点继续，已有项不重测；输入清单、共享库、脚本或基线文件指纹改变时拒绝混用结果，应选择新输出目录。中断且尚未完成的配置会重新执行完整 10/100 流程。运行时错误会记录并停止，以免在损坏的 HIP 上下文中继续。

按每个 batch 的 M×N×K 从小到大执行。原先全 40 个 case 的任务已按用户要求停止，历史结果保留在 fused_device_10_100；续测时校验二进制、输入清单、基线与 10/100 协议一致后，只导入选中范围内的已完成项。不把跳过项作为测量完成项，不减少选中项的迭代次数。当前项和阶段见 [progress.json](results/fused_small_device_10_100/progress.json)。

最终统一计时结果见 [conclusions.md](results/fused_small_device_10_100/conclusions.md)。22 个 case 的 132 项测量均完成，其余 18 个 case 明确跳过。可用 `python implement/hip/tools/summarize_fused.py` 离线复核并重建结论，不运行 GPU。


## SplitB 实现与使用

仅沿 B 方向划分 block。一个 block 负责 groupB 个 batch，每个 batch 内由 wavesPerBatch 个 wave 分担 M tile；M/N 不跨 block 切分。每个 wave 算完整 K 后取行 Max，再求部分 Sum，最后 block 内固定顺序合并。输出直接覆盖写入，无全局 workspace、计数器、原子加或额外 kernel。

配置：

```cpp
bmms::Config config;
config.family = bmms::KernelFamily::SplitB;
config.computePath = bmms::ComputePath::Matrix;
config.groupB = 2;
config.wavesPerBatch = 2;
config.groupBaseN = 64;
// make_plan(problem, config, &plan), then launch(plan, arguments).
```

baseM/baseN/baseK 固定 16；groupBaseM=16*wavesPerBatch；groupBaseN 支持 16/32/64。groupB 和 wavesPerBatch 支持 1/2/4/8，乘积不超过8；每 block 32*groupB*wavesPerBatch 个线程。零配置默认 1/1/32。这些是显式可用配置，不是自动调优结论。

同一 wave 的相邻 N tile 共用 A fragment；对齐且完整的 tile 直接使用 rocWMMA 从全局加载，行/列布局由属性决定。尾块或 leading dimension 不满足直接加载对齐条件时，按对应布局整理到每 wave 独占的 LDS。wave 内用 __syncwarp 的内存栅栏同步；所有 wave 只在最终部分和合并时参加一次 block barrier，包含无有效 tile 或尾部无效 batch 的 wave。

动态 LDS 为 groupB*wavesPerBatch*2052 bytes，最多16416 bytes。Small 的计算实现保持原样，C ABI bmms_small 仍可用；新增 C ABI bmms_split_b。Config 增加 family/wavesPerBatch 字段，C++ 调用方与库应一起重新编译。

### 独立构建与测试

保留旧 small 测量二进制，split-B 使用独立目录：

```bash
cmake -S implement/hip -B /tmp/bmms-splitb-build \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_HIP_COMPILER=/opt/rocm/llvm/bin/clang++ \
  -DCMAKE_HIP_ARCHITECTURES=gfx1100
cmake --build /tmp/bmms-splitb-build
/opt/venv/bin/python -u implement/hip/tools/experiment_split_b.py
# 另对 case37–40 测一组代表配置的完整10/100平均：
/opt/venv/bin/python -u implement/hip/tools/experiment_split_b.py --mode large
```

主测试：case1–32 ×12配置，含重复一致性、双stream和旧Small入口回归；主要正式计时case9–16。case37–40先做单次pilot，完整多配置调优受50ms单次运行预算限制；它们实际pilot142–317ms，因此不做完整配置搜索，另用 --mode large 对 groupB=1/wavesPerBatch=4/groupBaseN=64 补一组正式10/100计时。50ms是测试组织预算，不是分派阈值。

case33–36的B=1、M/N/K同时极大，不作为SplitB的合适测试。现有40case缺少“大B、小M/N”用例，本轮不能充分确定该场景的性能边界。

[主要测试结果](results/split_b_v1/summary.md)、[大B代表配置](results/split_b_v1/large_summary.md)、[正确性](results/split_b_v1/correctness.json)、[单kernel检查](results/split_b_v1/profile/verification.json)。所有正式性能数据采用10次预热、100次device算术平均；pilot不是正式平均值。

SplitB 最终合并结果见 [conclusions.md](results/split_b_v1/conclusions.md)，可用 `python implement/hip/tools/summarize_split_b.py` 离线复核。
