#!/usr/bin/env python3
"""Summarize saved small-path experiments without rerunning GPU work."""
import csv
import hashlib
import json
from collections import defaultdict
from pathlib import Path

root=Path(__file__).resolve().parents[1]

def groups(path,expected):
    rows=list(csv.DictReader(path.open()))
    grouped=defaultdict(list)
    for row in rows:
        key=tuple(row[x] for x in ('B','M','N','K','dtype','t1','t2'))
        grouped[key].append(row)
    assert len(grouped)==expected
    results={}
    for key,rs in grouped.items():
        assert len(rs)==6 and len({r['path'] for r in rs})==6
        mat=next(r for r in rs if r['path']=='matrix')
        sim=min((r for r in rs if r['path']!='matrix'),key=lambda r:float(r['us']))
        results[key]=(mat,sim)
    return results

base=groups(root/'results/small_baseline/scan.csv',105)
cross=groups(root/'results/small_cross_layout/scan.csv',64)
c=json.loads((root/'results/small_baseline/correctness.json').read_text())
profile=json.loads((root/'results/small_profile/verification.json').read_text())
assert profile['one_fused_kernel_per_call']
lines=['# small 分支实验结果','',
'当前是 gfx1100 单 wave/block、一个 block 对应一个 B 的初版。Matrix 仅一个配置，SIMD 从五种 lanesK 配置中选择本次测量最快者；结论不是优化后的硬件极限。','',
'## 正确性与执行约束','',
f'- 持久化数据：{len(c["cases"])} 个 case × 6 种配置 = {len(c["results"])} 项检查，通过。每项额外重复 3 次结果相等；双 stream 独立输出检查通过。',
'- 判定：abs_error <= 1e-4 + 1e-4*abs(golden)，为实验暂定标准。',
f'- 全部检查的最大绝对误差：{max(r["max_abs"] for r in c["results"]):.9g}；最大相对误差：{max(r["max_rel"] for r in c["results"]):.9g}。二者不一定来自同一配置。',
'- 持久化 case 覆盖 1–26、28–31；没有宣称全部 40 个 case 的 HIP 算子验收通过。',
'- FP16/BF16 设备反汇编均发现 v_wmma_f32_16x16x16 指令。',
'- profiler：Matrix/SIMD 各调用一次，对应两个 fused_small kernel。另有四个调用范围外的 memcpy 运行时 copy kernel，已按 API correlation 区分。','',
'## 测量口径','',
'HIP event 计时 HIP Graph；预热后测三批取中位数，除以批内调用次数。单次校准低于 100 μs 时批内至少 64 次，其余至少 3 次，实际次数见 CSV。包含 graph 调度，不包含分配、拷贝、golden 和编译。tiny kernel 的细微差异仍需增加采样确认。正式计时与验证、profiler 串行执行。','',
'## FP16 / F/F 筛选','',
'共 105 个形状点，逐点核对 FP64 参考结果。','',
'| B | M | N | K | Matrix μs | 最快 SIMD | SIMD μs | 较快路径 |',
'|---:|---:|---:|---:|---:|---|---:|---|']
for (b,m,n,k,dt,t1,t2),(mat,sim) in base.items():
    if b=='1' and (m,n) in [('1','1'),('1','16'),('8','16'),('16','16'),('17','17')] and k in ('32','8192'):
        ma,si=float(mat['us']),float(sim['us'])
        lines.append(f'| {b} | {m} | {n} | {k} | {ma:.3f} | {sim["path"]} | {si:.3f} | {"Matrix" if ma<si else "SIMD"} |')
lines+=['','## dtype / 布局交叉补测','',
'共 64 个形状点：B∈{1,64}、(M,N)∈{(1,16),(16,16)}、K∈{32,8192}，遍历两种 dtype 和四种布局。逐点核对 FP64 参考结果。','',
'| dtype | T1/T2 | Matrix 较快点数 | SIMD 较快点数 |','|---|---|---:|---:|']
for dt in ('float16','bfloat16'):
    for t1,t2 in (('False','False'),('False','True'),('True','False'),('True','True')):
        pairs=[v for key,v in cross.items() if key[4:]==(dt,t1,t2)]
        wins=sum(float(a['us'])<float(b['us']) for a,b in pairs)
        lines.append(f'| {dt} | {t1}/{t2} | {wins} | {len(pairs)-wins} |')
lines+=['','## 结论边界与下一步','',
'- M/N 的几何形状需要分别考虑，不能仅用 B×M×N 设置阈值。',
'- K 会改变两条路径的耗时差距及 SIMD 的最佳 lanesK；完整 tile 与单行问题的取舍不同。',
'- dtype、布局和 B 均纳入了测量，CSV 保留逐点结果，不由少数样例推导全局阈值。',
'- 当前不启用 ComputePath::Auto。small 与沿 M/N 多 block 路径的分界，必须在其他路径实现后比较。',
'- 本版 Matrix 的 LDS 整理/归约和 SIMD 串行行遍历均有优化空间；优化后需要重新测量边界。','',
'原始数据：[基础扫描](small_baseline/scan.csv)、[交叉扫描](small_cross_layout/scan.csv)、[正确性](small_baseline/correctness.json)、[单 kernel 核对](small_profile/verification.json)。',
'探索轮 exploratory_* 存在开头与验证重叠的情况，不用于本报告。','']
(root/'results/small_summary.md').write_text('\n'.join(lines))
paths=[root/'src/batch_matmul_max_sum.hip',*sorted((root/'include/bmms').glob('*')),root/'tools/experiment_small.py']
(root/'results/source_fingerprints.json').write_text(json.dumps({str(p.relative_to(root)):hashlib.sha256(p.read_bytes()).hexdigest() for p in paths},indent=2)+'\n')
print(root/'results/small_summary.md')
