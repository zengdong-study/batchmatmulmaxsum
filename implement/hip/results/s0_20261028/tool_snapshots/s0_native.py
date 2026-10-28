#!/usr/bin/env python3
"""S0: freeze cases/builds and measure/profile the unchanged FP32 split baseline."""
import argparse
import ctypes
import gc
import hashlib
import json
import os
from pathlib import Path
import subprocess
import time
from gpu_exclusive import GPUExclusive

ROOT=Path(__file__).resolve().parents[1]
CASES=ROOT.parent/'cases'

def sha(path):
    with Path(path).open('rb') as f:return hashlib.file_digest(f,'sha256').hexdigest()
def save(path,obj):
    path=Path(path);path.parent.mkdir(parents=True,exist_ok=True);tmp=path.with_suffix('.tmp')
    tmp.write_text(json.dumps(obj,indent=2)+'\n');tmp.replace(path)

def freeze(out):
    specs=json.loads((CASES/'manifest.json').read_text())['cases'];assert len(specs)==40
    rows=[]
    small=set(range(1,9))|set(range(17,27))|set(range(28,32))
    prior=ROOT/'results/resume_20261028'
    for s in specs:
        i=s['id'];p=CASES/f'case_{i:03d}.pt';meta=json.loads(p.with_suffix('.json').read_text());raw=p.open('rb').read(150)
        restored=not raw.startswith(b'version https://git-lfs.github.com/spec/v1')
        actual=sha(p) if restored else None
        if restored:assert actual==meta['sha256'] and p.stat().st_size==meta['bytes']
        b,m,n,k=s['shape'];sim=4*b*m*n;rows.append(dict(case=i,shape=s['shape'],dtype=s['dtype'],t1=s['t1'],t2=s['t2'],
            data_status='verified original data' if restored else 'LFS pointer; restore at S5',expected_sha256=meta['sha256'],expected_bytes=meta['bytes'],actual_sha256=actual,
            small_formal=i in small,split_b_formal=i in set(range(9,17))|set(range(37,41)),
            split_mn_validated=i<=32,split_mn_extremes_validated=False,
            current_same_device_chain_baseline=(prior/'baseline_isolated/items'/f'baseline_{i:03d}_fp32_split.json').exists(),
            old_40case_baseline_only=i in (33,34,35,36),
            gemm_flops=2*b*m*n*k,similarity_bytes=sim,input_storage_bytes=2*b*k*(m+n),
            baseline_device_tensor_bytes_estimate=6*b*k*(m+n)+sim+4*b*m+4*b,
            mandatory_similarity_write_read_bytes=2*sim,extra_row_max_write_read_bytes=8*b*m,
            split_m_partial_float_bytes_64=4*b*((m+63)//64),split_n_partial_float_bytes_64=4*b*((n+63)//64)*m,
            split_mn_counters_bytes=4*b))
    files=[ROOT/'CMakeLists.txt',ROOT.parent.parent/'BatchMatmulMaxSum.md',CASES/'manifest.json',
        *sorted((ROOT/'include').rglob('*.*')),*sorted((ROOT/'src').glob('*')),
        *sorted((ROOT/'split_mn/include').rglob('*.*')),*sorted((ROOT/'split_mn/src').glob('*')),
        *sorted((ROOT/'tools').glob('*.py'))]
    libraries=list((ROOT/'archive').glob('final*/lib*.so'))+list((ROOT/'split_mn/results/artifacts').glob('*.so'))
    frozen=dict(case_manifest_sha256=sha(CASES/'manifest.json'),files={str(p):sha(p) for p in files if p.is_file()},
        libraries={str(p):sha(p) for p in libraries},baseline='FP32 torch.bmm -> torch.amax(N) -> torch.sum(M, FP32)',
        precision='highest, allow_tf32=False; actual low-precision input values converted before timing; no extra contiguous conversion',
        warmups=10,iterations=100,criterion='abs <= 1e-4 + 1e-4*abs(golden), existing provisional criterion',
        workspace_contract=dict(small_split_b='zero workspace, no initialization',split_mn='conditional: external first-use B uint32 zero counters, reset inside kernel, disjoint workspace for concurrency',
            problem_text_authorizes_external_counter_init=False,decision='Do not admit initialization-dependent Split-M/N as an unconditional final implementation; S1 may compare it as a conditional candidate.'))
    save(out/'coverage.json',rows);save(out/'freeze.json',frozen)
    return rows


def loaded_libraries():
    paths=set()
    for line in Path('/proc/self/maps').read_text().splitlines():
        parts=line.split()
        if len(parts)<6:continue
        p=Path(parts[-1])
        if p.is_file() and any(x in p.name for x in ['libtorch_hip','librocblas','libhipblas','libamdhip64','libhiprtc']):paths.add(p.resolve())
    return {str(p):sha(p) for p in sorted(paths)}


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--output',type=Path,default=ROOT/'results/s0_20261028')
    p.add_argument('--mode',choices=['freeze','measure','profile'],required=True);p.add_argument('--ids',type=int,nargs='*')
    a=p.parse_args();a.output.mkdir(parents=True,exist_ok=True)
    if a.mode=='freeze':freeze(a.output);return
    rows=json.loads((a.output/'coverage.json').read_text());ids=a.ids or [r['case'] for r in rows if r['actual_sha256']]
    assert all(1<=i<=40 and rows[i-1]['actual_sha256'] for i in ids)
    with GPUExclusive(a.output/f'{a.mode}_gpu_audit.json') as guard:
        import torch
        from benchmark_baseline import measure
        torch.cuda.init();guard.adopt_context()
        torch.set_float32_matmul_precision('highest');torch.backends.cuda.matmul.allow_tf32=False
        identity=dict(device=str(torch.cuda.get_device_properties(0)),torch=str(torch.__version__),torch_commit=torch.version.git_version,hip=torch.version.hip,
            script_sha256=sha(Path(__file__)),baseline_helper_sha256=sha(ROOT/'tools/benchmark_baseline.py'),guard_sha256=sha(ROOT/'tools/gpu_exclusive.py'),
            manifest_sha256=sha(CASES/'manifest.json'),ids=ids,mode=a.mode,warmups=10,iterations=100)
        config=a.output/f'{a.mode}_identity.json'
        if config.exists() and json.loads(config.read_text())!=identity:raise RuntimeError('Identity changed: new output required')
        save(config,identity)
        roctx=None
        if a.mode=='profile':
            roctx=ctypes.CDLL('/opt/rocm/lib/librocprofiler-sdk-roctx.so')
            roctx.roctxRangePushA.argtypes=[ctypes.c_char_p];roctx.roctxRangePushA.restype=ctypes.c_int
            roctx.roctxRangePop.argtypes=[];roctx.roctxRangePop.restype=ctypes.c_int
        out=a.output/a.mode;out.mkdir(exist_ok=True)
        for i in ids:
            dest=out/f'case_{i:03d}.json'
            if a.mode=='measure' and dest.exists():
                assert json.loads(dest.read_text())['status']=='complete';continue
            guard.check();start_wall=time.time();save(a.output/f'{a.mode}_progress.json',dict(status='running',case=i,started_unix=start_wall))
            c=torch.load(CASES/f'case_{i:03d}.pt',weights_only=True,map_location='cpu');s=c['metadata']
            assert s==json.loads((CASES/'manifest.json').read_text())['cases'][i-1]
            chain=measure(c,torch.device('cuda')) if a.mode=='measure' else None
            b,m,n,k=s['shape'];x1,x2=c['x1'].cuda(),c['x2'].cuda()
            x=(x1.transpose(1,2) if s['t1'] else x1).float();z=(x2.transpose(1,2) if s['t2'] else x2).float()
            similarity=torch.empty((b,m,n),device='cuda');mx=torch.empty((b,m),device='cuda');y=torch.empty(b,device='cuda')
            functions={'bmm':lambda:torch.bmm(x,z,out=similarity),'amax':lambda:torch.amax(similarity,dim=-1,out=mx),'sum':lambda:torch.sum(mx,dim=-1,dtype=torch.float32,out=y)}
            def complete():
                for fn in functions.values():fn()
            complete();torch.cuda.synchronize();torch.testing.assert_close(y.cpu(),c['golden'],atol=1e-4,rtol=1e-4)
            stages={}
            if a.mode=='measure':
                for name,fn in functions.items():
                    guard.check()
                    for _ in range(10):fn()
                    torch.cuda.synchronize()
                    graph=torch.cuda.CUDAGraph()
                    with torch.cuda.graph(graph):
                        for _ in range(100):fn()
                    e0,e1=torch.cuda.Event(enable_timing=True),torch.cuda.Event(enable_timing=True)
                    e0.record();graph.replay();e1.record();e1.synchronize();ms=e0.elapsed_time(e1)
                    if name=='bmm':functions['amax']();functions['sum']()
                    elif name=='amax':functions['sum']()
                    torch.cuda.synchronize();torch.testing.assert_close(y.cpu(),c['golden'],atol=1e-4,rtol=1e-4)
                    stages[name]=dict(mean_us=ms*10,total_device_ms=ms,warmups=10,iterations=100)
                    del graph
            else:
                for _ in range(10):complete()
                torch.cuda.synchronize()
                for name,fn in functions.items():
                    roctx.roctxRangePushA(f'S0/case_{i:03d}/{name}'.encode())
                    fn();torch.cuda.synchronize();roctx.roctxRangePop()
                torch.testing.assert_close(y.cpu(),c['golden'],atol=1e-4,rtol=1e-4)
            guard.check()
            save(dest,dict(status='complete',case=i,metadata=s,chain=chain,stages=stages,start_unix=start_wall,end_unix=time.time(),
                a_stride=list(x.stride()),b_stride=list(z.stride()),golden='passed',
                distinction='Stage timings are standalone hot-intermediate diagnostics; do not sum them to replace measured whole-chain time. Profile durations are not formal timing.'))
            if i==ids[0]:save(a.output/f'{a.mode}_loaded_libraries.json',loaded_libraries())
            print(f'{a.mode} case {i:03d}: '+(f'chain {chain["baseline_us"]:.3f} us; '+', '.join(f'{n} {v["mean_us"]:.3f}' for n,v in stages.items()) if chain else 'three labeled native stages')+'; golden passed',flush=True)
            del c,x1,x2,x,z,similarity,mx,y,functions,complete;gc.collect();torch.cuda.empty_cache()
        save(a.output/f'{a.mode}_progress.json',dict(status='finished',completed=len(ids)))

if __name__=='__main__':main()
