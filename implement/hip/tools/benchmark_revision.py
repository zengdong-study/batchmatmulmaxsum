#!/usr/bin/env python3
"""Resume fingerprinted 10/100 comparisons using only persisted eligible cases."""
import argparse
import csv
import hashlib
import json
from pathlib import Path
import torch
from benchmark_baseline import measure as split_measure
from benchmark_fused import selected, error_stats
from experiment_small import Runner as SmallRunner, PATHS
from experiment_split_b import Runner as SplitRunner, CONFIGS, time_config, check, release

ROOT = Path(__file__).resolve().parents[1]

def sha(path):
    with path.open('rb') as f:
        return hashlib.file_digest(f, 'sha256').hexdigest()

def save(path, obj):
    temp = path.with_suffix('.tmp')
    temp.write_text(json.dumps(obj, indent=2) + '\n')
    temp.replace(path)

@torch.inference_mode()
def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--library', type=Path, required=True)
    p.add_argument('--output', type=Path, required=True)
    p.add_argument('--cases', type=Path, default=ROOT.parent/'cases')
    p.add_argument('--families', nargs='+', choices=['baseline','small','simd','split','large'], default=['small','split','large'])
    a = p.parse_args(); a.output.mkdir(parents=True, exist_ok=True)
    items = a.output/'items'; items.mkdir(exist_ok=True)
    specs = json.loads((a.cases/'manifest.json').read_text())['cases']
    small_ids = [s['id'] for s in specs if selected(s)]
    assert len(small_ids) == 22
    jobs = []
    if 'baseline' in a.families:
        jobs += [('baseline',i,'fp32_split',None) for i in sorted(set(small_ids + list(range(9,17)) + list(range(37,41))))]
    if 'small' in a.families:
        jobs += [('small',i,'matrix',None) for i in small_ids]
    if 'simd' in a.families:
        jobs += [('simd',i,name,lk) for i in small_ids for name,m,lk in PATHS if not m]
    if 'split' in a.families:
        jobs += [('split',i,'gb%d_w%d_n%d'%c,c) for i in range(9,17) for c in CONFIGS]
    if 'large' in a.families:
        jobs += [('large',i,'gb1_w4_n64',(1,4,64)) for i in range(37,41)]
    identity = dict(library_sha256=sha(a.library), script_sha256=sha(Path(__file__)),
        helpers={f:sha(ROOT/'tools'/f) for f in ['benchmark_baseline.py','benchmark_fused.py','experiment_small.py','experiment_split_b.py']},
        manifest_sha256=sha(a.cases/'manifest.json'), warmups=10, iterations=100,
        device=str(torch.cuda.get_device_properties(0)),torch=str(torch.__version__),hip=torch.version.hip,
        case_sha256={str(i):sha(a.cases/f'case_{i:03d}.pt') for i in sorted({j[1] for j in jobs})},
        jobs=[list(j[:3]) for j in jobs])
    config=a.output/'identity.json'
    if config.exists() and json.loads(config.read_text())!=identity:
        raise RuntimeError('Version/device/input/scope changed; choose a new output')
    save(config,identity)
    torch.set_float32_matmul_precision('highest'); torch.backends.cuda.matmul.allow_tf32=False
    sr,br=SmallRunner(a.library),SplitRunner(a.library)
    for family,i,name,setting in jobs:
        target=items/f'{family}_{i:03d}_{name}.json'
        if target.exists():
            old=json.loads(target.read_text())
            if old.get('status')!='complete': raise RuntimeError(f'Incomplete record {target}')
            continue
        save(a.output/'progress.json',dict(status='running',family=family,case=i,config=name))
        c=torch.load(a.cases/f'case_{i:03d}.pt',weights_only=True,map_location='cpu'); s=c['metadata']
        assert s==specs[i-1]
        if family=='baseline': stats=split_measure(c,torch.device('cuda'))
        else:
            x,z=c['x1'].cuda(),c['x2'].cuda(); y=torch.empty(s['shape'][0],device='cuda')
            if family in ('small','simd'):
                matrix=family=='small'; lk=8 if matrix else setting
                for _ in range(10):sr.call(x,z,y,s,matrix,lk)
                torch.cuda.synchronize();check(y,c['golden'])
                graph=torch.cuda.CUDAGraph()
                with torch.cuda.graph(graph):
                    for _ in range(100):sr.call(x,z,y,s,matrix,lk)
                start,end=torch.cuda.Event(enable_timing=True),torch.cuda.Event(enable_timing=True)
                start.record();graph.replay();end.record();end.synchronize()
                elapsed=start.elapsed_time(end);stats=error_stats(y,c['golden'])
                if not stats['golden_passed']:raise AssertionError(stats)
                stats.update(device_us=elapsed*10,total_device_ms=elapsed,warmups=10,iterations=100)
                del graph
            else: stats=time_config(br,x,z,y,s,setting,c['golden'])
            # Additional overwrite/repeat checks are outside the performance protocol.
            first=y.clone()
            if family in ('small','simd'):sr.call(x,z,y,s,matrix,lk)
            else:br.call(x,z,y,s,setting)
            torch.cuda.synchronize()
            if not torch.equal(first,y):raise AssertionError('Non-repeatable result')
            stats['repeat_equal']=True
            del x,z,y,first
        row=dict(status='complete',family=family,case=i,config=name,shape=s['shape'],dtype=s['dtype'],t1=s['t1'],t2=s['t2'],**stats)
        save(target,row)
        print(f'{family} {i:03d} {name}: {stats.get("device_us",stats.get("baseline_us")):.3f} us golden passed',flush=True)
        del c; release()
    rows=[json.loads((items/f'{f}_{i:03d}_{n}.json').read_text()) for f,i,n,_ in jobs]
    fields=list(dict.fromkeys(k for r in rows for k in r))
    with (a.output/'measurements.csv').open('w',newline='') as f:
        w=csv.DictWriter(f,fieldnames=fields);w.writeheader();w.writerows(rows)
    save(a.output/'progress.json',dict(status='finished',completed=len(rows),warmups=10,iterations=100))

if __name__=='__main__':main()
