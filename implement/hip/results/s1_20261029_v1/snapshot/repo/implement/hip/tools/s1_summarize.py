#!/usr/bin/env python3
"""Audit and summarize fixed S1 results without submitting GPU work."""
import argparse
import csv
import json
from pathlib import Path
from s1_runner import accepted, save, sha


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('directory',type=Path);a=p.parse_args();out=a.directory
    identity=json.loads((out/'identity.json').read_text());ids=identity['ids'];assert set(ids)==set(range(1,33))
    rows=[]
    for i in sorted(ids):
        for mode in ('validate','time'):assert accepted(out/mode/f'case_{i:03d}.json',out)
        v=json.loads((out/'validate'/f'case_{i:03d}.json').read_text());r=json.loads((out/'time'/f'case_{i:03d}.json').read_text())
        assert v['selected_original_equal'] and v['entry']['streams']==2 and v['entry']['repeat_equal']
        assert v['entry']['poison_overwritten'] and v['control']['repeat_equal']
        for path in ('entry','control','baseline'):
            assert r[path]['warmups']==10 and r[path]['iterations']==100
        assert r['entry']['extra_replay_pass']
        if r['conditional']:assert v['entry']['counter_reset']
        rows.append(r)
    resources=json.loads((out/'resources/resources.json').read_text())
    assert all(r['all_kernel_code_identical'] and not r['scratch_kernels'] for r in resources.values())
    profile=json.loads((out/'profile/verification.json').read_text());assert profile['one_kernel_per_call']
    recheck=json.loads((out/'recheck/summary.json').read_text())
    assert json.loads((out/'recheck/gpu_audit.json').read_text())['valid']
    assert recheck['all_entry_beats_baseline']
    for pth in (out/'recheck').glob('case_*_round_*.json'):
        r=json.loads(pth.read_text())
        for k in ('entry','direct','baseline'):assert r[k]['warmups']==10 and r[k]['iterations']==100
    wins=[r['case'] for r in rows if r['baseline_over_entry']>1]
    misses=[r['case'] for r in rows if r['baseline_over_entry']<=1]
    previous_winners=list(range(1,9))+[25,26,28,29,31]
    assert all(r['baseline_over_entry']>1 for r in rows if r['case'] in previous_winners)
    summary=dict(stage='S1',status='complete_with_conditional_routes_and_recorded_limits',actual_entry_cases=32,
                 golden_passed=32,lifecycle_passed=32,selected_original_equal=32,baseline_wins=wins,
                 baseline_misses=misses,previous_winners_preserved_against_current_baseline=previous_winners,
                 conditional_cases=[r['case'] for r in rows if r['conditional']],unmeasured_cases=list(range(33,41)),
                 one_kernel_per_call=profile['one_kernel_per_call'],profiled_successful_calls=profile['successful_calls'],
                 identical_device_kernels=sum(r['kernels'] for r in resources.values()),s2_release=True,
                 all_40case_acceptance=False,workspace_initialization_contract_unresolved=True,
                 precision_rule='existing provisional 1e-4 + 1e-4*abs(golden), unchanged',
                 warning='One formal round per case; five additional independent rounds only for Small 2/25/28. No blanket multi-round stability or unconditional 32/40-case claim.')
    save(out/'validation.json',summary)
    with (out/'comparison.csv').open('w') as f:
        fields=['case','route','conditional','baseline_us','entry_us','control_us','baseline_over_entry','control_over_entry','workspace_bytes']
        writer=csv.DictWriter(f,fieldnames=fields);writer.writeheader()
        for r in rows:writer.writerow(dict(case=r['case'],route=r['route'],conditional=r['conditional'],baseline_us=r['baseline']['baseline_us'],entry_us=r['entry']['device_us'],control_us=r['control']['device_us'],baseline_over_entry=r['baseline_over_entry'],control_over_entry=r['control_over_entry'],workspace_bytes=r['workspace_bytes']))
    lines=['# S1阶段报告：host元数据入口与统一对照','',
           '日期：2026-10-29（Asia/Shanghai）。固定策略S1-v1已完成本阶段32case验证与对照，可进入S2。Split-M/N继续作为依赖首次外部初始化的条件路径；并非无条件最终入口验收，未宣称40case全面胜出。','',
           '## 结果与边界','',
           '- 实际统一入口32/32通过原golden混合误差标准、NaN输出覆盖、额外3次重复一致性、双stream独立workspace/output各20次调用；32项均与直接调用所选原实现逐位一致。',
           '- 每项完整10次预热、100次device执行均值；同轮FP32 bmm→amax→sum基线、原路径对照均保留。输入搬运/转换、分配、初始化和捕获在计时外，kernel内归约及计数器复位在计时内。未测host端到端延迟。',
           f'- 当前入口23/32快于同轮拆分基线；未胜出项为{misses}。此前Small胜出的13项本轮均仍超过基线。不得把23项解释为多轮稳定23项或40项覆盖。',
           '- Split-N原case9–16全部胜出（约1.135–2.085倍）；N=1的27/32约1.566/2.480倍。长K的17–24/30仍慢，交给S2，不以原生多kernel回退替代融合入口。',
           '- 33–36返回NotImplemented；37–40保留Split-B元数据规则，仅完成host规划核对，本轮未重新跑极限规模算子或计时。',
           '- 所有GPU运行均通过共同按BDF锁、管理接口与DRM客户端审计；4次正式验证/计时运行均有效，另有独立profile和5轮复核审计。代表版本目录保留首轮结果和快照，没有拼入本版逐case表。','',
           '## 输入到路径：CPU决策','',
           '入口接收实际B/M/N/K、dtype及布局标志，在host执行固定条件判断，然后调用所选底层实现。没有GPU选路kernel、输入内容判断、case编号或在线计时择优。测试工具在调用时剥离ID/seed/golden字段。纯host的bmms_s1_plan可在收到输入元数据时查询工作区；bmms_s1在提交时使用同一规则。Graph捕获固定该次输入的选择，换元数据需重建规划/graph。','',
           '优先级：显式允许初始化且B4/M32/N1024/K128→Split-N g64/w2；显式允许初始化且N=1/M>128→Split-M g64/w4；B≤8/M≤128/N≤257→Small Matrix；前述中等形状未允许初始化→Split-B gb1/w8/n32；B64/M8192/N8192/K128→Split-B gb1/w4/n64；其余返回NotImplemented。底层仍验证合法范围。','',
           'allowInitializedWorkspace=0时，27/32没有无条件可用路径；Small/Split-B不需要外部计数器初始化。条件路径首次初始化B个uint32、256-byte对齐、同stream顺序、独立并发工作区、失败/布局变更后重新初始化等契约见[S1入口说明](../../S1入口说明.md)。不能据此推断最终评测已允许该契约。','',
           '## 逐case原始均值','',
           '单位μs；基线/入口>1表示超过拆分链。Small对照为原Matrix；Split-N对照为原Split-B gb1/w8/n32；Split-M对照为g16/w1。所有参数预先固定，未按这张表改路。','',
           '|case|host路径|条件|拆分基线|实际入口|原路径对照|基线/入口|对照/入口|workspace bytes|',
           '|---:|---|---|---:|---:|---:|---:|---:|---:|']
    names={0:'Small Matrix',1:'Split-B',2:'Split-N g64/w2',3:'Split-M g64/w4'}
    for r in rows:
        lines.append(f"|{r['case']}|{names[r['route']]}|{'是' if r['conditional'] else '否'}|{r['baseline']['baseline_us']:.3f}|{r['entry']['device_us']:.3f}|{r['control']['device_us']:.3f}|{r['baseline_over_entry']:.3f}|{r['control_over_entry']:.3f}|{r['workspace_bytes']}|")
    lines+=['','## 原胜出项回退与5轮复核','',
            '首轮对原直接调用的均值存在回退，不能隐藏。尽管底层kernel逐函数机器码完全相同，实际入口的计时仍单独报告。原胜出项逐项如下；正值表示首轮入口更慢，不替换或删掉该轮。','',
            '|case|首轮相对直接调用变化|是否仍超过同轮拆分基线|','|---:|---:|---|']
    for r in rows:
        if r['case'] in previous_winners:lines.append(f"|{r['case']}|{(1/r['control_over_entry']-1)*100:+.2f}%|是|")
    lines+=['','对case2/25/28各追加5轮独立完整10/100，轮间轮换baseline/entry/direct顺序，保存15项原始结果，未取最小值。全部轮次入口仍超过拆分基线；入口与直接调用的快慢关系随顺序翻转，尚不能归因为稳定的入口性能退化，也未证明入口本身有加速。首轮表维持不变。','',
            '|case|5轮 基线/入口（按轮次）|5轮 直接/入口（按轮次）|','|---:|---|---|']
    for i,r in recheck['by_case'].items():lines.append('|'+i+'|'+', '.join(f'{v:.3f}' for v in r['baseline_over_entry'])+'|'+', '.join(f'{v:.3f}' for v in r['direct_over_entry'])+'|')
    lines+=['','## 单kernel、资源和回退快照','',
            '- 独立rocprofv3追踪：4条host路径上6次成功调用，逐ROCTX范围核验为1 launch API对应1 kernel；4次非法/不支持调用没有launch。调用范围内没有分配、复制或清零API。外部准备copy/fill kernel均在范围外。见[单kernel核验](profile/verification.json)。',
            '- 从本次实际库提取88个Small/Split-B及16个Split-M/N kernel，与冻结前版本104/104机器码SHA一致；全部private scratch为0。保留code object metadata和压缩反汇编；没有把静态资源或occupancy当实测利用率。见[资源表](resources/resources.json)。',
            '- 原C ABI/源码保持可用，新目标默认OFF。snapshot保存本轮源码、工具、三份动态库、构建配置及SHA；可回到冻结前Small/Split-B/独立Split-MN接口，不需要覆写历史结果。',
            '- 首次有限运行仅完成6项后正常退出，再以同一身份继续，已完成项未重测；32case验证与计时各分两次完成。中断/干扰且无有效审计的项目禁止复用。','',
            '## S2交接','',
            'S1放行仅表示固定入口、接口标签、回退和本阶段结果可复核；不表示长K或极限case已解决。下一步优先原case17–24/30，建立少量长K GEMM主体/CTA任务与复用候选；先代表golden和资源预算，再正式10/100。保留本版入口为对照；初始化契约未明确前，Split-M/N仍条件化。S2本次未启动。','',
            '复现：见[运行命令](commands.sh)、[身份](identity.json)、[验证汇总](validation.json)、[逐case CSV](comparison.csv)。可用 tools/s1_summarize.py 离线重建本报告，不启动GPU。','']
    (out/'S1报告.md').write_text('\n'.join(lines))
    print(json.dumps({k:summary[k] for k in ['status','actual_entry_cases','baseline_wins','baseline_misses','s2_release']},indent=2))

if __name__=='__main__':main()
