#!/usr/bin/env python3
"""Split-M/N correctness, workspace lifecycle and strict 10/100 timing."""
import argparse
import ctypes
import gc
import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys
import torch

ROOT=Path(__file__).resolve().parents[1]
HIP=ROOT.parent
sys.path.insert(0,str(HIP/'tools'))
from benchmark_baseline import measure as baseline_measure


def save(path,obj):
    tmp=path.with_suffix('.tmp');tmp.write_text(json.dumps(obj,indent=2)+'\n');tmp.replace(path)

def sha(path):
    with path.open('rb') as f:return hashlib.file_digest(f,'sha256').hexdigest()

def idle():
    # The main conversation does not use this module's lock. Do not submit GPU
    # work when another Python experiment/benchmark is already running.
    lines=subprocess.check_output(['ps','-eo','pid=,comm=,args='],text=True).splitlines()
    for line in lines:
        parts=line.strip().split(None,2)
        if len(parts)!=3:continue
        pid,comm,args=parts
        if int(pid)!=os.getpid() and comm.startswith('python') and 'jupyter' not in args:
            raise RuntimeError(f'Another Python process is active (PID {pid}); retry later to avoid disturbing main-thread GPU measurements')


class Runner:
    def __init__(self,path):
        self.lib=ctypes.CDLL(str(path.resolve()))
        self.plan=self.lib.bmms_mn_plan
        self.plan.argtypes=[ctypes.c_int]*10+[ctypes.POINTER(ctypes.c_size_t)]*2
        self.plan.restype=ctypes.c_int
        self.fn=self.lib.bmms_mn
        self.fn.argtypes=[ctypes.c_void_p]*4+[ctypes.c_size_t]+[ctypes.c_int]*10+[ctypes.c_void_p]
        self.fn.restype=ctypes.c_int
    def params(self,s,config):
        axis,group,waves=config
        return (*s['shape'],int(s['dtype']=='bfloat16'),int(s['t1']),int(s['t2']),axis,group,waves)
    def workspace(self,s,config):
        size,offset=ctypes.c_size_t(),ctypes.c_size_t()
        status=self.plan(*self.params(s,config),ctypes.byref(size),ctypes.byref(offset))
        if status:raise RuntimeError(f'plan status {status}, {config}')
        # Single host-to-device copy: no device initialization kernel. Partial
        # slots are deliberately nonzero to verify complete overwrite.
        host=torch.full((size.value,),0xA5,dtype=torch.uint8)
        host[offset.value:offset.value+4*s['shape'][0]]=0
        return host.cuda(),offset.value
    def call(self,x,z,y,w,s,config):
        status=self.fn(x.data_ptr(),z.data_ptr(),y.data_ptr(),w.data_ptr(),w.numel(),
            *self.params(s,config),torch.cuda.current_stream().cuda_stream)
        if status:raise RuntimeError(f'launch status {status}, {config}')


def check(y,expected):
    actual=y.cpu();torch.testing.assert_close(actual,expected,rtol=1e-4,atol=1e-4)
    d=(actual.double()-expected.double()).abs()
    return dict(max_abs=d.max().item(),max_rel=(d/expected.double().abs().clamp_min(1e-12)).max().item())

def counters(w,offset,b):
    if bool(w[offset:offset+4*b].cpu().any()):raise AssertionError('Completion counters not reset')

