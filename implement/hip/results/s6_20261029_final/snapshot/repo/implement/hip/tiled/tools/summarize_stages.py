#!/usr/bin/env python3
"""Offline S5/S6 acceptance reports; never submit GPU work or select a route."""
import argparse
import csv
import json
from pathlib import Path
from artifacts import save
from fused_runner import accepted

p=argparse.ArgumentParser(description=__doc__);p.add_argument('directory',type=Path);p.add_argument('--stage',choices=['S5','S6'],required=True)
a=p.parse_args();out=a.directory;expected=list(range(33,41)) if a.stage=='S5' else list(range(1,41));rows=[];vs=[]
for i in expected:
 for mode in ('validate','time_round_1'):assert accepted(out/mode/f'case_{i:03d}.json',out)
 v=json.loads((out/'validate'/f'case_{i:03d}.json').read_text());r=json.loads((out/'time_round_1'/f'case_{i:03d}.json').read_text())
 assert v['entry']['repeat_equal'] and v['entry']['streams']==2
 assert r['entry']['warmups']==10 and r['entry']['iterations']==100 and r['entry']['extra_replay_pass']
 assert r['baseline']['warmups']==10 and r['baseline']['iterations']==100
 if a.stage=='S6':assert v['input_unchanged'] and v['output_canaries'] and (not v['conditional'] or (v['workspace_canary'] and v['invalid_workspace_rejected']))
 rows.append(r);vs.append(v)
wins=[r['case'] for r in rows if r['baseline_over_entry']>1];misses=[r['case'] for r in rows if r['baseline_over_entry']<=1]
assert len(rows)==len(expected)
profile=None
if a.stage=='S6':
 profile=json.loads((out/'profile/verification.json').read_text());assert profile['one_kernel_per_call'] and profile['calls']==40
 assert json.loads((out/'host_validation.json').read_text())['status']=='passed'
resource=json.loads((out/'resources/resources.json').read_text());assert not resource['scratch_kernels']
strict_abs=[v['case'] for v in vs if v['entry']['max_abs']>=1e-4]
strict_rel=[v['case'] for v in vs if v['entry']['max_rel']>=1e-4]
summary=dict(stage=a.stage,status='engineering_checks_passed_with_explicit_interface_conditions' if not misses else 'performance_gate_failed',
 correctness_cases=len(vs),same_round_wins=wins,same_round_misses=misses,source_and_library_snapshot='snapshot.json',
 kernel_count=resource['kernel_count'],scratch_kernels=0,external_first_counter_initialization='conditional; no explicit problem-text authorization',
 final_precision='unchanged mixed 1e-4 engineering criterion; strict abs/relative results reported separately',strict_abs_1e4_fail_cases=strict_abs,strict_rel_1e4_fail_cases=strict_rel,
 unconditional_final_acceptance=False,all40_engineering_pass=(a.stage=='S6' and not misses))
save(out/'validation.json',summary)
fields=['case','route','entry_us','baseline_us','baseline_over_entry','workspace_bytes','max_abs','max_rel']
with (out/'comparison.csv').open('w') as f:
 writer=csv.DictWriter(f,fieldnames=fields);writer.writeheader()
 for r in rows:writer.writerow(dict(case=r['case'],route=r['route'],entry_us=r['entry']['device_us'],baseline_us=r['baseline']['baseline_us'],baseline_over_entry=r['baseline_over_entry'],workspace_bytes=r['workspace_bytes'],max_abs=r['entry']['max_abs'],max_rel=r['entry']['max_rel']))
lines=[f'# {a.stage}报告：'+('极限规模与完整覆盖入口' if a.stage=='S5' else '冻结入口40case工程验收'),'', '日期：2026-10-29（Asia/Shanghai）。所有结果针对原40case规格/种子，最终golden不变。', '',
 f'本阶段{len(vs)}项正确性及生命周期通过，首轮完整10/100有{len(wins)}/{len(rows)}项超过同轮FP32拆分链。首次工作区初始化仍标为条件；不得把本报告解释为题面契约已获准或任意输入全面胜出。','',
 '## 固定入口与测量范围','',
 '- 实际入口为bmms_s5_plan/bmms_s5：收到输入元数据后在CPU选路，再启动选定唯一kernel；没有设备选路、输入值检查或计时现场择优。',
 '- 大M/N：K≥4096使用128×128/K32，其余使用64×128/K64；长K小矩阵沿用S4块内8分区，t2=false才预取；其他沿用S1。完整规则见../../tiled/README.md。',
 '- 每项10次预热、一个100次调用graph的device elapsed/100算术均值；搬运、FP32基线输入转换、分配、初始化、捕获及golden检查在计时外，kernel内部LDS搬运/部分发布/归约/复位全部计时。额外replay验证不纳入均值。',
 '- 每次运行使用共同BDF锁、amd-smi与DRM客户端审计；当前/前版本使用不同后端SONAME，实际加载路径和哈希见loaded_backends.json。源码/库/数据/环境见identity.json和snapshot.json。','',
 '|case|host route|融合µs|拆分µs|拆分/融合|workspace bytes|max abs|max rel|','|---:|---:|---:|---:|---:|---:|---:|---:|']
