#!/usr/bin/env python3
"""Strict precision validation; failed candidates never enter performance scans."""
import argparse,json,sys,shutil
from pathlib import Path
import torch
HIP=Path(__file__).resolve().parents[2];sys.path.insert(0,str(HIP/'tiled/tools'));sys.path.insert(0,str(HIP/'tools'));sys.path.insert(0,str(Path(__file__).parent))
from fused_runner import CandidateEntry,save,sha,lifecycle
from probe import strict
from case_cache import DEFAULT_CASES,ensure_cases
from gpu_exclusive import GPUExclusive
@torch.inference_mode()
def main():
 p=argparse.ArgumentParser();p.add_argument('--library',type=Path,required=True);p.add_argument('--output',type=Path,required=True);p.add_argument('--ids',nargs='+',type=int,default=[17,21,33,34,37,38]);a=p.parse_args();a.output.mkdir(parents=True,exist_ok=False)
 src=HIP/'precision';snap=a.output/'snapshot';snap.mkdir()
 for f in [src/'src/precision.hip',src/'CMakeLists.txt',Path(__file__),a.library]:shutil.copy2(f,snap/f.name)
 with GPUExclusive(a.output/'gpu_audit.json') as guard:
  torch.cuda.init();guard.adopt_context();ensure_cases(DEFAULT_CASES,a.ids)
  save(a.output/'identity.json',dict(library=str(a.library),library_sha256=sha(a.library),sources={str(f):sha(f) for f in [src/'src/precision.hip',Path(__file__),HIP/'tools/gpu_exclusive.py']},ids=a.ids,torch=str(torch.__version__),device=str(torch.cuda.get_device_properties(0)),cases={str(i):sha(DEFAULT_CASES/f'case_{i:03d}.pt') for i in a.ids}))
  rows=[]
  for i in a.ids:
   guard.check();c=torch.load(DEFAULT_CASES/f'case_{i:03d}.pt',weights_only=True,map_location='cpu');s={k:c['metadata'][k] for k in ('shape','dtype','t1','t2')};b,m,n,k=s['shape'];cfg=(5 if s['t2'] else 6) if m<1024 else 14 if k>=4096 else 13
   entry=CandidateEntry(a.library,cfg);code,_,size,off=entry.query(s,True);assert code==0
   x,z=c['x1'].cuda(),c['x2'].cuda();y=torch.full((b,),float('nan'),device='cuda');w=entry.workspace(size,off,b);entry.call(x,z,y,w,s,True);torch.cuda.synchronize();r=dict(case=i,config=cfg,**strict(y.cpu(),c['golden']))
   if r['passed']:r['lifecycle']=lifecycle(lambda yy,ww:entry.call(x,z,yy,ww,s,True),lambda:entry.workspace(size,off,b),x,z,c['golden'],size,off,True)
   guard.check();save(a.output/f'case_{i:03d}.json',r);rows.append(r);print(i,r['max_abs'],r['passed'],flush=True)
   del c,x,z,y,w;torch.cuda.empty_cache()
  save(a.output/'summary.json',dict(strict_pass=[r['case'] for r in rows if r['passed']],strict_fail=[r['case'] for r in rows if not r['passed']],performance_run=False))
if __name__=='__main__':main()