@torch.inference_mode()
def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--library',type=Path,default=Path('/tmp/bmms-split-mn-build/libbmms_split_mn.so'))
    p.add_argument('--cases',type=Path,default=HIP.parent/'cases')
    p.add_argument('--output',type=Path,default=ROOT/'results/initial')
    p.add_argument('--mode',choices=['validate','time','smoke'],default='validate')
    p.add_argument('--balanced',action='store_true',help='time explicit M group16/wave1 and N group64/waves2; no Auto dispatch')
    a=p.parse_args();a.output.mkdir(parents=True,exist_ok=True)
    idle()
    device_identity=dict(device=str(torch.cuda.get_device_properties(0)),torch=str(torch.__version__),hip=torch.version.hip)
    identity=dict(library_sha256=sha(a.library),script_sha256=sha(Path(__file__)),**device_identity,
        manifest_sha256=sha(a.cases/'manifest.json'),mode=a.mode,balanced=a.balanced,
        case_sha256={str(i):sha(a.cases/f'case_{i:03d}.pt') for i in range(1,33)},
        sources={str(f.relative_to(ROOT)):sha(f) for f in [ROOT/'src/split_mn.hip',*sorted((ROOT/'include/bmms').glob('*'))]},
        warmups=10,iterations=100,criterion='abs <= 1e-4 + 1e-4*abs(saved golden), provisional')
    identity_file=a.output/'identity.json'
    if identity_file.exists() and json.loads(identity_file.read_text())!=identity:raise RuntimeError('Identity changed; use a new output directory')
    save(identity_file,identity)
    specs=json.loads((a.cases/'manifest.json').read_text())['cases']
    assert [s['id'] for s in specs]==list(range(1,41))
    idle();r=Runner(a.library)
    # Host planning does not require a GPU and must leave output parameters
    # unchanged on rejection.
    size,offset=ctypes.c_size_t(123),ctypes.c_size_t(456)
    for params in [(1,16,16,32,0,0,0,2,64,4),(1,16,16,32,0,0,0,0,17,4),
                   (1,16,16,32,0,0,0,1,64,3),(1,16,16,33,0,0,0,0,64,4)]:
        if r.plan(*params,ctypes.byref(size),ctypes.byref(offset))==0:raise AssertionError('Invalid plan accepted')
        assert size.value==123 and offset.value==456
    save(a.output/'host_validation.json',dict(invalid_plans_rejected=4,failed_plan_preserves_outputs=True))
    save(a.output/'environment.json',dict(**device_identity,
        timing='10 untimed calls, one graph containing 100 calls, one timed replay, device elapsed/100 arithmetic mean',
        excludes='input copies/conversion, allocations, graph capture, validation, workspace setup'))
    if a.mode=='smoke':
        c=torch.load(a.cases/'case_001.pt',weights_only=True);s=c['metadata'];assert s==specs[0];x,z=c['x1'].cuda(),c['x2'].cuda();y=torch.empty(s['shape'][0],device='cuda')
        for config in [(0,16,4),(1,16,4)]:
            w,off=r.workspace(s,config);r.call(x,z,y,w,s,config);torch.cuda.synchronize();check(y,c['golden']);counters(w,off,s['shape'][0])
        print('Two calls: Split-M and Split-N, golden/counters passed',flush=True);return
    configs=[(axis,group,waves) for axis in (0,1) for group,waves in [(16,1),(64,4),(256,8)]]
    configs.append((1,64,2))
    if a.mode=='time':configs=[(0,16,1),(1,64,2)] if a.balanced else [(0,64,4),(1,256,4)]
    items=a.output/'items';items.mkdir(exist_ok=True)
    for i in range(1,33):
        idle()
        for axis,group,waves in configs:
            target=items/f'case_{i:03d}_axis{axis}_g{group}_w{waves}.json'
            if target.exists():continue
            c=torch.load(a.cases/f'case_{i:03d}.pt',weights_only=True);s=c['metadata'];assert s==specs[i-1]
            x,z=c['x1'].cuda(),c['x2'].cuda();poison=torch.full((s['shape'][0],),float('nan'),dtype=torch.float32);y=poison.cuda();config=(axis,group,waves)
            w,off=r.workspace(s,config)
            if a.mode=='validate':
                r.call(x,z,y,w,s,config);torch.cuda.synchronize();stats=check(y,c['golden']);first=y.clone()
                for _ in range(3):
                    y.copy_(poison) # outside the operator: prove every call overwrites output
                    r.call(x,z,y,w,s,config);torch.cuda.synchronize()
                    if not torch.equal(first,y):raise AssertionError('Repeated result changed')
                    counters(w,off,s['shape'][0])
                stats.update(extra_repeats=3,repeat_equal=True,counter_reset=True,output_poison_overwritten=True)
                del first
            else:
                for _ in range(10):r.call(x,z,y,w,s,config)
                torch.cuda.synchronize();check(y,c['golden'])
                graph=torch.cuda.CUDAGraph()
                with torch.cuda.graph(graph):
                    for _ in range(100):r.call(x,z,y,w,s,config)
                begin,end=torch.cuda.Event(enable_timing=True),torch.cuda.Event(enable_timing=True)
                begin.record();graph.replay();end.record();end.synchronize()
                stats=check(y,c['golden']);counters(w,off,s['shape'][0]);elapsed=begin.elapsed_time(end)
                stats.update(warmups=10,iterations=100,total_device_ms=elapsed,device_us=elapsed*10)
                # Replaying the same graph again verifies reset/reuse; this
                # replay is deliberately NOT included in performance samples.
                graph.replay();torch.cuda.synchronize();check(y,c['golden']);counters(w,off,s['shape'][0])
                del graph
            save(target,dict(case=i,axis='N' if axis else 'M',group=group,waves=waves,shape=s['shape'],dtype=s['dtype'],t1=s['t1'],t2=s['t2'],
                workspace_bytes=w.numel(),case_sha256=sha(a.cases/f'case_{i:03d}.pt'),**stats))
            del c,x,z,y,w,poison;gc.collect();torch.cuda.empty_cache()
        print(f'{a.mode} case {i:03d} passed ({len(configs)} configurations)',flush=True)
    if a.mode=='validate':
        idle();c=torch.load(a.cases/'case_001.pt',weights_only=True);s=c['metadata'];assert s==specs[0];x,z=c['x1'].cuda(),c['x2'].cuda();torch.cuda.synchronize()
        for config in [(0,16,4),(1,16,4)]:
            streams=[torch.cuda.Stream(),torch.cuda.Stream()];outs=[torch.empty(s['shape'][0],device='cuda') for _ in streams]
            work=[r.workspace(s,config) for _ in streams];torch.cuda.synchronize()
            for stream,out,(w,off) in zip(streams,outs,work):
                with torch.cuda.stream(stream):
                    for _ in range(20):r.call(x,z,out,w,s,config)
            torch.cuda.synchronize()
            for out,(w,off) in zip(outs,work):check(out,c['golden']);counters(w,off,s['shape'][0])
        save(a.output/'concurrency.json',dict(streams=2,independent_workspaces=True,calls_per_stream=20,axes=['M','N'],status='passed'))
    save(a.output/'summary.json',dict(status='complete',cases=32,checks=32*len(configs),mode=a.mode,
        max_abs=max(json.loads(f.read_text())['max_abs'] for f in items.glob('*.json'))))

if __name__=='__main__':main()