for r in rows:lines.append(f"|{r['case']}|{r['route']}|{r['entry']['device_us']:.3f}|{r['baseline']['baseline_us']:.3f}|{r['baseline_over_entry']:.3f}|{r['workspace_bytes']}|{r['entry']['max_abs']:.8g}|{r['entry']['max_rel']:.8g}|")
lines+=['','## 正确性、资源与回退','',
 '- 各项通过NaN输出覆盖、3次额外重复一致性、独立双stream各20次调用、计数器复位、新工作区重建。所有输入只读，未添加新case或改golden。',
 f'- 实际code object共{resource["kernel_count"]}项，scratch为0。逐kernel VGPR/SGPR/固定LDS及压缩反汇编见resources/；声明预算与实际编译资源区分记录，不以静态occupancy代替实测利用率。',
 '- 最大B64/M=N8192/K128的部分行Max工作区约128MiB，替代16GiB完整相似度矩阵；设备报告VRAM约49,136MiB。B1/M=N=K8192选定工作区约2MiB。原生拆分临时C只存在设备上。',
 '- 每阶段保留冻结前路径；S2慢LDS和S4连续K预取回退没有隐藏。Small/Split-N/Split-M未受影响的代码继续复用原版本；最终仍测真实入口，不拼接历史耗时。','',
 '## 最终接口与精度边界','',
 '工作区256-byte对齐，首次按stream顺序清零B个uint32，串行/replay内核复位，并发需独立workspace/output，失败或布局改变后重新初始化。这是显式allow条件，不能当作题面无条件授权。关闭allow回到S1无条件策略，会失去部分覆盖/胜出。',
 '最终工程检查保持 abs<=1e-4+1e-4*abs(golden)。题面列出float32及低精度档位但未明确本算子的对应方式/误差组合，报告另列严格绝对与相对1e-4，不通过放宽阈值满足性能。',
 f'本阶段严格绝对<1e-4未满足项：{strict_abs}；严格相对<1e-4未满足项：{strict_rel}。这不等同于既有混合工程检查失败，也不允许据混合检查直接宣布所有可能的题面解释均满足。','']
if a.stage=='S5':
 lines+=['## S5经验与S6交接','',
 '- 64×128/K64及128×128/K32均先在原尾块/四布局回归，再对33–40单次golden/pilot；pilot只用于预算，不当作正式性能。依据K规模固定配置后，本目录重新做完整生命周期和正式计时。32×64作为资源预算保留，未启用无必要的第三轮扫描。',
 '- S6冻结此策略，重新测实际入口40项；增加输入不变、输出/工作区边界哨兵、非法工作区拒绝、纯host80条元数据查询与逐调用单kernel追踪。诊断完整C使用64位地址索引；融合机器码若未变须留逐函数证据。',
 '- 若最终接口或精度解释仍未明确，S6只能报告条件工程验收；不能把未解决契约藏在“全面超过”标题中。','']
else:
 lines+=['## S6验收证据与稳定性','',
 '- 40项额外检查输入逐元素未改变、输出前后哨兵、工作区末尾哨兵、短/错位工作区host拒绝，实际输出/golden数组保存在validate/，可离线复核。',
 '- 80条host元数据查询覆盖40case的allow开/关；7条非法规划检查失败不修改输出，关闭allow与冻结S1一致。见host_validation.json。',
 '- 独立profile对40个实际入口调用逐ROCTX范围与HIP correlation ID核对1 launch/1 kernel，范围内无分配/拷贝/清零；profiler耗时未当正式结果。见profile/verification.json。',
 '- 临界或需复核项另跑5轮独立完整10/100，基线/入口顺序交错，逐轮均值保留于margin_recheck/；不合并500次，不取最小值，不替换首轮表。见stability.json。',
 '- S5→S6诊断C地址索引改为64位；最终融合kernel逐函数机器码一致性见fusion_code_identity.json。新增检查仅在计时外执行，未改变元数据策略或融合算法。',
 '- S6工程验证完成不代表未明确的题面首次初始化/精度解释已解决；正式无条件最终验收保持未放行。','']
(out/f'{a.stage}报告.md').write_text('\n'.join(lines))
print(json.dumps(summary,ensure_ascii=False,indent=2))
