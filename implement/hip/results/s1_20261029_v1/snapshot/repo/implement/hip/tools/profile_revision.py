#!/usr/bin/env python3
"""One-call profiler checks using existing cases and no performance timing."""
import argparse
import json
from pathlib import Path
import torch
from case_cache import ensure_cases, DEFAULT_CASES
from experiment_small import Runner as SmallRunner
from experiment_split_b import Runner as SplitRunner, check
ROOT=Path(__file__).resolve().parents[1]
@torch.inference_mode()
def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--library',type=Path,required=True)
    p.add_argument('--cases',type=Path,default=DEFAULT_CASES)
    p.add_argument('--output',type=Path,required=True)
    a=p.parse_args();ensure_cases(a.cases,[1,2,3,4,17,25,30]);small,split=SmallRunner(a.library),SplitRunner(a.library)
    jobs=[('small',i,True,8) for i in (1,2,3,4,17,30,25)]
    jobs += [('small',25,False,32)]
    jobs += [('split',i,True,8) for i in (1,2,3,4)]
    rows=[]
    for family,i,matrix,lk in jobs:
        c=torch.load(a.cases/f'case_{i:03d}.pt',weights_only=True,map_location='cpu');s=c['metadata']
        x,z=c['x1'].cuda(),c['x2'].cuda();y=torch.empty(s['shape'][0],device='cuda')
        torch.cuda.synchronize()
        if family=='small':small.call(x,z,y,s,matrix,lk)
        else:split.call(x,z,y,s,(4,2,64))
        torch.cuda.synchronize();stats=check(y,c['golden'])
        rows.append(dict(family=family,case=i,matrix=matrix,**stats))
    # Invalid plans must fail without a kernel launch.
    assert small.fn(None,None,None,1,17,33,40,0,0,0,1,8,None)!=0
    assert split.fn(None,None,None,1,17,33,40,0,0,0,1,3,32,None)!=0
    assert split.fn(None,None,None,1,17,33,40,0,0,0,8,8,32,None)!=0
    a.output.parent.mkdir(parents=True,exist_ok=True)
    a.output.write_text(json.dumps(dict(operator_calls=len(jobs),small_calls=8,split_calls=4,invalid_calls=3,golden_checks=rows),indent=2)+'\n')
    print('12 one-call golden checks and 3 invalid-argument checks passed')
if __name__=='__main__':main()
