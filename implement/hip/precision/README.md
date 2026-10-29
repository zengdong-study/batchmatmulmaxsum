# 严格精度修复候选

当前默认配置对应已通过原40case严格精度的算法：绝对误差<1e-4且相对误差<1e-4，两个条件分别检查。每调用仍一个kernel。**性能门槛尚未通过，不替换S6快版。**

入口：`bmms_accurate_plan` / `bmms_accurate`（参数布局与tiled模块的bmms_s5一致）。host仅根据形状、dtype、布局及显式初始化许可选路：

- 小B长K及大M/N长K：A正负部分两路WMMA、短段、FP32补偿合并，保留高低部分到FP64 Max/Sum。
- 大M/N短K（K≤256）：标准FP32 FMA粗算，以保守前向误差界覆盖全部可能赢家，同kernel内协作FP64重算并归约。
- 其他问题：冻结S6路径。

首次工作区计数器清零仍需调用方显式许可，double部分结果使工作区与S6不同。必须重新规划、首次初始化；不可直接复用旧布局。串行/replay内部复位，并发需独立workspace/output。

## 构建

先按 `../tiled/README.md` 构建S1/S6依赖，然后：

```bash
cmake -S implement/hip/precision -B /tmp/bmms-precision-default \
  -DCMAKE_BUILD_TYPE=Release -DCMAKE_HIP_COMPILER=/opt/rocm/llvm/bin/clang++ \
  -DCMAKE_HIP_ARCHITECTURES=gfx1100 \
  -DBMMS_FROZEN_S6_BUILD=/tmp/bmms-tiled-s6-build
cmake --build /tmp/bmms-precision-default --target bmms_accurate -j2
/opt/venv/bin/python implement/hip/precision/tools/run.py \
  --build /tmp/bmms-precision-default --mode validate \
  --output implement/hip/results/my_strict_validation
```

默认：CHUNK=16、KAHAN=ON、SPLIT_A=ON、POSITIVE=OFF、NARROW_BIG=OFF、REFINE_N=64。其他参数是未放行或失败实验，不能把其结果冒充默认方案。更改库/源码/工具/数据/环境必须用新结果目录。

## 当前证据

- `../results/precision_20261029_entry/严格精度修复报告.md`：实施顺序、40严格检查、生命周期、边界、单kernel追踪与性能失败。
- `../results/precision_20261029_entry/snapshot/`：实际已验证版本的源码/三份库及工具快照。
- 每个失败或慢候选单独保留，包含实际库哈希、执行源码及编译参数；没有修改输入或golden，也没有按数据分布选择捷径。
- 代表正式性能仅约0.568/0.259倍于拆分基线；没有准确版本的全40性能胜出结论。

下一轮只攻性能：先拆分粗算、补偿、候选数量、FP64重算和收尾成本，再改任务组织。精度检查保持严格，不回退为混合误差标准。
