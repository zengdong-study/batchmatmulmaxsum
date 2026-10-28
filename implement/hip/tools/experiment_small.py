#!/usr/bin/env python3
"""Correctness and crossover experiments for the explicit HIP small paths."""
import argparse
import csv
import ctypes
import json
from pathlib import Path
import statistics
import torch

ROOT=Path(__file__).resolve().parents[1]
PATHS=[('matrix',True,8)]+[(f'simd_k{k}',False,k) for k in (1,4,8,16,32)]

class Runner:
    def __init__(self,library):
        self.lib=ctypes.CDLL(str(library))
        self.fn=self.lib.bmms_small
        self.fn.argtypes=[ctypes.c_void_p]*3+[ctypes.c_int]*9+[ctypes.c_void_p]
        self.fn.restype=ctypes.c_int
    def call(self,x,z,y,s,matrix,lanes):
        b,m,n,k=s['shape']
        code=self.fn(x.data_ptr(),z.data_ptr(),y.data_ptr(),b,m,n,k,
            int(x.dtype==torch.bfloat16),int(s['t1']),int(s['t2']),int(matrix),lanes,
            torch.cuda.current_stream().cuda_stream)
        if code: raise RuntimeError(f'Operator status {code}')

def errors(actual,expected):
    diff=(actual.double()-expected.double()).abs()
    rel=diff/expected.double().abs().clamp_min(1e-12)
    return diff.max().item(),rel.max().item()

def check(actual,expected):
    # Provisional numerical criterion, not an interpretation of contest rules.
    torch.testing.assert_close(actual,expected,atol=1e-4,rtol=1e-4)

def validate(runner,args):
    rows=[]
    ids=list(range(1,33)) if args.extended else list(range(1,27))+list(range(28,32))
    for i in ids:
        c=torch.load(args.cases/f'case_{i:03d}.pt',weights_only=True)
        x,z=c['x1'].cuda(),c['x2'].cuda()
        expected=c['golden'].cuda(); s=c['metadata']
        y=torch.empty_like(expected)
        for name,matrix,lanes in PATHS:
            runner.call(x,z,y,s,matrix,lanes)
            torch.cuda.synchronize()
            check(y,expected)
            first=y.clone()
            for _ in range(3):
                runner.call(x,z,y,s,matrix,lanes)
                torch.cuda.synchronize()
                if not torch.equal(first,y): raise AssertionError('Non-deterministic result')
            ae,re=errors(y,expected)
            rows.append(dict(case=i,path=name,max_abs=ae,max_rel=re,repeat_equal=True))
        print(f'case {i:03d}: all {len(PATHS)} configurations passed',flush=True)
    # Full persisted golden permits checking stream ordering and output overwrite
    # without regenerating any reference. Each launch runs on the selected stream.
    streams=[torch.cuda.Stream(),torch.cuda.Stream()]
    outs=[torch.empty_like(expected),torch.empty_like(expected)]
    torch.cuda.synchronize()
    for stream,out in zip(streams,outs):
        with torch.cuda.stream(stream):
            runner.call(x,z,out,s,True,8)
            runner.call(x,z,out,s,False,8)
    torch.cuda.synchronize()
    for out in outs: check(out,expected)
    (args.output/'correctness.json').write_text(json.dumps(dict(
        criterion='abs <= 1e-4 + 1e-4*abs(golden); provisional',
        cases=ids,configurations=len(PATHS),repeat_runs=3,
        concurrent_streams='passed, separate outputs, read-only shared inputs',results=rows),indent=2)+'\n')

def time_path(runner,x,z,y,s,matrix,lanes,repeats):
    for _ in range(3): runner.call(x,z,y,s,matrix,lanes)
    torch.cuda.synchronize()
    # Calibrate only to choose batch length; calibration is not a reported timing.
    a,b=torch.cuda.Event(enable_timing=True),torch.cuda.Event(enable_timing=True)
    a.record(); runner.call(x,z,y,s,matrix,lanes); b.record(); b.synchronize()
    repeats=max(repeats,64) if a.elapsed_time(b)<0.1 else repeats
    # Capture a batch so tiny-kernel timings are not dominated by Python/ctypes gaps.
    graph=torch.cuda.CUDAGraph()
    with torch.cuda.graph(graph):
        for _ in range(repeats): runner.call(x,z,y,s,matrix,lanes)
    graph.replay()
    torch.cuda.synchronize()
    samples=[]
    for _ in range(3):
        start,end=torch.cuda.Event(enable_timing=True),torch.cuda.Event(enable_timing=True)
        start.record()
        graph.replay()
        end.record(); end.synchronize()
        samples.append(start.elapsed_time(end)*1000/repeats)
    return statistics.median(samples),samples,repeats

