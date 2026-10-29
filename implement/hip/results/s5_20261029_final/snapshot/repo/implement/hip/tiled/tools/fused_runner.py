#!/usr/bin/env python3
"""Audited staged fused-entry validation, pilot, profile, and strict 10/100."""
import argparse
import ctypes
import gc
import json
from pathlib import Path
import sys
import time
import uuid
import torch
TILED=Path(__file__).resolve().parents[1];HIP=TILED.parent
sys.path.insert(0,str(HIP/'tools'))
from s1_runner import Entry, lifecycle, timed, accepted, save, sha, check, counters
from case_cache import DEFAULT_CASES, ensure_cases
from gpu_exclusive import GPUExclusive
from benchmark_baseline import measure as baseline_measure
from s0_native import loaded_libraries


class NamedEntry(Entry):
    def __init__(self,path,symbol):
        self.lib=ctypes.CDLL(str(path.resolve()))
        self.plan=getattr(self.lib,symbol+'_plan')
        self.plan.argtypes=[ctypes.c_int]*8+[ctypes.POINTER(ctypes.c_int)]+[ctypes.POINTER(ctypes.c_size_t)]*2
        self.plan.restype=ctypes.c_int
        self.fn=getattr(self.lib,symbol)
        self.fn.argtypes=[ctypes.c_void_p]*4+[ctypes.c_size_t]+[ctypes.c_int]*8+[ctypes.c_void_p]
        self.fn.restype=ctypes.c_int


class CandidateEntry(Entry):
    def __init__(self,path,config):
        self.config=config;self.lib=ctypes.CDLL(str(path.resolve()))
        self.plan=self.lib.bmms_tiled_plan
        self.plan.argtypes=[ctypes.c_int]*8+[ctypes.POINTER(ctypes.c_size_t)]*2
        self.plan.restype=ctypes.c_int
        self.fn=self.lib.bmms_tiled_fused
        self.fn.argtypes=[ctypes.c_void_p]*4+[ctypes.c_size_t]+[ctypes.c_int]*8+[ctypes.c_void_p]
        self.fn.restype=ctypes.c_int
    def params(self,s,allow):
        return (*s['shape'],int(s['dtype']=='bfloat16'),int(s['t1']),int(s['t2']),self.config)
    def query(self,s,allow):
        size,off=ctypes.c_size_t(123),ctypes.c_size_t(456)
        code=self.plan(*self.params(s,allow),ctypes.byref(size),ctypes.byref(off))
        return code,4,size.value,off.value


