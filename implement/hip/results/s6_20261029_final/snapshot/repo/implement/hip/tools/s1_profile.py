#!/usr/bin/env python3
"""Profile successful and rejected calls of the fixed host S1 entry, never time them."""
import argparse
import ctypes
import json
from pathlib import Path
import torch
from s1_runner import Entry, ROOT, save, sha, check, counters
from case_cache import DEFAULT_CASES, ensure_cases
from gpu_exclusive import GPUExclusive


@torch.inference_mode()
def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--build',type=Path,default=Path('/tmp/bmms-s1-build'))
    p.add_argument('--output',type=Path,required=True)
    a=p.parse_args()
    jobs=[(1,False),(9,False),(9,True),(27,True),(32,True),(25,True)]
    with GPUExclusive(a.output/'gpu_audit.json') as guard:
        torch.cuda.init();guard.adopt_context()
        ensure_cases(DEFAULT_CASES,sorted({i for i,_ in jobs}))
        entry=Entry(a.build/'libbmms_s1.so')
        roctx=ctypes.CDLL('/opt/rocm/lib/librocprofiler-sdk-roctx.so')
        roctx.roctxRangePushA.argtypes=[ctypes.c_char_p];roctx.roctxRangePushA.restype=ctypes.c_int
        roctx.roctxRangePop.argtypes=[];roctx.roctxRangePop.restype=ctypes.c_int
        rows=[]
        for idx,(i,allow) in enumerate(jobs):
            c=torch.load(DEFAULT_CASES/f'case_{i:03d}.pt',weights_only=True,map_location='cpu')
            s={k:c['metadata'][k] for k in ('shape','dtype','t1','t2')}
            x,z=c['x1'].cuda(),c['x2'].cuda();y=torch.full_like(c['golden'],float('nan'),device='cuda')
            code,route,size,off=entry.query(s,allow);assert code==0
            w=entry.workspace(size,off,s['shape'][0]);torch.cuda.synchronize();guard.check()
            label=f'S1/call_{idx}/route_{route}'
            roctx.roctxRangePushA(label.encode())
            entry.call(x,z,y,w,s,allow);torch.cuda.synchronize()
            roctx.roctxRangePop()
            stats=check(y,c['golden'])
            if route>=2:counters(w,off,s['shape'][0])
            rows.append(dict(case=i,allow=allow,route=route,label=label,**stats))
        # These return on the host, before device work. Workspace rejection is
        # tested using valid device input/output pointers from the last job.
        invalid=[(None,None,None,None,0,1,1,1,32,0,0,0,0,None),
                 (x.data_ptr(),z.data_ptr(),y.data_ptr(),None,0,4,32,1024,128,0,0,0,1,None),
                 (None,None,None,None,0,3,257,1,72,0,0,0,0,None),
                 (None,None,None,None,0,1,8192,8192,8192,0,0,0,1,None)]
        codes=[]
        roctx.roctxRangePushA(b'S1/rejected')
        for args in invalid:
            code=entry.fn(*args);assert code in (1,2);codes.append(code)
        torch.cuda.synchronize();roctx.roctxRangePop();guard.check()
        save(a.output/'calls.json',dict(operator_calls=len(jobs),calls=rows,rejected_calls=len(invalid),rejected_status=codes,
             libraries={str(x):sha(x) for x in [a.build/'libbmms_s1.so',a.build/'libbmms_small.so',a.build/'split_mn/libbmms_split_mn.so']},
             sources={str(x):sha(x) for x in [Path(__file__),ROOT/'tools/s1_runner.py',ROOT/'tools/gpu_exclusive.py']},
             note='Profiling only, not formal timing; all path choices execute on host.'))

if __name__=='__main__':main()
