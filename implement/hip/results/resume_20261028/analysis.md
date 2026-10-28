# gfx1100 计算并行度与 GEMM 数据流分析

## 版本与实验边界

2026-10-28 从暂停记录恢复。暂停时协作加载源码的全部指纹与当前初始源码一致；原 `/tmp/bmms-coalesced-build` 已丢失。复建库 SHA256 与历史库不同，当前 GPU UUID/PCI 位置也不同，因此没有绕过历史脚本的版本约束导入旧计时。

历史 Small 已完成93项，另108项为明确跳过，剩39项未完成；历史 Split-B 有384项正确性、96项主计时和4项大B pilot。历史目录原样保留，作为已完成的历史记录复用，不重做旧版本的扫点或生成case。

本轮从原仓库恢复case1–32、37–40的LFS对象，逐一核对原始SHA256与大小；case33–36仍不加载。当前设备同为gfx1100，但用同机新测的优化前版本、最终版本和适用拆分基线作正式比较。当前Small Matrix仅22case；Split-B仍为case9–16×12配置和case37–40各1个代表配置。SIMD仍测22case×5配置，没有扩大形状范围。

所有正式配置各执行10次预热，捕获100次调用，只计时一次graph replay，GPU event elapsed/100。搬运、分配、捕获、golden验证不在计时内；额外重复一致性检查发生在计时后。跨case的几何平均仅用于汇总加速比，不代替逐配置的100次算术平均。

## 最终保留的实现

1. **奇数leading dimension和M/N尾tile的协作加载**：两个半wave分别加载偶/奇K，完整K16 tile每lane8次`global_load_u16`，8次半wave交换重建WMMA操作数。尾token只屏蔽加载，交换前所有lane重新汇合；无效token保持零。避免原来奇数leading dimension退化成每lane16次半精度加载，也减少尾tile重复加载。
2. **按B存储布局选择GEMM数据流**：B按token连续（`transposeX2=false`）时，先发出下一K16 tile的A/B加载，再执行当前tile的WMMA，最后等待并整理下一操作数。共享A操作数供相邻Ntile使用。B按K连续时保留原来的宽加载和K32组织，避免将连续向量加载改成8次逐字加载造成回退。没有改变每个点积的K累加顺序。
3. **显式限制编译器调度**：在当前累加器上放置仅设备端的空asm输入依赖，使`finish_operand`的`vmcnt(0)`不能被提升到当前WMMA之前。实际code object的反汇编已核对加载→WMMA→等待顺序。该依赖不增加运行指令。
4. **不规则M tile的wave负载平衡**：对小于wave组且不是二次幂的Mtile数，最小化每wave的最大M/N tile组数；规则Mtile沿用原组织。用位移实现二次幂除法。N拆分时仍限制每wave最多2个Mtile，保持每wave32个float的共享行最大值容量。host规划和device执行使用同一个helper。显式C++配置若固定了groupBaseM，需要与新规划的16×wm一致；建议保持0让make_plan生成，不跨版本复用旧Plan。C ABI的groupB/wavesPerBatch/groupBaseN参数保持不变。

最终host规划另外修复了参数校验顺序：先拒绝非法groupBaseN再计算tile分工，防止除零。修复前后88个kernel机器码逐函数完全一致；正式测量库保存在`archive/final_measured_20261028/`，修复后的最终库保存在`archive/final_20261028/`，详见[校验修复证据](host_validation_fix/verification.json)。未改写旧测量身份或绕过续跑约束。

仍只沿B划分block；在block内做M/N wave分工，最终一次block barrier后归约。不增加workspace、输出清零、原子加、全局同步或第二个kernel；单wave Small不需要block barrier。

## 汇编与资源证据

实际共享库的gfx1100 code object经`llvm-objdump --offloading`提取，再反汇编。见[assembly/](assembly/)。资源统计取同编译参数生成的设备汇编，不把编译器理论occupancy当成实测利用率。

- 优化前/最终各88个特化；48个SIMD特化逐函数机器码SHA256完全相同。SIMD性能只在当前设备测一遍，并可供两个版本共同引用；不宣称SIMD代码得到提速。
- 全部88个最终特化ScratchSize=0，未发现寄存器spill。新增40个Matrix特化的基本块内等待扫描未发现等待前读取加载结果；该扫描不是完整控制流证明，仍以golden、重复、并发和实测验证为准。
- FP16 `fused_split_b<true,false,2>` / multiwave Small同布局：VGPR128→177，SGPR107→60，理论occupancy10→8。流水扩大寄存器活跃集，收益来自减少加载重复及隐藏部分等待，并非occupancy提高。
- FP16 `fused_split_b<false,true,2>`：保留连续K宽加载，VGPR99、SGPR71、理论occupancy12保持不变。
- `ds_bpermute`同样需要`lgkmcnt`等待，不能认为寄存器交换没有代价；尾K8、边界分支和原连续路径仍保留必要检查。