@torch.inference_mode()
def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--build',type=Path,default=Path('/tmp/bmms-tiled-s3-build'))
    p.add_argument('--symbol',default='bmms_s3')
    p.add_argument('--candidate',type=int)
    p.add_argument('--previous',type=Path,default=Path('/tmp/bmms-s1-build/libbmms_s1.so'))
    p.add_argument('--previous-symbol',default='bmms_s1')
    p.add_argument('--output',type=Path,required=True)
    p.add_argument('--mode',choices=['validate','time','profile','pilot'],required=True)
    p.add_argument('--ids',nargs='+',type=int,default=list(range(1,33)))
    p.add_argument('--round',type=int,default=1)
    p.add_argument('--max-cases',type=int)
    a=p.parse_args()
    if len(set(a.ids))!=len(a.ids) or not all(1<=i<=40 for i in a.ids):p.error('Original 1..40 cases only')
    out=a.output;out.mkdir(parents=True,exist_ok=True);attempt=uuid.uuid4().hex
    libs=[a.build/'libbmms_tiled.so',a.previous,Path('/tmp/bmms-s1-build/libbmms_small.so'),Path('/tmp/bmms-s1-build/split_mn/libbmms_split_mn.so')]
    if a.candidate is None:libs.append(a.build/f'lib{a.symbol}.so')
    with GPUExclusive(out/'audits'/f'{attempt}.json') as guard:
        torch.cuda.init();guard.adopt_context();ensure_cases(DEFAULT_CASES,a.ids)
        torch.set_float32_matmul_precision('highest');torch.backends.cuda.matmul.allow_tf32=False
        sources=[TILED/'CMakeLists.txt',*sorted((TILED/'src').glob('*.hip')),*sorted((TILED/'include').glob('*')),*sorted((TILED/'tools').glob('*.py')),
                 HIP/'tools/s1_runner.py',HIP/'tools/gpu_exclusive.py',HIP/'tools/benchmark_baseline.py',HIP/'tools/case_cache.py',HIP.parent/'script/generate_cases.py',
                 *sorted((HIP/'include').rglob('*.h*')),HIP.parent/'cases/manifest.json',HIP.parent/'cases/content_hashes.json']
        identity=dict(ids=a.ids,symbol=a.symbol,candidate=a.candidate,previous_symbol=a.previous_symbol,sources={str(f):sha(f) for f in sources},
            libraries={str(f):sha(f) for f in libs},cases={str(i):sha(DEFAULT_CASES/f'case_{i:03d}.pt') for i in a.ids},
            device=str(torch.cuda.get_device_properties(0)),torch=str(torch.__version__),torch_commit=torch.version.git_version,hip=torch.version.hip,
            runtime_libraries=loaded_libraries(),warmups=10,iterations=100,criterion='original 1e-4 mixed final golden, unchanged')
        ip=out/'identity.json'
        if ip.exists() and json.loads(ip.read_text())!=identity:raise RuntimeError('Identity changed; use new output')
        save(ip,identity)
        entry=CandidateEntry(libs[0],a.candidate) if a.candidate is not None else NamedEntry(libs[-1],a.symbol)
        previous=NamedEntry(a.previous,a.previous_symbol)
        # Record the ACTUALLY mapped backend, not only requested file paths.
        mapped=set()
        for line in Path('/proc/self/maps').read_text().splitlines():
            parts=line.split()
            if len(parts)>=6 and 'libbmms_' in parts[-1] and Path(parts[-1]).is_file():mapped.add(parts[-1])
        save(out/'loaded_backends.json',{path:sha(path) for path in sorted(mapped)})
        marker=None
        if a.mode=='profile':
            marker=ctypes.CDLL('/opt/rocm/lib/librocprofiler-sdk-roctx.so')
            marker.roctxRangePushA.argtypes=[ctypes.c_char_p];marker.roctxRangePushA.restype=ctypes.c_int
            marker.roctxRangePop.argtypes=[];marker.roctxRangePop.restype=ctypes.c_int
        specs=json.loads((DEFAULT_CASES/'manifest.json').read_text())['cases'];new=0
        for i in a.ids:
            mode=a.mode if a.mode!='time' else f'time_round_{a.round}'
            dest=out/mode/f'case_{i:03d}.json'
            if accepted(dest,out):continue
            if a.mode=='time' and not accepted(out/'validate'/f'case_{i:03d}.json',out):raise RuntimeError('Validate first')
            guard.check();started=time.time();c=torch.load(DEFAULT_CASES/f'case_{i:03d}.pt',weights_only=True,map_location='cpu')
            assert c['metadata']==specs[i-1]
            s={k:c['metadata'][k] for k in ('shape','dtype','t1','t2')};b=s['shape'][0]
            x,z=c['x1'].cuda(),c['x2'].cuda();code,route,size,off=entry.query(s,True)
            if code:raise RuntimeError(f'No entry for case {i}: {code}')
            workspace=lambda:entry.workspace(size,off,b);call=lambda y,w:entry.call(x,z,y,w,s,True)
            row=dict(status='complete',attempt=attempt,case=i,metadata=s,route=route,workspace_bytes=size,counter_offset=off,conditional=route>=2)
            if a.mode=='validate':
                row['entry']=lifecycle(call,workspace,x,z,c['golden'],size,off,route>=2)
                # New partials are poisoned, every invocation rewrites them;
                # fresh workspace after simulated failed/layout-changed use.
                y=torch.empty_like(c['golden'],device='cuda');w=workspace();call(y,w);torch.cuda.synchronize();row['fresh_workspace']=check(y,c['golden'])
            elif a.mode=='time':
                order=['baseline','entry','previous'] if (i+a.round)%2 else ['previous','entry','baseline']
                row['order']=order
                oldcode,oldroute,oldsize,oldoff=previous.query(s,True)
                for name in order:
                    guard.check()
                    if name=='baseline':row[name]=baseline_measure(c,torch.device('cuda'))
                    elif name=='entry':row[name]=timed(call,c['golden'],workspace,off,route>=2)
                    elif oldcode==0:
                        row[name]=timed(lambda y,w:previous.call(x,z,y,w,s,True),c['golden'],lambda:previous.workspace(oldsize,oldoff,b),oldoff,oldroute>=2)
                    else:row[name]=dict(status='not_implemented',code=oldcode)
                row['baseline_over_entry']=row['baseline']['baseline_us']/row['entry']['device_us']
                if 'device_us' in row['previous']:row['previous_over_entry']=row['previous']['device_us']/row['entry']['device_us']
            else:
                y=torch.full_like(c['golden'],float('nan'),device='cuda');w=workspace();torch.cuda.synchronize()
                if marker:marker.roctxRangePushA(f'STAGE/case_{i}/route_{route}'.encode())
                start,end=torch.cuda.Event(enable_timing=True),torch.cuda.Event(enable_timing=True)
                start.record();call(y,w);end.record();end.synchronize()
                if marker:marker.roctxRangePop()
                row['entry']=check(y,c['golden'])
                if route>=2:counters(w,off,b)
                row.update(operator_calls=1,pilot_device_ms=start.elapsed_time(end),formal_performance=False)
            torch.cuda.synchronize();guard.check();row.update(start_unix=started,end_unix=time.time());save(dest,row)
            print(f'{a.mode} case {i}, host route {route}: '+(f'{row["entry"]["device_us"]:.3f}us, baseline/entry {row["baseline_over_entry"]:.3f}' if a.mode=='time' else 'golden/lifecycle passed'),flush=True)
            del c,x,z,call,workspace;gc.collect();torch.cuda.empty_cache();new+=1
            if a.max_cases and new>=a.max_cases:break
    mode=a.mode if a.mode!='time' else f'time_round_{a.round}'
    complete=[i for i in a.ids if accepted(out/mode/f'case_{i:03d}.json',out)]
    save(out/f'{mode}_summary.json',dict(status='complete' if complete==a.ids else 'partial',completed=complete,remaining=[i for i in a.ids if i not in complete]))

if __name__=='__main__':main()
