# 大 B 代表配置正式计时

case37–40，groupB=1、wavesPerBatch=4、groupBaseN=64。每个case10次预热、100次device平均；均通过golden检查。
只测一组代表配置，不宣称已找到极限形状最优参数。

| case | baseline μs | split-B μs | 加速比 |
|---:|---:|---:|---:|
| 37 | 70527.075 | 177097.031 | 0.3982 |
| 38 | 73576.401 | 143091.396 | 0.5142 |
| 39 | 69891.641 | 324719.180 | 0.2152 |
| 40 | 76478.828 | 176945.840 | 0.4322 |

原始数据：[large_performance.csv](large_performance.csv)。
