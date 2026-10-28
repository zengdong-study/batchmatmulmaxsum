# split-B 分支测试结果

一个 block 负责 groupB 个 batch；每个 batch 由 wavesPerBatch 个 wave 协作 M tile，block 内完成最终 Sum。

正确性：case 1–32 × 12 配置，含两 dtype、四布局、尾块、groupB 尾部、全负及长归约；每项额外重复3次。
case 37–40 为单次可行性检查；33–36 为 B=1 且 M/N/K 极大，不作为该分支的合适测试。
主要性能：case 9–16；极限 case 仅在单次 pilot 满足运行预算时加入。
性能统一为10次预热、100次device算术平均；HIP event + 单次100调用graph replay；输入/分配/捕获/验证不计时。

| case | 最快实测配置 | baseline μs | split-B μs | 加速比 |
|---:|---|---:|---:|---:|
| 9 | gb1_w8_n32 | 22.117 | 79.017 | 0.2799 |
| 10 | gb1_w8_n32 | 23.869 | 23.103 | 1.0332 |
| 11 | gb1_w8_n32 | 20.860 | 104.885 | 0.1989 |
| 12 | gb1_w8_n32 | 23.667 | 48.296 | 0.4900 |
| 13 | gb1_w8_n32 | 22.010 | 75.430 | 0.2918 |
| 14 | gb1_w8_n32 | 23.580 | 23.703 | 0.9948 |
| 15 | gb1_w8_n32 | 20.800 | 105.319 | 0.1975 |
| 16 | gb1_w8_n32 | 23.235 | 48.921 | 0.4749 |

## 极限形状 pilot（不是正式平均耗时）

| case | 单次 device ms | 正式计时 |
|---:|---:|---|
| 37 | 306.854 | 跳过：不满足运行预算 |
| 38 | 105.485 | 跳过：不满足运行预算 |
| 39 | 347.736 | 跳过：不满足运行预算 |
| 40 | 149.055 | 跳过：不满足运行预算 |

现有40个case缺少B较大且M/N适中的形状；case9–16的B仅为4。不能由本轮结果断言高B的一般性能。
groupB和wave数均为显式实验配置，未启用自动选择。旧small数据保留，新库使用独立构建目录。
原始结果：[performance.csv](performance.csv)、[correctness.json](correctness.json)、[large_preflight.json](large_preflight.json)。
