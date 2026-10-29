# S2–S6：host元数据入口、长K及大矩阵融合

入口为 `bmms_s5_plan` / `bmms_s5`，头文件 `include/tiled.h`。名字表示引入完整形状覆盖的阶段；S6冻结并验收这一实际入口，不在测量时重新选配置。收到输入后，由host依据实际B/M/N/K、dtype和两项连续存储布局标志计算路径。没有选路kernel，不读取case编号、输入值、golden或计时记录。

## 固定策略

调用方显式允许首次工作区初始化时，按以下优先级选择：

| 输入元数据 | 实现 |
|---|---|
| M≥1024、N≥1024、K≥4096 | CTA128×128/K32，单LDS buffer协作加载，流式行Max、最后CTA Sum |
| M≥1024、N≥1024、K<4096 | CTA64×128/K64，同上 |
| B≤8、M≤128、1<N≤257、K≥4096 | CTA16×32、块内8路split-K；t2=false才寄存器预取 |
| B4/M32/N1024/K128 | 原Split-N group64/waves2 |
| N=1且M>128 | 原Split-M group64/waves4 |
| 原Small范围 | 原Small Matrix |

其他输入委托冻结S1规则或返回NotImplemented；仍受题面范围、K为8倍数、dtype和布局合法性检查。这里只对原40case报告验收，不声称所有可规划形状均已验证或胜出。

关闭初始化许可时完整委托S1无条件入口；这会让33–36及27/32返回NotImplemented，长K回到较慢Small，大B回到Split-B。不能把条件覆盖当作无条件覆盖。

## 工作区生命周期

`bmms_s5_plan(B,M,N,K,bf16,t1,t2,allow,&route,&bytes,&offset)` 是纯host查询，失败保持输出参数。`bmms_s5(...)` 在host执行同一固定规则，再启动所选唯一kernel。

- workspace需256-byte对齐；计数器位于offset处，含B个uint32。
- **首次使用前**，调用方按同一stream顺序复制B个零值到计数器；部分结果区不初始化。
- 成功调用在同一kernel中以release复位计数器，可串行复用和graph replay。
- 并发调用使用互不重叠的workspace/output；只读输入可以共享。
- 失败、未完成执行或工作区布局变化后，重新初始化。
- 接口内部不分配、不复制、不清零、不做设备同步；每次成功调用一个kernel。

最大B64/M=N8192/K128的选定方案约128MiB工作区，替代16GiB完整相似度矩阵；B1/M=N=K8192工作区约2MiB。工作区初始化是否属于最终题面允许的接口仍需明确，不能以此自动放行无条件最终验收。

## 构建与复现

```bash
cmake -S implement/hip/tiled -B /tmp/bmms-tiled-s5-final-build \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_HIP_COMPILER=/opt/rocm/llvm/bin/clang++ \
  -DCMAKE_HIP_ARCHITECTURES=gfx1100 \
  -DBMMS_BUILD_S4=ON -DBMMS_BUILD_S5=ON -DBMMS_BACKEND_ABI_ID=5 \
  -DBMMS_S1_BUILD=/tmp/bmms-s1-build
cmake --build /tmp/bmms-tiled-s5-final-build -j2
```

先按 `../S1入口说明.md` 构建冻结S1依赖。新后端使用独立SONAME `.so.5`，新旧版本对照在同一进程内各绑定自身后端，实际映射保存于loaded_backends.json。

`tools/fused_runner.py` 支持显式 `--ids`、`--max-cases`、逐项原子保存和有效GPU审计下续跑；源码/库/数据/环境变更需新目录。先 `--mode validate`，再 `--mode time`。每项10次预热、100次device执行算术均值；没有自适应重复、取最小值或隐藏初始化。graph replay前host已固定路径，换形状/布局要重新规划并捕获。计时没有测host端到端延迟。

S2完整中间点积对FP64使用FP32 FMA前向误差界；所有最终输出继续使用冻结的 `1e-4 + 1e-4*abs(golden)`，未放宽最终golden。题面精度档位/组合方式的歧义单列于最终报告。

## 阶段产物

- S2：`../results/s2_20261029_v5/S2报告.md`；早期失败与LDS慢候选均保留。
- S3：`../results/s3_20261029_v1/S3报告.md`，实际入口32case通过。
- S4：`../results/s4_20261029_final/S4报告.md`，布局预取回退单列。
- S5/S6：对应结果目录含实际入口、逐轮原始时间、GPU审计、资源、源码/库快照、单kernel追踪和未解决接口条件；以最终报告为准。

最新结论：[S6结论](../results/s6_20261029_final/S6结论.md)、[逐case完整报告](../results/s6_20261029_final/S6报告.md)。40项首轮工程胜出不等于题面契约已无条件放行。
