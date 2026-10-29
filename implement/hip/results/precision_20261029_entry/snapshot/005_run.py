#!/usr/bin/env python3
"""Strict accurate-entry validation, bounded pilot and formal 10/100."""
import argparse,json,sys,uuid,gc,shutil
from pathlib import Path
import torch
HIP=Path(__file__).resolve().parents[2];sys.path.insert(0,str(HIP/'tiled/tools'));sys.path.insert(0,str(HIP/'tools'));sys.path.insert(0,str(Path(__file__).parent))
from fused_runner import NamedEntry,save,sha,lifecycle,timed,accepted
from probe import strict
from case_cache import DEFAULT_CASES,ensure_cases
from gpu_exclusive import GPUExclusive
from benchmark_baseline import measure as baseline_measure

@torch.inference_mode()
def main():
 p=argparse.ArgumentParser();p.add_argument('--build',type=Path,default=Path('/tmp/bmms-precision-final'));p.add_argument('--output',type=Path,required=True);p.add_argument('--mode',choices=['validate','pilot','time'],required=True);p.add_argument('--ids',type=int,nargs='+',default=list(range(1,41)));a=p.parse_args();out=a.output;out.mkdir(parents=True,exist_ok=True);attempt=uuid.uuid4().hex
 libs=[a.build/f'lib{x}.so' for x in ['bmms_accurate','bmms_precision','bmms_refine']]+[Path('/tmp/bmms-tiled-s6-build/libbmms_s5.so'),Path('/tmp/bmms-tiled-s6-build/libbmms_tiled.so')]
 files=[*sorted((HIP/'precision/src').glob('*.hip')),*sorted((HIP/'precision/tools').glob('*.py')),HIP/'precision/CMakeLists.txt',a.build/'CMakeCache.txt',HIP/'tools/gpu_exclusive.py',HIP/'tools/benchmark_baseline.py',HIP/'tools/s1_runner.py',HIP/'tiled/tools/fused_runner.py']
 with GPUExclusive(out/'audits'/f'{attempt}.json') as guard:
  torch.cuda.init();guard.adopt_context();ensure_cases(DEFAULT_CASES,a.ids)
  torch.set_float32_matmul_precision('highest');torch.backends.cuda.matmul.allow_tf32=False
  identity=dict(ids=a.ids,sources={str(f):sha(f) for f in files},libraries={str(f):sha(f) for f in libs},cases={str(i):sha(DEFAULT_CASES/f'case_{i:03d}.pt') for i in a.ids},torch=str(torch.__version__),hip=torch.version.hip,device=str(torch.cuda.get_device_properties(0)),criterion='abs<1e-4 AND rel<1e-4; no mixed criterion',warmups=10,iterations=100)
  if (out/'identity.json').exists() and json.loads((out/'identity.json').read_text())!=identity:raise RuntimeError('Identity changed: new directory required')
  save(out/'identity.json',identity)
  if not (out/'snapshot').exists():
   (out/'snapshot').mkdir()
   for idx,f in enumerate(files+libs):shutil.copy2(f,out/'snapshot'/f'{idx:03d}_{f.name}')
  entry=NamedEntry(libs[0],'bmms_accurate');old=NamedEntry(libs[3],'bmms_s5')
  mapped=set(line.split()[-1] for line in Path('/proc/self/maps').read_text().splitlines() if 'libbmms_' in line and Path(line.split()[-1]).is_file());save(out/'mapped_libraries.json',{p:sha(p) for p in sorted(mapped)})
  for i in a.ids:
   dest=out/a.mode/f'case_{i:03d}.json'
   if accepted(dest,out):continue
   if a.mode=='time' and not accepted(out/'validate'/f'case_{i:03d}.json',out):raise RuntimeError('Strict validate first')
   guard.check();c=torch.load(DEFAULT_CASES/f'case_{i:03d}.pt',weights_only=True,map_location='cpu');s={k:c['metadata'][k] for k in ('shape','dtype','t1','t2')};b=s['shape'][0];x,z=c['x1'].cuda(),c['x2'].cuda();code,route,size,off=entry.query(s,True);assert code==0
   ws=lambda:entry.workspace(size,off,b);call=lambda y,w:entry.call(x,z,y,w,s,True)
   y=torch.full((b,),float('nan'),device='cuda');w=ws();start,end=torch.cuda.Event(enable_timing=True),torch.cuda.Event(enable_timing=True)
   start.record();call(y,w);end.record();end.synchronize();stats=strict(y.cpu(),c['golden']);assert stats['passed'],(i,stats)
   row=dict(status='complete',attempt=attempt,case=i,route=route,metadata=s,workspace_bytes=size,strict=stats)
   if a.mode=='validate':
    row['lifecycle']=lifecycle(call,ws,x,z,c['golden'],size,off,route>=2)
    assert torch.equal(x.cpu(),c['x1']) and torch.equal(z.cpu(),c['x2']);row['input_unchanged']=True
   elif a.mode=='pilot':row.update(device_ms=start.elapsed_time(end),formal_performance=False)
   else:
    for _ in range(10):call(y,w)
    torch.cuda.synchronize();assert strict(y.cpu(),c['golden'])['passed']
    graph=torch.cuda.CUDAGraph()
    with torch.cuda.graph(graph):
     for _ in range(100):call(y,w)
    t0,t1=torch.cuda.Event(enable_timing=True),torch.cuda.Event(enable_timing=True);t0.record();graph.replay();t1.record();t1.synchronize()
    row['entry']=dict(device_us=t0.elapsed_time(t1)*10,total_device_ms=t0.elapsed_time(t1),warmups=10,iterations=100)
    row['strict_after_timing']=strict(y.cpu(),c['golden']);assert row['strict_after_timing']['passed'];graph.replay();torch.cuda.synchronize();assert strict(y.cpu(),c['golden'])['passed']
    row['baseline']=baseline_measure(c,torch.device('cuda'));oc,orr,os,oo=old.query(s,True);assert oc==0
    row['s6']=timed(lambda yy,ww:old.call(x,z,yy,ww,s,True),c['golden'],lambda:old.workspace(os,oo,b),oo,orr>=2)
    row['baseline_over_entry']=row['baseline']['baseline_us']/row['entry']['device_us'];row['s6_over_entry']=row['s6']['device_us']/row['entry']['device_us']
    del graph
   guard.check();save(dest,row);print(a.mode,i,route,'strict',stats['max_abs'],('ms '+str(row['device_ms']) if a.mode=='pilot' else 'speedup '+str(row['baseline_over_entry']) if a.mode=='time' else 'passed'),flush=True)
   del c,x,z,y,w,call,ws;gc.collect();torch.cuda.empty_cache()
 save(out/f'{a.mode}_summary.json',dict(status='complete',cases=a.ids,criterion=identity['criterion']))
if __name__=='__main__':main()