## 保留的失败/中间实验

- `halves_current`：只优化奇数完整tile，部分大K收益1.16–1.28倍，但若干特化VGPR增加；Split-B部分配置回退。
- `tail_current`：协作加载覆盖偶数与尾tile，Small大K收益扩大至约1.3–1.9倍，但部分偶数完整tile使用半精度加载不如原来的32位协作加载。
- `pipeline_current`：第一版预取在源码中位于WMMA之前，但编译器将等待和整理也移到WMMA之前，实际没有形成预期重叠；连续K布局明显回退。
- `pipeline2_current`：加入累加器依赖、将完整Ktile边界检查移出8次加载循环，确认等待顺序得到修正；连续K布局仍因逐字加载而回退，所以最终按布局保留宽加载路径。
- `balanced_current`：不规则Mtile的最长wave工作量减少，大K有所改善；对规则Mtile也搜索会引入额外规划开销，所以最终只在不规则Mtile上搜索。

各轮原始计时、golden误差与指纹保存在独立目录中，没有用中间轮最好耗时替换最终版本测量。

## 收益与回退

正式逐case表、同配置回退和相对拆分基线的加速比见[comparison.md](comparison.md)。Small Matrix22case、Split-B8case各自择优、大B4case分别统计，不把三组平均合成一个“整体收益”。每个case仅一批100调用均值，没有足够重复批次给出置信区间，接近1的差距只视为本次观测。

当前最终配置中，case9/13/15的Split-B `gb1_w1_n16`比同机优化前约慢12.0%/11.2%/7.8%；NTiles=1缺少相邻Ntile的独立WMMA工作来摊薄流水开销。没有启用Auto或隐藏这些回退。完整宽Ntile配置、groupB和wave参数仍由调用方显式选择。

拆分基线首轮case15出现109.018μs异常点，同布局case11为20.918μs。SIMD结束后，独立完整10/100复核case11/15分别为21.682/20.949μs，case15首轮慢点未复现，原因未确定。随后时间审计发现首轮大B基线与另一GPU任务日志存在时间交叉；case15异常本身更早，原因仍未确认。确认无其他Python GPU任务后，完整重测全部34个适用拆分基线（baseline_isolated），最终表统一采用此轮，不从多轮中选最小值。首轮及两项诊断性复核原样保留。修正后Split-B主范围8case均未超过拆分基线，大B4case也均慢于基线；Small最终六配置择优后13/22case超过基线。

## 剩余瓶颈

- B=1只有一个block，B=4也只有少量block；即使block内分配8个wave，也不能填满设备。Small大K仍普遍慢于拆分GEMM，沿M/N分block的全局归约尚不属于本两路径的实现。
- 当前只复用同wave相邻Ntile的A；跨wave的A/B加载仍重复，没有LDS跨wave广播或持久双缓冲。
- WMMA输入要求两个半wave复制，加载与交换、地址计算、循环控制和尾块分支仍占明显成本。
- 更多Ntile和更深K流水会增加VGPR，当前已有128→177的资源代价，不能只靠扩大寄存器tile继续调优。
- groupB合并减少block数量，大Bcase缺少中等M/N的现有样本，不应据此推出通用groupB或Auto阈值。


## 最终验证与状态

- 最终Small六配置正确性：case1–32共192项，每项额外重复3次，双stream独立输出通过。初始复建协作加载版本另完成224项（包含lanesK=2）；最终未改动的48个SIMD特化机器码已逐函数核对。
- 最终Split-B正确性：case1–32×12配置=384项，每项额外重复3次，双stream与Small入口回归通过。大B4case的正式计时同时检查golden。
- 正式融合计时：Small22×6=132项；Split-B96+4=100项；全部完整10/100、golden和计时后重复一致性检查通过。上次中断的case18/simd_k8重新完整测量，没有用pilot补齐正式均值。
- 最大已记录绝对误差0.02056884765625、最大相对误差2.153561044189539e-05，满足原有暂定混合误差标准，不替代赛题精度规则的最终确认。
- 最终参数校验修复构建的profiler核对12次成功调用→12次HIP launch→12个融合kernel，8个Small/4个Split-B；3次无效调用无launch。结合HIP correlation排除了计时外memcpy运行时kernel，见[profile/verification.json](profile/verification.json)。另8种非法groupBaseN都在host拒绝。
- 本轮正式测量进程已全部结束。原始正确性、历史已完成结果、中间失败候选与最终版本均保留，未改动40case的定义或golden。

最后的测量环境审计见[timing_environment_audit.json](timing_environment_audit.json)；正式融合对比使用的优化前/最终计时窗口均在首轮基线交叉区间之外。
