#!/usr/bin/env python3
"""S2: full-dot validation and diagnostic GEMM-only 10/100, original cases only."""
import argparse
import ctypes
import gc
import json
from pathlib import Path
import sys
import uuid
import torch

TILED=Path(__file__).resolve().parents[1]
HIP=TILED.parent
sys.path.insert(0,str(HIP/'tools'))
from s1_runner import Entry, save, sha, timed as scalar_timed, accepted
from case_cache import DEFAULT_CASES, ensure_cases
from gpu_exclusive import GPUExclusive
from benchmark_baseline import measure as baseline_measure
from s0_native import loaded_libraries

CONFIGS={0:(16,32,64),1:(16,64,64),2:(32,64,64),3:(16,64,32)}


class Runner:
    def __init__(self,lib):
        self.lib=ctypes.CDLL(str(lib.resolve()));self.fn=self.lib.bmms_tiled_gemm
        self.fn.argtypes=[ctypes.c_void_p]*3+[ctypes.c_int]*8+[ctypes.c_void_p]
        self.fn.restype=ctypes.c_int
    def call(self,x,z,c,s,config):
        code=self.fn(x.data_ptr(),z.data_ptr(),c.data_ptr(),*s['shape'],int(s['dtype']=='bfloat16'),int(s['t1']),int(s['t2']),config,torch.cuda.current_stream().cuda_stream)
        if code:raise RuntimeError(f'tiled GEMM status {code}, config {config}')


def fullcheck(c,ref,golden,bound):
    actual=c.cpu();error=(actual.double()-ref.double()).abs()
    assert bool((error<=bound).all()), 'Full dot exceeds FP32 accumulation forward-error bound'
    result=actual.amax(-1).sum(-1)
    torch.testing.assert_close(result,golden,atol=1e-4,rtol=1e-4)
    return dict(full_dot_max_abs=error.max().item(),
                full_dot_max_error_over_bound=(error/bound.clamp_min(1e-30)).max().item(),
                golden_max_abs=(result.double()-golden.double()).abs().max().item())


def measure(fn,check):
    for _ in range(10):fn()
    torch.cuda.synchronize();check()
    graph=torch.cuda.CUDAGraph()
    with torch.cuda.graph(graph):
        for _ in range(100):fn()
    start,end=torch.cuda.Event(enable_timing=True),torch.cuda.Event(enable_timing=True)
    start.record();graph.replay();end.record();end.synchronize();ms=start.elapsed_time(end)
    check();graph.replay();torch.cuda.synchronize();check()
    return dict(device_us=ms*10,total_device_ms=ms,warmups=10,iterations=100,extra_replay=True)


