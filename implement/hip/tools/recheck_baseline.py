#!/usr/bin/env python3
"""Independently recheck an anomalous baseline and its same-layout control."""
import argparse
import hashlib
import json
from pathlib import Path
import torch
from case_cache import ensure_cases, DEFAULT_CASES
from benchmark_baseline import measure
from experiment_split_b import release
from benchmark_revision import save, sha
ROOT=Path(__file__).resolve().parents[1]
@torch.inference_mode()
def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--cases',type=Path,default=DEFAULT_CASES)
    p.add_argument('--output',type=Path,default=ROOT/'results/resume_20261028/baseline_recheck')
    a=p.parse_args();ensure_cases(a.cases,[11,15]);a.output.mkdir(parents=True,exist_ok=True);items=a.output/'items';items.mkdir(exist_ok=True)
    identity=dict(device=str(torch.cuda.get_device_properties(0)),torch=str(torch.__version__),hip=torch.version.hip,
        baseline_helper_sha256=sha(ROOT/'tools/benchmark_baseline.py'),script_sha256=sha(Path(__file__)),
        manifest_sha256=sha(a.cases/'manifest.json'),warmups=10,iterations=100,ids=[11,15],
        reason='First baseline case15=109us versus same-layout case11=20.9us; independently rerun both, retain first measurements unchanged; not select minimum or average across runs.')
    config=a.output/'identity.json'
    if config.exists() and json.loads(config.read_text())!=identity:raise RuntimeError('Recheck identity changed')
    save(config,identity)
    torch.set_float32_matmul_precision('highest');torch.backends.cuda.matmul.allow_tf32=False
    for i in identity['ids']:
        target=items/f'baseline_{i:03d}_fp32_split.json'
        if target.exists():continue
        c=torch.load(a.cases/f'case_{i:03d}.pt',weights_only=True,map_location='cpu');s=c['metadata']
        stats=measure(c,torch.device('cuda'))
        save(target,dict(status='complete',family='baseline',case=i,config='fp32_split',shape=s['shape'],dtype=s['dtype'],t1=s['t1'],t2=s['t2'],case_sha256=sha(a.cases/f'case_{i:03d}.pt'),**stats))
        print(f'recheck {i}: {stats["baseline_us"]:.3f} us golden passed',flush=True)
        del c;release()
if __name__=='__main__':main()
