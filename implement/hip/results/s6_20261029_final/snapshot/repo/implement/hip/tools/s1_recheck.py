#!/usr/bin/env python3
"""Five independent interleaved 10/100 rounds; all samples retained, no min picking."""
import argparse
import json
from pathlib import Path
import torch
from s1_runner import Entry, SmallRunner, ROOT, sha, save, timed, baseline_measure
from case_cache import DEFAULT_CASES, ensure_cases
from gpu_exclusive import GPUExclusive


@torch.inference_mode()
def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--build',type=Path,default=Path('/tmp/bmms-s1-build'))
    p.add_argument('--output',type=Path,required=True)
    p.add_argument('--ids',type=int,nargs='+',default=[2,25,28])
    a=p.parse_args()
    a.output.mkdir(parents=True,exist_ok=False)
    with GPUExclusive(a.output/'gpu_audit.json') as guard:
        torch.cuda.init();guard.adopt_context()
        ensure_cases(DEFAULT_CASES,a.ids)
        torch.set_float32_matmul_precision('highest');torch.backends.cuda.matmul.allow_tf32=False
        entry=Entry(a.build/'libbmms_s1.so');small=SmallRunner(a.build/'libbmms_small.so')
        save(a.output/'identity.json',dict(ids=a.ids,rounds=5,warmups=10,iterations=100,
            torch=str(torch.__version__),hip=torch.version.hip,device=str(torch.cuda.get_device_properties(0)),
            cases={str(i):sha(DEFAULT_CASES/f'case_{i:03d}.pt') for i in a.ids},
            sources={str(f):sha(f) for f in [Path(__file__),ROOT/'tools/s1_runner.py',ROOT/'tools/gpu_exclusive.py']},
            libraries={str(f):sha(f) for f in [a.build/'libbmms_s1.so',a.build/'libbmms_small.so',a.build/'split_mn/libbmms_split_mn.so']}))
        rows=[]
        for rd in range(5):
            for i in a.ids:
                guard.check()
                c=torch.load(DEFAULT_CASES/f'case_{i:03d}.pt',weights_only=True,map_location='cpu')
                s={k:c['metadata'][k] for k in ('shape','dtype','t1','t2')}
                x,z=c['x1'].cuda(),c['x2'].cuda()
                code,route,size,offset=entry.query(s,True);assert code==0 and route==0 and size==0
                workspace=lambda:entry.workspace(0,0,s['shape'][0])
                functions={'entry':lambda:timed(lambda y,w:entry.call(x,z,y,w,s,True),c['golden'],workspace,0,False),
                           'direct':lambda:timed(lambda y,w:small.call(x,z,y,s,True,8),c['golden'],workspace,0,False),
                           'baseline':lambda:baseline_measure(c,torch.device('cuda'))}
                # Rotate order to expose order/temperature effects; never pick a route.
                order=[['baseline','entry','direct'],['direct','entry','baseline'],['entry','baseline','direct'],['baseline','direct','entry'],['direct','baseline','entry']][rd]
                row=dict(case=i,round=rd+1,order=order)
                for name in order:row[name]=functions[name]()
                row['baseline_over_entry']=row['baseline']['baseline_us']/row['entry']['device_us']
                row['direct_over_entry']=row['direct']['device_us']/row['entry']['device_us']
                guard.check();save(a.output/f'case_{i:03d}_round_{rd+1}.json',row);rows.append(row)
                print(f'case {i}, round {rd+1}, baseline/entry {row["baseline_over_entry"]:.3f}, direct/entry {row["direct_over_entry"]:.3f}',flush=True)
        save(a.output/'summary.json',dict(rounds=5,cases=a.ids,all_entry_beats_baseline=all(r['baseline_over_entry']>1 for r in rows),
             policy='Every round is an independent full 10/100; do not replace initial results or select minimum.',
             by_case={str(i):dict(baseline_over_entry=[r['baseline_over_entry'] for r in rows if r['case']==i],direct_over_entry=[r['direct_over_entry'] for r in rows if r['case']==i]) for i in a.ids}))

if __name__=='__main__':main()