@torch.inference_mode()
def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--library',type=Path,default=Path('/tmp/bmms-tiled-s2-build/libbmms_tiled.so'))
    p.add_argument('--s1-build',type=Path,default=Path('/tmp/bmms-s1-build'))
    p.add_argument('--output',type=Path,required=True)
    p.add_argument('--mode',choices=['validate','time'],required=True)
    p.add_argument('--ids',type=int,nargs='+',default=list(range(17,25))+[30,1,25,26,28])
    a=p.parse_args()
    if not a.ids or len(set(a.ids))!=len(a.ids) or not all(1<=i<=32 for i in a.ids):p.error('Original cases 1..32 only')
    out=a.output;out.mkdir(parents=True,exist_ok=True);attempt=uuid.uuid4().hex
    with GPUExclusive(out/'audits'/f'{attempt}.json') as guard:
        torch.cuda.init();guard.adopt_context();ensure_cases(DEFAULT_CASES,a.ids)
        torch.set_float32_matmul_precision('highest');torch.backends.cuda.matmul.allow_tf32=False
        files=[*sorted((TILED/'src').glob('*.hip')),*sorted((TILED/'include').glob('*')),TILED/'CMakeLists.txt',Path(__file__),
               HIP/'tools/s1_runner.py',HIP/'tools/gpu_exclusive.py',HIP/'tools/benchmark_baseline.py',HIP/'tools/case_cache.py',HIP.parent/'script/generate_cases.py',
               *sorted((HIP/'include').rglob('*.h*')),HIP.parent/'cases/manifest.json',HIP.parent/'cases/content_hashes.json']
        libs=[a.library,a.s1_build/'libbmms_s1.so',a.s1_build/'libbmms_small.so',a.s1_build/'split_mn/libbmms_split_mn.so']
        identity=dict(ids=a.ids,configs=CONFIGS,sources={str(f):sha(f) for f in files},libraries={str(f):sha(f) for f in libs},
            cases={str(i):sha(DEFAULT_CASES/f'case_{i:03d}.pt') for i in a.ids},
            device=str(torch.cuda.get_device_properties(0)),torch=str(torch.__version__),torch_commit=torch.version.git_version,hip=torch.version.hip,
            runtime_libraries=loaded_libraries(),warmups=10,iterations=100,criterion='Final golden: unchanged 1e-4 mixed; full dots: FP32 gamma_K*sum(abs(a*b)) forward-error bound')
        # JSON normalizes integer dictionary keys.
        identity=json.loads(json.dumps(identity))
        ip=out/'identity.json'
        if ip.exists() and json.loads(ip.read_text())!=identity:raise RuntimeError('Identity changed: use new output')
        save(ip,identity);runner=Runner(a.library);s1=Entry(libs[1])
        for i in a.ids:
            target=out/a.mode/f'case_{i:03d}.json'
            if accepted(target,out):continue
            if a.mode=='time' and not accepted(out/'validate'/f'case_{i:03d}.json',out):raise RuntimeError('Validate first')
            guard.check();c=torch.load(DEFAULT_CASES/f'case_{i:03d}.pt',weights_only=True,map_location='cpu')
            s={k:c['metadata'][k] for k in ('shape','dtype','t1','t2')}
            x,z=c['x1'].cuda(),c['x2'].cuda();b,m,n,k=s['shape']
            logical_a=x.transpose(1,2) if s['t1'] else x
            logical_b=z.transpose(1,2) if s['t2'] else z
            ref=torch.bmm(logical_a.double(),logical_b.double()).float().cpu()
            # Half/BF16 products are exact in FP32; sequential FP32 FMA
            # error <= gamma_K * sum(abs(a*b)); this checks every C element.
            gamma=(k*2**-24)/(1-k*2**-24)
            bound=(gamma*torch.bmm(logical_a.double().abs(),logical_b.double().abs())).cpu()
            output=torch.empty((b,m,n),device='cuda');stats={}
            for config in CONFIGS:
                output.fill_(float('nan'));fn=lambda:runner.call(x,z,output,s,config)
                if a.mode=='validate':
                    fn();torch.cuda.synchronize();r=fullcheck(output,ref,c['golden'],bound);first=output.cpu()
                    for _ in range(3):
                        output.fill_(float('nan'));fn();torch.cuda.synchronize();assert torch.equal(first,output.cpu())
                    streams=[torch.cuda.Stream(),torch.cuda.Stream()];outs=[torch.full_like(output,float('nan')) for _ in streams]
                    torch.cuda.synchronize()
                    for stream,y in zip(streams,outs):
                        with torch.cuda.stream(stream):
                            for _ in range(3):runner.call(x,z,y,s,config)
                    torch.cuda.synchronize()
                    for y in outs:fullcheck(y,ref,c['golden'],bound)
                    r.update(repeat_equal=True,poison_overwritten=True,streams=2)
                else:r=measure(fn,lambda:fullcheck(output,ref,c['golden'],bound))
                tm,tn,tk=CONFIGS[config]
                r.update(tile=[tm,tn,tk],grid=b*((m+tm-1)//tm)*((n+tn-1)//tn),waves=(tm//16)*(tn//32),lds_input_bytes=2*(tm+tn)*(tk+2))
                stats[str(config)]=r
            row=dict(status='complete',attempt=attempt,case=i,metadata=s,candidates=stats,diagnostic_only=True)
            if a.mode=='time':
                # Native GEMM alone: same FP32 conversion/layout as split chain.
                aa,bb=logical_a.float(),logical_b.float()
                native=lambda:torch.bmm(aa,bb,out=output)
                row['native_gemm']=measure(native,lambda:fullcheck(output,ref,c['golden'],bound))
                row['baseline']=baseline_measure(c,torch.device('cuda'))
                call=lambda y,w:s1.call(x,z,y,w,s,True)
                row['s1_entry']=scalar_timed(call,c['golden'],lambda:s1.workspace(0,0,b),0,False)
            guard.check();save(target,row)
            print(f'{a.mode} case {i}: '+(', '.join(f'g{cfg} {v["device_us"]:.2f}us' for cfg,v in stats.items())+f'; native GEMM {row["native_gemm"]["device_us"]:.2f}us, split {row["baseline"]["baseline_us"]:.2f}us' if a.mode=='time' else '4 candidates full dots/golden/streams passed'),flush=True)
            del c,x,z,output,ref,logical_a,logical_b;gc.collect();torch.cuda.empty_cache()
    save(out/f'{a.mode}_summary.json',dict(status='complete',cases=a.ids,candidates=4,checks=4*len(a.ids),attempt=attempt))

if __name__=='__main__':main()
