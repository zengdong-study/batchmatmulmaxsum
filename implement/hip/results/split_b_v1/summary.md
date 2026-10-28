# split-B 分支测试结果

一个 block 负责 groupB 个 batch；每个 batch 由 wavesPerBatch 个 wave 协作 M tile，block 内完成最终 Sum。

正确性：case 1–32 × 12 配置，含两 dtype、四布局、尾块、groupB 尾部、全负及长归约；每项额外重复3次。
case 37–40 为单次可行性检查；33–36 为 B=1 且 M/N/K 极大，不作为该分支的合适测试。
主要性能：case 9–16；极限 case 仅在单次 pilot 满足运行预算时加入。
性能统一为10次预热、100次device算术平均；HIP event + 单次100调用graph replay；输入/分配/捕获/验证不计时。

| case | 最快实测配置 | baseline μs | split-B μs | 加速比 |
|---:|---|---:|---:|---:|
| 9 | gb2_w2_n64 | 22.117 | 163.001 | 0.1357 |
| 10 | gb2_w2_n64 | 23.869 | 114.757 | 0.2080 |
| 11 | gb2_w2_n64 | 20.860 | 223.409 | 0.0934 |
| 12 | gb2_w2_n64 | 23.667 | 150.415 | 0.1573 |
| 13 | gb2_w2_n64 | 22.010 | 168.229 | 0.1308 |
| 14 | gb2_w2_n64 | 23.580 | 116.337 | 0.2027 |
| 15 | gb1_w8_n32 | 20.800 | 234.583 | 0.0887 |
| 16 | gb2_w2_n64 | 23.235 | 175.142 | 0.1327 |

## 极限形状 pilot（不是正式平均耗时）

| case | 单次 device ms | 正式计时 |
|---:|---:|---|
| 37 | 176.537 | 跳过：不满足运行预算 |
| 38 | 142.313 | 跳过：不满足运行预算 |
| 39 | 317.454 | 跳过：不满足运行预算 |
| 40 | 177.109 | 跳过：不满足运行预算 |

现有40个case缺少B较大且M/N适中的形状；case9–16的B仅为4。不能由本轮结果断言高B的一般性能。
groupB和wave数均为显式实验配置，未启用自动选择。旧small数据保留，新库使用独立构建目录。
原始结果：[performance.csv](performance.csv)、[correctness.json](correctness.json)、[large_preflight.json](large_preflight.json)。

补充：case37–40后续已完成一组代表配置正式10/100测量；下方pilot表中的“跳过”仅指初轮完整配置搜索。见 [最终合并结论](conclusions.md) 与 [大B正式平均值](large_summary.md)。
