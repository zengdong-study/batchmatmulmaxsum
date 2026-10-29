#!/usr/bin/env python3
"""Check and summarize same-device 10/100 revision measurements without running GPU."""
import argparse
import json
import math
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]
def records(root):
    return [json.loads(p.read_text()) for p in (root/'items').glob('*.json')]
def geo(values):return math.exp(sum(map(math.log,values))/len(values))
def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--root',type=Path,default=ROOT/'results/resume_20261028')
    a=p.parse_args();r=a.root
    before=records(r/'coalesced_current')+records(r/'coalesced_large_current')
    final=records(r/'final_current');baseline={x['case']:x for x in records(r/'baseline_current')}
    old={(x['family'],x['case'],x['config']):x for x in before}
    simd=records(r/'final_simd_current')
    rechecked=records(r/'baseline_recheck')
    if rechecked:
        primary=json.loads((r/'baseline_current/identity.json').read_text())
        recheck_id=json.loads((r/'baseline_recheck/identity.json').read_text())
        assert primary['device']==recheck_id['device']
        assert primary['helpers']['benchmark_baseline.py']==recheck_id['baseline_helper_sha256']
        assert primary['manifest_sha256']==recheck_id['manifest_sha256']
        for x in rechecked:
            assert x['case_sha256']==primary['case_sha256'][str(x['case'])]
            baseline[x['case']]=x
    isolated=records(r/'baseline_isolated')
    if isolated:
        assert len(isolated)==34
        primary=json.loads((r/'baseline_current/identity.json').read_text())
        latest=json.loads((r/'baseline_isolated/identity.json').read_text())
        assert primary['device']==latest['device'] and primary['helpers']==latest['helpers']
        assert primary['manifest_sha256']==latest['manifest_sha256'] and primary['case_sha256']==latest['case_sha256']
        baseline={x['case']:x for x in isolated}
    for x in before+final+list(baseline.values())+simd:
        assert x['status']=='complete' and x['warmups']==10 and x['iterations']==100
        us=x.get('device_us',x.get('baseline_us'))
        assert us>0 and math.isclose(us,x['total_device_ms']*10,rel_tol=1e-12)
    assert len(before)==122 and len(final)==122 and len(baseline)==34
    assert len({x['case'] for x in final if x['family']=='small'})==22
    assert sum(x['family']=='split' for x in final)==96
    assert sum(x['family']=='large' for x in final)==4
    assert {x['case'] for x in final if x['family']=='small'}==set(range(1,9))|set(range(17,27))|set(range(28,32))
    assert all(x['repeat_equal'] for x in before+final+simd)
    same=[json.loads((r/d/'identity.json').read_text()) for d in ['coalesced_current','coalesced_large_current','final_current','baseline_current']]
    assert len({x['device'] for x in same})==1
    assert len({x['manifest_sha256'] for x in same})==1
    def table(family,title):
        rows=[x for x in final if x['family']==family]
        lines=[f'## {title}','','| case | 优化前配置 | 优化前 μs | 最终配置 | 最终 μs | 优化前/最终 | 拆分基线 μs | 基线/最终 |','|---:|---|---:|---|---:|---:|---:|---:|']
        stats=[]
        for i in sorted({x['case'] for x in rows}):
            f=min((x for x in rows if x['case']==i),key=lambda x:x['device_us'])
            o=min((x for x in before if x['family']==family and x['case']==i),key=lambda x:x['device_us'])
            b=baseline[i]['baseline_us'];ratio=o['device_us']/f['device_us'];speed=b/f['device_us']
            stats.append(dict(case=i,before_us=o['device_us'],final_us=f['device_us'],before_config=o['config'],final_config=f['config'],revision_speedup=ratio,baseline_us=b,baseline_speedup=speed))
            lines.append(f'| {i} | {o["config"]} | {o["device_us"]:.3f} | {f["config"]} | {f["device_us"]:.3f} | {ratio:.3f} | {b:.3f} | {speed:.3f} |')
        ratios=[x['revision_speedup'] for x in stats]
        summary=dict(cases=len(stats),geomean_revision_speedup=geo(ratios),revision_speedup_range=[min(ratios),max(ratios)],faster_than_baseline=sum(x['baseline_speedup']>1 for x in stats),regressed_over_5pct=[x['case'] for x in stats if x['revision_speedup']<1/1.05],rows=stats)
        lines+=['',f'优化前/最终几何平均 {geo(ratios):.3f}；本表采用各版本相同候选集合内的最快实测配置，不是自动分派策略。','']
        return lines,summary
    lines=['# Small / Split-B 同机续测结果（2026-10-28）','','所有耗时来自 gfx1100 同一设备、现有持久化 case；10 次预热、单次包含 100 调用的 HIP Graph replay，device event elapsed/100 算术平均。搬运、分配、捕获、验证不计时；重复一致性额外检查位于正式测量之后。每次融合调用仍只有一个 kernel。',
        '', '最终拆分基线采用baseline_isolated中34case的完整独立重测；首轮大B基线与另一任务日志时间交叉，故全部重测排除干扰。首轮及case11/15诊断性复核保留，不按多轮最小值择优。', '', 'Small Matrix 保持 22 个 case；Split-B 主计时 case9–16 各12配置，case37–40只测 gb1_w4_n64；不测 case33–36。表中“优化前”是暂停时协作加载源码在本轮设备上的复建版本，历史结果保留，不将不同 GPU 标识的记录拼成一轮。','']
    summary={'baseline_source':'baseline_isolated' if isolated else 'baseline_current_with_diagnostic_recheck','baseline_diagnostic_rechecked_ids':sorted(x['case'] for x in rechecked)}
    for family,title in [('small','Small Matrix（22 case）'),('split','Split-B（主范围8 case，各12配置择优）'),('large','Split-B 大 B（4 case，单一代表配置）')]:
        text,stats=table(family,title);lines+=text;summary[family]=stats
    matched=[]
    for x in final:
        o=old[(x['family'],x['case'],x['config'])]
        if x['device_us']>o['device_us']*1.05:
            matched.append(dict(family=x['family'],case=x['case'],config=x['config'],before_us=o['device_us'],final_us=x['device_us'],slowdown=x['device_us']/o['device_us']))
    summary['matched_configuration_regressions_over_5pct']=matched
    lines+=['## 回退与覆盖','','按相同配置逐项比较，回退超过5%的项如下。单次100调用均值无法给出置信区间，接近1的差距不解释为稳定收益。','', '| 路径 | case | 配置 | 优化前 μs | 最终 μs | 最终/优化前 |','|---|---:|---|---:|---:|---:|']
    for x in matched:lines.append(f'| {x["family"]} | {x["case"]} | {x["config"]} | {x["before_us"]:.3f} | {x["final_us"]:.3f} | {x["slowdown"]:.3f} |')
    lines+=['',f'SIMD 同机正式测量：{len(simd)}/110 项；SIMD 48个特化机器码与优化前完全相同，结果只测一次并用于两个版本的对照，不宣称 SIMD 代码获得提速。','']
    if len(simd)==110:
        assert len({(x['case'],x['config']) for x in simd})==110
        lines+=['## Small 每 case 在 Matrix/SIMD 间择优','','同机 SIMD 与最终 Matrix 共同形成22×6=132项完整范围。','', '| case | 优化前最快 | 优化前 μs | 最终最快 | 最终 μs | 优化前/最终 | 基线/最终 |','|---:|---|---:|---|---:|---:|---:|']
        full=[]
        for i in sorted({x['case'] for x in final if x['family']=='small'}):
            sims=[x for x in simd if x['case']==i]
            o=min([old[('small',i,'matrix')]]+sims,key=lambda x:x['device_us'])
            f=min([x for x in final if x['family']=='small' and x['case']==i]+sims,key=lambda x:x['device_us'])
            full.append(dict(case=i,before_config=o['config'],final_config=f['config'],before_us=o['device_us'],final_us=f['device_us'],revision_speedup=o['device_us']/f['device_us'],baseline_speedup=baseline[i]['baseline_us']/f['device_us']))
            lines.append(f'| {i} | {o["config"]} | {o["device_us"]:.3f} | {f["config"]} | {f["device_us"]:.3f} | {o["device_us"]/f["device_us"]:.3f} | {baseline[i]["baseline_us"]/f["device_us"]:.3f} |')
        summary['small_all_paths']=dict(rows=full,faster_than_baseline=sum(x['baseline_speedup']>1 for x in full),geomean_revision_speedup=geo([x['revision_speedup'] for x in full]))
    (r/'comparison.md').write_text('\n'.join(lines)+'\n')
    (r/'comparison.json').write_text(json.dumps(summary,indent=2)+'\n')
    validation=dict(before_rows=len(before),final_rows=len(final),baseline_cases=len(baseline),simd_rows=len(simd),same_device=True,
        timing_arithmetic='all passed',complete_small_six_path_grid=len(simd)==110,baseline_source='baseline_isolated' if isolated else 'baseline_current_with_diagnostic_recheck',baseline_diagnostic_rechecked_ids=sorted(x['case'] for x in rechecked))
    for name in ['final_small_validation','final_split_validation']:
        data=json.loads((r/name/'correctness.json').read_text())
        validation[name]=dict(checks=len(data['results']),max_abs=max(x['max_abs'] for x in data['results']),
            max_rel=max(x['max_rel'] for x in data['results']),concurrent_streams=data['concurrent_streams'])
    profile=r/'profile/verification.json'
    if profile.exists():
        data=json.loads(profile.read_text());assert data['one_kernel_per_call'] and data['launch_api_calls']==12
        validation['profile_one_kernel_per_call']=True
    fix=r/'host_validation_fix/verification.json'
    if fix.exists():
        data=json.loads(fix.read_text());assert data['all_88_kernel_codes_identical']
        validation['host_fix_device_code_unchanged']=True
    concurrency=r/'final_matrix_concurrency.json'
    if concurrency.exists():
        data=json.loads(concurrency.read_text());assert len(data['results'])==7
        assert all(x['two_stream_outputs_equal'] for x in data['results'])
        validation['dedicated_matrix_two_stream_cases']=[x['case'] for x in data['results']]
    (r/'validation.json').write_text(json.dumps(validation,indent=2)+'\n')
    print(json.dumps({k:{x:y for x,y in v.items() if x!='rows'} for k,v in summary.items() if isinstance(v,dict)},indent=2))
if __name__=='__main__':main()
