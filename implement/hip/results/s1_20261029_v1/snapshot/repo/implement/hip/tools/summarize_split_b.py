#!/usr/bin/env python3
"""Offline validation and combined split-B report; no GPU work."""
import csv
import json
import math
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]
OUT=ROOT/'results/split_b_v1'
main=list(csv.DictReader((OUT/'performance.csv').open()))
large=list(csv.DictReader((OUT/'large_performance.csv').open()))
correct=json.loads((OUT/'correctness.json').read_text())
assert len(main)==96 and len(large)==4 and correct['checks']==384
assert len({(r['case'],r['config']) for r in main+large})==100
for r in main+large:
    assert r['warmups']=='10' and r['iterations']=='100'
    us,total,baseline,speed=map(float,(r['device_us'],r['total_device_ms'],r['baseline_us'],r['speedup']))
    assert all(math.isfinite(v) and v>0 for v in (us,total,baseline,speed))
    assert math.isclose(us,total*10,rel_tol=1e-12)
    assert math.isclose(speed,baseline/us,rel_tol=1e-12)
profile=json.loads((OUT/'profile/verification.json').read_text())
assert profile['one_kernel_per_call']
old=list(csv.DictReader((ROOT/'results/fused_device_10_100/fused.csv').open()))
lines=['# SplitB 实施与测试结论','',
       '正确性：case1–32 ×12配置共384项通过，每项额外重复3次相等；case37–40代表配置也通过。覆盖36个持久化case，跳过case33–36（B=1且M/N/K同时极大）。',
       '支持FP16/BF16、四布局、groupB尾部和M/N/K尾块。双stream、旧Small入口回归、规划参数检查均通过。',
       '正式性能均为10次预热、100次device算术平均：case9–16测12配置，case37–40测1组代表配置，共100项。输入搬运、分配、捕获与验证不计时。',
       'profiler核对一次调用只有一个split-B kernel；外部拷贝kernel单独区分。24个split-B特化均包含真实WMMA指令。','',
       '| case | 最快已测配置 | baseline μs | SplitB μs | baseline/SplitB | 相对旧Small最快配置的提速 |',
       '|---:|---|---:|---:|---:|---:|']
improvements=[]
for i in list(range(9,17))+list(range(37,41)):
    best=min((r for r in main+large if int(r['case'])==i),key=lambda r:float(r['device_us']))
    previous=[r for r in old if int(r['case'])==i and r['status']=='complete']
    gain=''
    if previous:
        before=min(float(r['fused_us']) for r in previous)
        factor=before/float(best['device_us']);improvements.append(factor);gain=f'{factor:.2f}x'
    lines.append(f'| {i} | {best["config"]} | {float(best["baseline_us"]):.3f} | {float(best["device_us"]):.3f} | {float(best["speedup"]):.4f} | {gain} |')
lines+=['','## 结论与限制','',
        f'- case9–16相对旧Small最快已测配置提升约{min(improvements):.2f}–{max(improvements):.2f}倍，但全部正式测试仍未超过拆分基线。',
        '- case37–40只测一组代表配置，不宣称已找到大B极限形状的最优参数。',
        '- 现有40case没有大B且M/N适中的组合：主要配置探索的B=4，B=64仅存在于极限M/N。不能由本轮推出一般高B边界。',
        '- 多wave与groupBaseN复用已有收益，groupB变大不保证更快；配置交互需要逐点判断。',
        '- 未启用Auto，SplitM/N未实现；本轮结果是初版实现结果，不代表硬件上限。',
        '- 初轮pilot的50ms预算只控制多配置搜索，后续根据实际总成本补做了一组大B正式计时；pilot不替代平均值。','',
        '数据：[主要96项](performance.csv)、[大B4项](large_performance.csv)、[正确性](correctness.json)、[执行验证](profile/verification.json)。','']
(OUT/'conclusions.md').write_text('\n'.join(lines))
report=dict(correctness_cases=list(range(1,33))+list(range(37,41)),
    correctness_config_checks=388,repeat_checks_main=384,additional_repeats_per_main_check=3,
    primary_performance_rows=96,large_performance_rows=4,total_performance_rows=100,
    warmups=10,iterations=100,golden='all passed, provisional mixed tolerance',
    device_mean_and_speedup_checks='all passed',one_kernel_per_call=True,
    old_small_improvement_range=[min(improvements),max(improvements)],
    max_abs_main_correctness=max(r['max_abs'] for r in correct['results']),
    max_rel_main_correctness=max(r['max_rel'] for r in correct['results']),
    max_abs_large=max(float(r['max_abs']) for r in large),
    max_rel_large=max(float(r['max_rel']) for r in large))
(OUT/'validation.json').write_text(json.dumps(report,indent=2)+'\n')
selection=json.loads((OUT/'selection.json').read_text())
selection.update(performance_ids=list(range(9,17))+list(range(37,41)),
    large_formal_default_config='gb1_w4_n64',large_full_timing_skipped=[],
    large_multi_config_tuning_skipped=[37,38,39,40])
(OUT/'selection.json').write_text(json.dumps(selection,indent=2)+'\n')
summary=OUT/'summary.md'
s=summary.read_text()
notice='\n补充：case37–40后续已完成一组代表配置正式10/100测量；下方pilot表中的“跳过”仅指初轮完整配置搜索。见 [最终合并结论](conclusions.md) 与 [大B正式平均值](large_summary.md)。\n'
if notice not in s:summary.write_text(s+notice)
print(json.dumps(report,indent=2))
