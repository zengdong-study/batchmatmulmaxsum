#!/usr/bin/env python3
"""Diagnostic-only rowMax/FP64-reference error ledger on original cases."""
import argparse,json,sys
from pathlib import Path
import torch
import numpy as np
HIP=Path(__file__).resolve().parents[2];sys.path.insert(0,str(HIP/'tiled/tools'));sys.path.insert(0,str(HIP/'tools'))
from fused_runner import NamedEntry,save,sha
from case_cache import DEFAULT_CASES,ensure_cases
from gpu_exclusive import GPUExclusive


def strict(y,g):
 d=(y.double()-g.double()).abs();rel=d/g.double().abs().clamp_min(1e-300)
 return dict(output=y.tolist(),max_abs=d.max().item(),max_rel=rel.max().item(),passed=bool(((d<1e-4)&(rel<1e-4)).all()))


def old_sum(row,threads):
 b,m=row.shape;t=torch.zeros((b,threads),dtype=torch.float32)
 for start in range(0,m,threads):t[:,:min(threads,m-start)]+=row[:,start:start+threads]
 waves=t.reshape(b,threads//32,32)
 for d in (16,8,4,2,1):
  new=waves.clone();new[:,:,:32-d]=waves[:,:,:32-d]+waves[:,:,d:];waves=new
 v=torch.zeros((b,32));v[:,:threads//32]=waves[:,:,0]
 for d in (16,8,4,2,1):
  new=v.clone();new[:,:32-d]=v[:,:32-d]+v[:,d:];v=new
 return v[:,0]


@torch.inference_mode()
def main():
 p=argparse.ArgumentParser(description=__doc__);p.add_argument('--ids',type=int,nargs='+',default=[17,21,33,34,37,38]);p.add_argument('--output',type=Path,required=True);a=p.parse_args();a.output.mkdir(parents=True,exist_ok=False)
 with GPUExclusive(a.output/'gpu_audit.json') as guard:
  torch.cuda.init();guard.adopt_context();ensure_cases(DEFAULT_CASES,a.ids)
  entry=NamedEntry(Path('/tmp/bmms-tiled-s6-build/libbmms_s5.so'),'bmms_s5')
  save(a.output/'identity.json',dict(ids=a.ids,script_sha256=sha(Path(__file__)),guard_sha256=sha(HIP/'tools/gpu_exclusive.py'),library_sha256=sha(Path('/tmp/bmms-tiled-s6-build/libbmms_tiled.so')),cases={str(i):sha(DEFAULT_CASES/f'case_{i:03d}.pt') for i in a.ids},torch=str(torch.__version__),device=str(torch.cuda.get_device_properties(0)),diagnostic_only=True))
  for i in a.ids:
   guard.check();c=torch.load(DEFAULT_CASES/f'case_{i:03d}.pt',weights_only=True,map_location='cpu');s={k:c['metadata'][k] for k in ('shape','dtype','t1','t2')};b,m,n,k=s['shape'];x,z=c['x1'].cuda(),c['x2'].cuda();golden=c['golden']
   code,route,size,off=entry.query(s,True);assert code==0;y=torch.empty(b,device='cuda');w=entry.workspace(size,off,b);entry.call(x,z,y,w,s,True);torch.cuda.synchronize()
   tm,tn,threads=(16,32,256) if route==5 else (128,128,1024) if route==6 else (64,128,512)
   mt,nt=(m+tm-1)//tm,(n+tn-1)//tn
   partial=w[:b*mt*nt*tm*4].cpu().view(torch.float32).reshape(b,mt,nt,tm)
   approximate=partial.permute(0,1,3,2).reshape(b,mt*tm,nt)[:,:m].amax(-1)
   assert torch.equal(old_sum(approximate,threads),y.cpu()),'CPU final-Sum emulator differs'
   aa=x.transpose(1,2) if s['t1'] else x;bb=z.transpose(1,2) if s['t2'] else z
   ref=torch.full((b,m),-torch.inf,dtype=torch.float64,device='cuda');arg=torch.full((b,m),-1,dtype=torch.int64,device='cuda')
   # Stream exact reference in N; retain only row maxima, not full C.
   ad=aa.double()
   for start in range(0,n,128):
    dot=torch.bmm(ad,bb[:,:,start:start+128].double());v,idx=dot.max(-1);take=v>ref;arg=torch.where(take,idx+start,arg);ref=torch.maximum(ref,v)
   exact=ref.cpu();torch.testing.assert_close(exact.sum(-1).float(),golden,rtol=0,atol=0)
   result=dict(case=i,metadata=s,route=route,threads=threads,current=strict(y.cpu(),golden),current_rows_fp64_sum=strict(approximate.double().sum(-1).float(),golden),exact_rows_old_fp32_sum=strict(old_sum(exact.float(),threads),golden),exact_rows_fp64_sum=strict(exact.sum(-1).float(),golden),row_max_abs=(approximate.double()-exact).abs().max().item(),row_signed_error_sum=(approximate.double()-exact).sum(-1).tolist(),current_sum_emulator_equal=True)
   save(a.output/f'case_{i:03d}.json',result)
   np.savez_compressed(a.output/f'rows_{i:03d}.npz',approximate_row_max=approximate.numpy(),reference_row_max=exact.numpy(),reference_argmax=arg.cpu().numpy())
   guard.check();print(i,'current',result['current']['max_abs'],'double Sum',result['current_rows_fp64_sum']['max_abs'],'exact rows oldSum',result['exact_rows_old_fp32_sum']['max_abs'],flush=True)
   del c,x,z,y,w,aa,bb,ad,dot,ref,arg;torch.cuda.empty_cache()
if __name__=='__main__':main()
