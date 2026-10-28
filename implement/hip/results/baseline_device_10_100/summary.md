# 拆分算子 device 基线

范围：全部 40 个持久化 case。每个 case 10 次预热，100 次测量取算术平均。

FP32 bmm → amax(N) → sum(M)。输入转换、搬运、分配及 graph 捕获在计时外；GPU event 测量包含 100 次调用的 HIP Graph，elapsed/100。相似度矩阵只在设备临时存在，不保存。

40 个输出均与已有 golden 按暂定混合误差标准核对通过。旧融合数据计时口径不同，本表不直接计算加速比。

| case | B/M/N/K | dtype | T1/T2 | 平均 device 耗时 μs |
|---:|---|---|---|---:|
| 1 | 3/17/33/40 | float16 | False/False | 15.558 |
| 2 | 3/17/33/40 | float16 | False/True | 16.637 |
| 3 | 3/17/33/40 | float16 | True/False | 15.661 |
| 4 | 3/17/33/40 | float16 | True/True | 14.890 |
| 5 | 3/17/33/40 | bfloat16 | False/False | 15.606 |
| 6 | 3/17/33/40 | bfloat16 | False/True | 16.436 |
| 7 | 3/17/33/40 | bfloat16 | True/False | 15.531 |
| 8 | 3/17/33/40 | bfloat16 | True/True | 14.795 |
| 9 | 4/32/1024/128 | float16 | False/False | 22.117 |
| 10 | 4/32/1024/128 | float16 | False/True | 23.869 |
| 11 | 4/32/1024/128 | float16 | True/False | 20.860 |
| 12 | 4/32/1024/128 | float16 | True/True | 23.667 |
| 13 | 4/32/1024/128 | bfloat16 | False/False | 22.010 |
| 14 | 4/32/1024/128 | bfloat16 | False/True | 23.580 |
| 15 | 4/32/1024/128 | bfloat16 | True/False | 20.800 |
| 16 | 4/32/1024/128 | bfloat16 | True/True | 23.235 |
| 17 | 1/65/129/8192 | float16 | False/False | 1119.294 |
| 18 | 1/65/129/8192 | float16 | False/True | 597.788 |
| 19 | 1/65/129/8192 | float16 | True/False | 336.116 |
| 20 | 1/65/129/8192 | float16 | True/True | 182.993 |
| 21 | 1/65/129/8192 | bfloat16 | False/False | 1217.152 |
| 22 | 1/65/129/8192 | bfloat16 | False/True | 553.320 |
| 23 | 1/65/129/8192 | bfloat16 | True/False | 337.117 |
| 24 | 1/65/129/8192 | bfloat16 | True/True | 182.719 |
| 25 | 1/1/1/32 | float16 | False/False | 14.032 |
| 26 | 2/1/257/40 | bfloat16 | False/True | 14.869 |
| 27 | 3/257/1/72 | float16 | True/False | 16.114 |
| 28 | 2/17/33/56 | bfloat16 | True/True | 15.177 |
| 29 | 2/17/33/64 | float16 | False/True | 16.460 |
| 30 | 2/33/65/8192 | bfloat16 | True/False | 342.080 |
| 31 | 2/17/129/128 | float16 | True/True | 17.323 |
| 32 | 2/8192/1/32 | bfloat16 | False/False | 19.220 |
| 33 | 1/8192/8192/8192 | float16 | False/False | 51657.661 |
| 34 | 1/8192/8192/8192 | bfloat16 | False/True | 45701.650 |
| 35 | 1/8192/8192/8192 | float16 | True/False | 46753.555 |
| 36 | 1/8192/8192/8192 | bfloat16 | True/True | 45228.271 |
| 37 | 64/8192/8192/128 | bfloat16 | False/False | 70527.075 |
| 38 | 64/8192/8192/128 | float16 | False/True | 73576.401 |
| 39 | 64/8192/8192/128 | bfloat16 | True/False | 69891.641 |
| 40 | 64/8192/8192/128 | float16 | True/True | 76478.828 |

原始数据：[baseline.csv](baseline.csv)；计时配置：[timing_method.json](timing_method.json)。
