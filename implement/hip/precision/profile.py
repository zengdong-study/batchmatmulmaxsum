#!/usr/bin/env python3
import argparse,sys,ctypes,uuid
from pathlib import Path
import torch
HIP=Path(__file__).resolve().parents[1];sys.path.insert(0,str(HIP/'tiled/tools'));sys.path.insert(0,str(HIP/'tools'));sys.path.insert(0,str(HIP/'precision/tools'))
from fused_runner import NamedEntry,save,sha
from probe import strict
from case_cache import DEFAULT_CASES
from gpu_exclusive import GPUExclusive
p=argparse.ArgumentParser();p.add_argument('--output',type=Path,required=True);a=p.parse_args();attempt=uuid.uuid4().hex
with GPUExclusive(a.output/'audits'/f'{attempt}.json') as guard:
 torch.cuda.init();guard.adopt_context();entry=NamedEntry(Path('/tmp/bmms-precision-final/libbmms_accurate.so'),'bmms_accurate');roctx=ctypes.CDLL('/opt/rocm/lib/librocprofiler-sdk-roctx.so');roctx.roctxRangePushA.argtypes=[ctypes.c_char_p];roctx.roctxRangePushA.restype=ctypes.c_int;roctx.roctxRangePop.argtypes=[]
 for i in range(1,41):
  guard.check();c=torch.load(DEFAULT_CASES/f'case_{i:03d}.pt',weights_only=True);s=c['metadata'];b=s['shape'][0];x,z=c['x1'].cuda(),c['x2'].cuda();code,r,size,off=entry.query(s,True);assert code==0;y=torch.full((b,),float('nan'),device='cuda');w=entry.workspace(size,off,b);torch.cuda.synchronize();roctx.roctxRangePushA(f'STAGE/case_{i}/route_{r}'.encode());entry.call(x,z,y,w,s,True);torch.cuda.synchronize();roctx.roctxRangePop();stats=strict(y.cpu(),c['golden']);assert stats['passed'];guard.check();save(a.output/'profile'/f'case_{i:03d}.json',dict(case=i,route=r,attempt=attempt,strict=stats));print(i,'strict and one-call trace completed',flush=True)
 save(a.output/'identity.json',dict(script_sha256=sha(Path(__file__)),libraries={str(p):sha(p) for p in Path('/tmp/bmms-precision-final').glob('libbmms_*.so')},scope='original40 one call each; no profiler durations used as formal results'))
