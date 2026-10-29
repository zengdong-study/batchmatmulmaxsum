#!/usr/bin/env python3
import argparse,json,sys
from pathlib import Path
import torch
HIP=Path(__file__).resolve().parents[1];sys.path.insert(0,str(HIP/'tiled/tools'));sys.path.insert(0,str(HIP/'tools'));sys.path.insert(0,str(HIP/'precision/tools'))
from fused_runner import CandidateEntry,sha,save
from probe import strict
from case_cache import DEFAULT_CASES
from gpu_exclusive import GPUExclusive
from benchmark_baseline import measure
p=argparse.ArgumentParser();p.add_argument('--library',type=Path,required=True);p.add_argument('--validation',type=Path,required=True);p.add_argument('--ids',nargs='+',type=int,required=True);p.add_argument('--output',type=Path,required=True);p.add_argument('--formal',action='store_true');p.add_argument('--config',type=int);a=p.parse_args();a.output.mkdir(parents=True,exist_ok=False)
identity=json.loads((a.validation/'identity.json').read_text());assert sha(a.library)==identity['library_sha256']
with GPUExclusive(a.output/'gpu_audit.json') as guard:
 torch.cuda.init();guard.adopt_context();torch.set_float32_matmul_precision('highest');torch.backends.cuda.matmul.allow_tf32=False
 for i in a.ids:
  assert json.loads((a.validation/f'case_{i:03d}.json').read_text())['passed']
  c=torch.load(DEFAULT_CASES/f'case_{i:03d}.pt',weights_only=True);s=c['metadata'];b,m,n,k=s['shape'];cfg=a.config if a.config is not None else 14 if m>=1024 and k>=4096 else 13 if m>=1024 else 5 if s['t2'] else 6
  r=CandidateEntry(a.library,cfg);_,_,size,off=r.query(s,True);x,z=c['x1'].cuda(),c['x2'].cuda();y=torch.empty(b,device='cuda');w=r.workspace(size,off,b)
  for _ in range(10):r.call(x,z,y,w,s,True)
  torch.cuda.synchronize();assert strict(y.cpu(),c['golden'])['passed'];count=100 if a.formal else 1;graph=None
  if a.formal:
   graph=torch.cuda.CUDAGraph()
   with torch.cuda.graph(graph):
    for _ in range(100):r.call(x,z,y,w,s,True)
  start,end=torch.cuda.Event(enable_timing=True),torch.cuda.Event(enable_timing=True);guard.check();start.record()
  if graph:graph.replay()
  else:r.call(x,z,y,w,s,True)
  end.record();end.synchronize();stats=strict(y.cpu(),c['golden']);assert stats['passed']
  row=dict(case=i,mean_ms=start.elapsed_time(end)/count,warmups=10,iterations=count,formal=a.formal,strict=stats,library_sha256=sha(a.library))
  if a.formal:row['baseline']=measure(c,torch.device('cuda'));row['speedup']=row['baseline']['baseline_us']/(row['mean_ms']*1000)
  guard.check();save(a.output/f'case_{i:03d}.json',row);print(i,row['mean_ms'],'ms',row.get('speedup','pilot'),flush=True)