def scan(runner,args):
    shapes=[tuple(map(int,v.split('x'))) for v in args.shapes]
    if any(len(v)!=2 or min(v)<1 for v in shapes): raise ValueError('Expected MxN shapes')
    variants=[('float16',False,False)] if not args.cross_layout else [
        (dt,t1,t2) for dt in ('float16','bfloat16') for t1,t2 in ((False,False),(False,True),(True,False),(True,True))]
    torch.manual_seed(20261027)
    with (args.output/'scan.csv').open('w',newline='') as f:
        fields=['B','M','N','K','dtype','t1','t2','path','us','sample_us','repeats','max_abs','max_rel']
        writer=csv.DictWriter(f,fieldnames=fields);writer.writeheader()
        count=0
        for dt,t1,t2 in variants:
            for b in args.b_values:
                for m,n in shapes:
                    for k in args.k_values:
                        # Quantize before constructing the independent FP64 reference.
                        a=(torch.randn(b,m,k,device='cuda')/(k**0.5)).to(getattr(torch,dt))
                        d=(torch.randn(b,n,k,device='cuda')/(k**0.5)).to(getattr(torch,dt))
                        x=a.transpose(1,2).contiguous() if t1 else a.contiguous()
                        z=d.contiguous() if t2 else d.transpose(1,2).contiguous()
                        expected=torch.bmm(a.double(),d.double().transpose(1,2)).amax(-1).sum(-1).float()
                        s=dict(shape=[b,m,n,k],t1=t1,t2=t2)
                        y=torch.empty(b,device='cuda')
                        for name,matrix,lanes in PATHS:
                            runner.call(x,z,y,s,matrix,lanes)
                            check(y,expected)
                            ae,re=errors(y,expected)
                            us,samples,effective_repeats=time_path(runner,x,z,y,s,matrix,lanes,args.repeats)
                            writer.writerow(dict(B=b,M=m,N=n,K=k,dtype=dt,t1=t1,t2=t2,path=name,
                                us=us,sample_us=json.dumps(samples),repeats=effective_repeats,max_abs=ae,max_rel=re))
                        f.flush();count+=1
                        print(f'scan {count}: B/M/N/K={b}/{m}/{n}/{k}, {dt}, {t1}/{t2}',flush=True)
    (args.output/'timing_method.json').write_text(json.dumps(dict(
        method='HIP events around a graph of repeated operator calls; 3 warmups, graph warmup, median of 3 batches',
        minimum_repeats_per_batch=args.repeats,adaptive_batch='at least 64 calls when single-call calibration <100us; actual per-row repeats in CSV',
        includes='device execution and graph scheduling overhead; graph launch overhead amortized over repeats',
        excludes='allocations, input generation, reference, host-device copies, compilation',
        warning='initial one-wave baseline, not final hardware crossover or small-vs-split boundary',
        shapes=args.shapes,B=args.b_values,K=args.k_values,cross_layout=args.cross_layout,
        gpu=str(torch.cuda.get_device_properties(0)),torch=str(torch.__version__)),indent=2)+'\n')

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--library',type=Path,default=Path('/tmp/bmms-build/libbmms_small.so'))
    p.add_argument('--cases',type=Path,default=ROOT.parent/'cases')
    p.add_argument('--output',type=Path,default=ROOT/'results'/'small_baseline')
    p.add_argument('--mode',choices=['validate','scan','all','smoke'],default='all')
    p.add_argument('--extended',action='store_true',help='validate cases 1-32 including N=1 long sums and lanesK=2')
    p.add_argument('--cross-layout',action='store_true',help='scan both dtypes and all layouts; otherwise FP16 F/F screening')
    p.add_argument('--shapes',nargs='+',default=['1x1','1x16','1x128','8x16','16x16','17x17','32x64'])
    p.add_argument('--b-values',type=int,nargs='+',default=[1,8,64])
    p.add_argument('--k-values',type=int,nargs='+',default=[32,40,128,1024,8192])
    p.add_argument('--repeats',type=int,default=10)
    args=p.parse_args()
    if args.repeats<1:p.error('--repeats must be positive')
    args.output.mkdir(parents=True,exist_ok=True)
    runner=Runner(args.library)
    if args.extended: PATHS.append(('simd_k2',False,2))
    if args.mode=='smoke':
        c=torch.load(args.cases/'case_025.pt',weights_only=True)
        x,z=c['x1'].cuda(),c['x2'].cuda()
        y=torch.empty(1,device='cuda')
        for matrix in (True,False):
            runner.call(x,z,y,c['metadata'],matrix,8)
            torch.cuda.synchronize()
            assert torch.equal(y.cpu(),c['golden'])
        print('smoke: one matrix call + one SIMD call passed',flush=True)
    if args.mode in ('validate','all'):validate(runner,args)
    if args.mode in ('scan','all'):scan(runner,args)
if __name__=='__main__':main()
