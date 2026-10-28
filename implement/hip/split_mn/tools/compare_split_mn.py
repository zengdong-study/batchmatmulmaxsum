#!/usr/bin/env python3
"""Same-device FP32 split baseline and offline Split-M/N comparison."""
import argparse
import json
from pathlib import Path
import torch
from experiment_split_mn import ROOT,HIP,idle,sha,save,baseline_measure
from case_cache import ensure_cases, DEFAULT_CASES


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--mode',choices=['baseline','summarize'],default='summarize')
    p.add_argument('--cases',type=Path,default=DEFAULT_CASES)
    p.add_argument('--timing',type=Path,default=ROOT/'results/timing')
    p.add_argument('--output',type=Path,default=ROOT/'results/baseline')
    a=p.parse_args()
    if a.mode=='baseline':
        a.output.mkdir(parents=True,exist_ok=True);items=a.output/'items';items.mkdir(exist_ok=True)
        idle()
        ensure_cases(a.cases,range(1,33))
        env=dict(device=str(torch.cuda.get_device_properties(0)),torch=str(torch.__version__),hip=torch.version.hip,
            script_sha256=sha(Path(__file__)),helper_sha256=sha(HIP/'tools/benchmark_baseline.py'),
            manifest_sha256=sha(a.cases/'manifest.json'),case_sha256={str(i):sha(a.cases/f'case_{i:03d}.pt') for i in range(1,33)},
            warmups=10,iterations=100,method='10 untimed split calls; graph of 100 calls; one event-timed replay; device elapsed/100 arithmetic mean',
            precision='FP32 logical bmm, amax(N), sum(M); highest; allow_tf32=False',
            excludes='input copies/conversion, allocation, graph capture, validation')
        f=a.output/'identity.json'
        if f.exists() and json.loads(f.read_text())!=env:raise RuntimeError('Baseline identity changed; choose new output')
        save(f,env)
        torch.set_float32_matmul_precision('highest');torch.backends.cuda.matmul.allow_tf32=False
        for i in range(1,33):
            target=items/f'case_{i:03d}.json'
            if target.exists():continue
            idle();c=torch.load(a.cases/f'case_{i:03d}.pt',weights_only=True)
            stats=baseline_measure(c,torch.device('cuda'))
            save(target,dict(case=i,shape=c['metadata']['shape'],**stats))
            print(f'baseline {i:03d}: {stats["baseline_us"]:.3f} us passed',flush=True)
        save(a.output/'summary.json',dict(status='complete',cases=32,warmups=10,iterations=100))
        return
    assert json.loads((a.timing/'summary.json').read_text())['checks']==64
    baseline={i:json.loads((a.output/'items'/f'case_{i:03d}.json').read_text()) for i in range(1,33)}
    timing_env=json.loads((a.timing/'environment.json').read_text());base_env=json.loads((a.output/'identity.json').read_text())
    assert all(timing_env[k]==base_env[k] for k in ['device','torch','hip'])
    rows=[]
    for f in sorted((a.timing/'items').glob('*.json')):
        r=json.loads(f.read_text());b=baseline[r['case']]
        assert r['warmups']==b['warmups']==10 and r['iterations']==b['iterations']==100
        assert abs(r['device_us']-r['total_device_ms']*10)<1e-9
        assert r['case_sha256']==base_env['case_sha256'][str(r['case'])]
        rows.append(dict(**r,baseline_us=b['baseline_us'],speedup=b['baseline_us']/r['device_us']))
    save(a.timing/'comparison.json',dict(rows=rows,beats_baseline={axis:sum(r['speedup']>1 for r in rows if r['axis']==axis) for axis in ['M','N']},
        timing_library_sha256=json.loads((a.timing/'identity.json').read_text())['library_sha256'],baseline_identity_sha256=sha(a.output/'identity.json')))
    mconfig=next(r for r in rows if r['axis']=='M');nconfig=next(r for r in rows if r['axis']=='N')
    lines=['# Split-M / Split-N 与拆分基线','',
        '仅已有 case 1–32；该表报告一组显式配置，另组对照单独保存；未进行全面参数搜索或 Auto 分派。',
        f'Split-M：groupBaseM={mconfig["group"]}、{mconfig["waves"]} waves；Split-N：groupBaseN={nconfig["group"]}、{nconfig["waves"]} waves。',
        '所有正式耗时均为10次预热、单次包含100调用的HIP Graph device算术平均；golden检查均通过。',
        '比较同一GPU上重新测得的FP32 bmm → amax → sum拆分基线，转换/分配/搬运/捕获/验证不计时。',
        '工作区仅首次使用前通过H2D清零计数器；每次融合调用仅一个kernel，复用时由kernel内部复位。','',
        '| case | B/M/N/K | baseline μs | Split-M μs | M 加速比 | Split-N μs | N 加速比 |',
        '|---:|---|---:|---:|---:|---:|---:|']
    for i in range(1,33):
        m=next(r for r in rows if r['case']==i and r['axis']=='M');n=next(r for r in rows if r['case']==i and r['axis']=='N')
        lines.append(f'| {i} | {"/".join(map(str,m["shape"]))} | {m["baseline_us"]:.3f} | {m["device_us"]:.3f} | {m["speedup"]:.3f} | {n["device_us"]:.3f} | {n["speedup"]:.3f} |')
    lines+=['','加速比=同机拆分基线/融合路径。所有行均保留，包括退化或不适合某条路径的形状；不将逐case择优解释为Auto阈值。',
        'case33–40未纳入本轮验证与计时；本轮不生成或替代case，不能宣称40-case验收。','']
    (a.timing/'comparison.md').write_text('\n'.join(lines))
    print(json.dumps({axis:sum(r['speedup']>1 for r in rows if r['axis']==axis) for axis in ['M','N']}))

if __name__=='__main__':main()
