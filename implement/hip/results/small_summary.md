# small 分支实验结果

当前是 gfx1100 单 wave/block、一个 block 对应一个 B 的初版。Matrix 仅一个配置，SIMD 从五种 lanesK 配置中选择本次测量最快者；结论不是优化后的硬件极限。

## 正确性与执行约束

- 持久化数据：30 个 case × 6 种配置 = 180 项检查，通过。每项额外重复 3 次结果相等；双 stream 独立输出检查通过。
- 判定：abs_error <= 1e-4 + 1e-4*abs(golden)，为实验暂定标准。
- 全部检查的最大绝对误差：0.0205688477；最大相对误差：2.15356104e-05。二者不一定来自同一配置。
- 持久化 case 覆盖 1–26、28–31；没有宣称全部 40 个 case 的 HIP 算子验收通过。
- FP16/BF16 设备反汇编均发现 v_wmma_f32_16x16x16 指令。
- profiler：Matrix/SIMD 各调用一次，对应两个 fused_small kernel。另有四个调用范围外的 memcpy 运行时 copy kernel，已按 API correlation 区分。

## 测量口径

HIP event 计时 HIP Graph；预热后测三批取中位数，除以批内调用次数。单次校准低于 100 μs 时批内至少 64 次，其余至少 3 次，实际次数见 CSV。包含 graph 调度，不包含分配、拷贝、golden 和编译。tiny kernel 的细微差异仍需增加采样确认。正式计时与验证、profiler 串行执行。

## FP16 / F/F 筛选

共 105 个形状点，逐点核对 FP64 参考结果。

| B | M | N | K | Matrix μs | 最快 SIMD | SIMD μs | 较快路径 |
|---:|---:|---:|---:|---:|---|---:|---|
| 1 | 1 | 1 | 32 | 6.624 | simd_k16 | 4.041 | SIMD |
| 1 | 1 | 1 | 8192 | 709.936 | simd_k32 | 30.694 | SIMD |
| 1 | 1 | 16 | 32 | 7.241 | simd_k4 | 5.626 | SIMD |
| 1 | 1 | 16 | 8192 | 967.016 | simd_k32 | 672.949 | SIMD |
| 1 | 8 | 16 | 32 | 7.944 | simd_k8 | 19.709 | Matrix |
| 1 | 8 | 16 | 8192 | 1095.550 | simd_k8 | 4878.868 | Matrix |
| 1 | 16 | 16 | 32 | 8.565 | simd_k4 | 28.521 | Matrix |
| 1 | 16 | 16 | 8192 | 1298.858 | simd_k4 | 9554.603 | Matrix |
| 1 | 17 | 17 | 32 | 19.681 | simd_k4 | 42.568 | Matrix |
| 1 | 17 | 17 | 8192 | 3988.252 | simd_k32 | 11458.773 | Matrix |

## dtype / 布局交叉补测

共 64 个形状点：B∈{1,64}、(M,N)∈{(1,16),(16,16)}、K∈{32,8192}，遍历两种 dtype 和四种布局。逐点核对 FP64 参考结果。

| dtype | T1/T2 | Matrix 较快点数 | SIMD 较快点数 |
|---|---|---:|---:|
| float16 | False/False | 4 | 4 |
| float16 | False/True | 4 | 4 |
| float16 | True/False | 5 | 3 |
| float16 | True/True | 4 | 4 |
| bfloat16 | False/False | 4 | 4 |
| bfloat16 | False/True | 4 | 4 |
| bfloat16 | True/False | 5 | 3 |
| bfloat16 | True/True | 4 | 4 |

## 结论边界与下一步

- M/N 的几何形状需要分别考虑，不能仅用 B×M×N 设置阈值。
- K 会改变两条路径的耗时差距及 SIMD 的最佳 lanesK；完整 tile 与单行问题的取舍不同。
- dtype、布局和 B 均纳入了测量，CSV 保留逐点结果，不由少数样例推导全局阈值。
- 当前不启用 ComputePath::Auto。small 与沿 M/N 多 block 路径的分界，必须在其他路径实现后比较。
- 本版 Matrix 的 LDS 整理/归约和 SIMD 串行行遍历均有优化空间；优化后需要重新测量边界。

原始数据：[基础扫描](small_baseline/scan.csv)、[交叉扫描](small_cross_layout/scan.csv)、[正确性](small_baseline/correctness.json)、[单 kernel 核对](small_profile/verification.json)。
探索轮 exploratory_* 存在开头与验证重叠的情况，不用于本报告。
