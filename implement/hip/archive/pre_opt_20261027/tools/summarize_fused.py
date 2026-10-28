#!/usr/bin/env python3
"""Validate and summarize completed 22-case fused device timings without GPU work."""
import csv
import json
import math
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / 'results/fused_small_device_10_100'
rows = list(csv.DictReader((OUT / 'fused.csv').open()))
baseline = {int(r['case']): r for r in csv.DictReader((ROOT / 'results/baseline_device_10_100/baseline.csv').open())}
meta = json.loads((OUT / 'timing_method.json').read_text())
progress = json.loads((OUT / 'progress.json').read_text())
assert progress['status'] == 'finished'
expected_paths = {'matrix', 'simd_k1', 'simd_k4', 'simd_k8', 'simd_k16', 'simd_k32'}
assert len(rows) == 240 and len({(r['case'], r['path']) for r in rows}) == 240
measured, skipped = [], []
for i in range(1, 41):
    group = [r for r in rows if int(r['case']) == i]
    assert {r['path'] for r in group} == expected_paths
    for r in group:
        if i in meta['selected_ids']:
            assert r['status'] == 'complete' and r['golden_passed'] == 'True'
            assert int(r['warmups']) == 10 and int(r['iterations']) == 100
            us, total, base, speed = map(float, (r['fused_us'], r['total_device_ms'], r['baseline_us'], r['speedup']))
            assert all(math.isfinite(v) and v > 0 for v in (us, total, base, speed))
            assert math.isclose(us, total * 10, rel_tol=1e-12)
            assert base == float(baseline[i]['baseline_us'])
            assert math.isclose(speed, base / us, rel_tol=1e-12)
            measured.append(r)
        else:
            assert r['status'] == 'skipped' and r['skip_reason']
            assert not r['fused_us'] and not r['speedup'] and not r['iterations']
            skipped.append(r)
assert len(measured) == 132 and len(skipped) == 108
best = {i: min((r for r in measured if int(r['case']) == i), key=lambda r: float(r['fused_us']))
        for i in meta['selected_ids']}
faster = [i for i, r in best.items() if float(r['speedup']) > 1]
report = dict(selected_cases=22, measured_configurations=132, skipped_cases=18,
              skipped_configurations=108, failed=0, warmups=10, iterations=100,
              arithmetic_mean_and_speedup_checks='passed', golden_checks='all passed, provisional mixed tolerance',
              imported_measurements=sum(bool(r['imported_from']) for r in measured),
              cases_faster_than_baseline=faster,
              best_path_counts=dict(Counter('matrix' if r['path'] == 'matrix' else 'simd' for r in best.values())),
              max_abs=max(float(r['max_abs']) for r in measured),
              max_rel=max(float(r['max_rel']) for r in measured))
(OUT / 'validation.json').write_text(json.dumps(report, indent=2) + '\n')
lines = ['# 同口径 small 实测结论', '',
         '范围由用户指定：B≤8、M≤128、N≤257，22 个持久化 case；这是测量范围，不是推导出的最优分派阈值。',
         '每种配置 10 次预热、100 次取 device 算术平均，与已保存拆分基线口径一致。', '',
         f'132 项均通过暂定混合误差检查；18 个 case / 108 项跳过，未填耗时。{report["imported_measurements"]} 项复用了已核对版本与协议的先前测量。',
         '逐项平均值、加速比公式及范围检查全部通过。', '',
         f'从每个 case 的六种配置中选择最快者：只有 {len(faster)}/22 个 case 快于拆分基线，编号为 {faster}。',
         f'当前最快配置类别：{report["best_path_counts"]}。', '',
         '| case | 最快融合配置 | baseline μs | fused μs | 加速比 baseline/fused |',
         '|---:|---|---:|---:|---:|']
for i, r in best.items():
    lines.append(f'| {i} | {r["path"]} | {float(r["baseline_us"]):.3f} | {float(r["fused_us"]):.3f} | {float(r["speedup"]):.4f} |')
lines += ['', '## 结论边界', '',
          '- 当前单 wave/block 初版只在极小形状获得融合收益；大部分选中 case 仍明显慢于拆分基线。',
          '- Matrix 在 small 内部胜过 SIMD，不等于胜过拆分基线。',
          '- 仅凭 BMN 小不能确定 small 路径适用性，K 和布局必须纳入；后续应优化计算组织，并与沿 M/N 多 block 路径比较。',
          '- 六配置择优是已测结果汇总，不是已经实现的 Auto 调度。该实现级结论不代表 WMMA/SIMD 的硬件性能上限。',
          '- 计时与基线分开运行，尽管协议一致，GPU 状态变化仍会影响比较；非常接近的差异不宜直接固化成阈值。', '',
          '明细：[summary.md](summary.md)、[fused.csv](fused.csv)、[validation.json](validation.json)。', '']
(OUT / 'conclusions.md').write_text('\n'.join(lines))
print(json.dumps(report, indent=2))
