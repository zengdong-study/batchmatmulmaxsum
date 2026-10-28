#!/usr/bin/env python3
"""Validate split-B on persisted cases and measure device means (10 warmups/100 calls)."""
import argparse
import csv
import ctypes
import gc
import hashlib
import json
from pathlib import Path
import torch
from case_cache import ensure_cases, DEFAULT_CASES

ROOT=Path(__file__).resolve().parents[1]
# groupB, wavesPerBatch, groupBaseN; no configuration has >8 waves/block.
CONFIGS=[(1,1,16),(1,1,32),(1,1,64),(1,2,32),(1,4,32),(1,8,32),
         (2,1,32),(4,1,32),(8,1,32),(2,2,64),(2,4,64),(4,2,64)]
LARGE_CONFIGS=[(1,1,64),(1,4,64),(2,2,64),(4,1,64)]
WARMUPS,ITERATIONS=10,100


def save(path,value):
    temp=path.with_suffix(path.suffix+'.tmp')
    temp.write_text(json.dumps(value,indent=2)+'\n');temp.replace(path)


def name(config):
    return 'gb%d_w%d_n%d'%config


class Runner:
    def __init__(self,path):
        self.lib=ctypes.CDLL(str(path))
        self.fn=self.lib.bmms_split_b
        self.fn.argtypes=[ctypes.c_void_p]*3+[ctypes.c_int]*10+[ctypes.c_void_p]
        self.fn.restype=ctypes.c_int
    def call(self,x,z,y,s,config):
        b,m,n,k=s['shape'];gb,w,gn=config
        code=self.fn(x.data_ptr(),z.data_ptr(),y.data_ptr(),b,m,n,k,
            int(s['dtype']=='bfloat16'),int(s['t1']),int(s['t2']),gb,w,gn,
            torch.cuda.current_stream().cuda_stream)
        if code:raise RuntimeError(f'split-B status={code}, config={config}, case={s["id"]}')


def check(y,expected):
    actual=y.cpu()
    torch.testing.assert_close(actual,expected,atol=1e-4,rtol=1e-4)
    diff=(actual.double()-expected.double()).abs()
    return dict(max_abs=diff.max().item(),max_rel=(diff/expected.double().abs().clamp_min(1e-12)).max().item())


def load(args,i):
    c=torch.load(args.cases/f'case_{i:03d}.pt',weights_only=True,map_location='cpu')
    return c,c['x1'].cuda(),c['x2'].cuda(),torch.empty(c['metadata']['shape'][0],device='cuda')


def release():
    gc.collect();torch.cuda.empty_cache()


@torch.inference_mode()
def validate(runner,args):
    rows=[]
    for i in range(1,33):
        c,x,z,y=load(args,i);s=c['metadata']
        for config in CONFIGS:
            runner.call(x,z,y,s,config);torch.cuda.synchronize()
            stats=check(y,c['golden']);first=y.clone()
            for _ in range(3):
                runner.call(x,z,y,s,config);torch.cuda.synchronize()
                if not torch.equal(first,y):raise AssertionError(f'Non-repeatable case {i}, {config}')
            rows.append(dict(case=i,config=name(config),repeat_equal=True,**stats))
        print(f'validate {i:03d}: 12 configs, golden and repeat equality passed',flush=True)
        del c,x,z,y,first
        release()
    # Two streams, tail batch group and multiple cooperating waves, separate outputs.
    c,x,z,y=load(args,1);torch.cuda.synchronize()
    streams=[torch.cuda.Stream(),torch.cuda.Stream()]
    outs=[torch.empty_like(y),torch.empty_like(y)]
    for stream,out in zip(streams,outs):
        with torch.cuda.stream(stream):runner.call(x,z,out,c['metadata'],(4,2,64))
    torch.cuda.synchronize()
    for out in outs:check(out,c['golden'])
    # Existing small C ABI must continue to select the old family.
    old=runner.lib.bmms_small
    old.argtypes=[ctypes.c_void_p]*3+[ctypes.c_int]*9+[ctypes.c_void_p]
    old.restype=ctypes.c_int
    for i in (1,9,25,28,30):
        c,x,z,y=load(args,i);s=c['metadata'];b,m,n,k=s['shape']
        for matrix in (0,1):
            status=old(x.data_ptr(),z.data_ptr(),y.data_ptr(),b,m,n,k,
                int(s['dtype']=='bfloat16'),int(s['t1']),int(s['t2']),matrix,8,
                torch.cuda.current_stream().cuda_stream)
            if status:raise RuntimeError(f'small regression status {status}')
            torch.cuda.synchronize();check(y,c['golden'])
    save(args.output/'correctness.json',dict(cases=list(range(1,33)),configurations=CONFIGS,
        checks=len(rows),extra_repeats=3,criterion='abs <= 1e-4 + 1e-4*abs(golden); provisional',
        concurrent_streams='passed',small_regression_cases=[1,9,25,28,30],results=rows))


@torch.inference_mode()
def preflight(runner,args):
    rows=[]
    for i in range(37,41):
        c,x,z,y=load(args,i);s=c['metadata']
        start,end=torch.cuda.Event(enable_timing=True),torch.cuda.Event(enable_timing=True)
        start.record();runner.call(x,z,y,s,(1,4,64));end.record();end.synchronize()
        elapsed=start.elapsed_time(end)
        stats=check(y,c['golden'])
        row=dict(case=i,single_device_ms=elapsed,config=name((1,4,64)),**stats,
            eligible_for_full_timing=elapsed<=args.large_limit_ms)
        rows.append(row)
        save(args.output/'large_preflight.json',dict(
            kind='single un-warmed feasibility/correctness check, NOT a 10/100 performance result',
            policy=f'full 10/100 timing only if pilot <= {args.large_limit_ms}ms; engineering runtime budget, not dispatch threshold',results=rows))
        print(f'preflight {i}: {elapsed:.3f} ms, golden passed, full timing={row["eligible_for_full_timing"]}',flush=True)
        del c,x,z,y
        release()
    return rows


@torch.inference_mode()
def time_config(runner,x,z,y,s,config,expected):
    for _ in range(WARMUPS):runner.call(x,z,y,s,config)
    torch.cuda.synchronize();check(y,expected)
    graph=torch.cuda.CUDAGraph()
    with torch.cuda.graph(graph):
        for _ in range(ITERATIONS):runner.call(x,z,y,s,config)
    start,end=torch.cuda.Event(enable_timing=True),torch.cuda.Event(enable_timing=True)
    start.record();graph.replay();end.record();end.synchronize()
    elapsed=start.elapsed_time(end)
    stats=check(y,expected)
    return dict(device_us=elapsed*1000/ITERATIONS,total_device_ms=elapsed,
                warmups=WARMUPS,iterations=ITERATIONS,**stats)


@torch.inference_mode()
def performance(runner,args,pilots):
    baseline={int(r['case']):r for r in csv.DictReader(args.baseline.open())}
    jobs={i:CONFIGS for i in range(9,17)}
    jobs.update({r['case']:LARGE_CONFIGS for r in pilots if r['eligible_for_full_timing']})
    rows=[]
    fields=['case','B','M','N','K','dtype','t1','t2','config','groupB','wavesPerBatch','groupBaseN',
            'device_us','total_device_ms','warmups','iterations','baseline_us','speedup','max_abs','max_rel']
    with (args.output/'performance.csv').open('w',newline='') as f:
        writer=csv.DictWriter(f,fieldnames=fields);writer.writeheader()
        for i,configs in jobs.items():
            c,x,z,y=load(args,i);s=c['metadata']
            assert int(baseline[i]['warmups'])==10 and int(baseline[i]['iterations'])==100
            for config in configs:
                stats=time_config(runner,x,z,y,s,config,c['golden'])
                gb,w,gn=config
                row=dict(case=i,**dict(zip(('B','M','N','K'),s['shape'])),dtype=s['dtype'],t1=s['t1'],t2=s['t2'],
                    config=name(config),groupB=gb,wavesPerBatch=w,groupBaseN=gn,
                    baseline_us=float(baseline[i]['baseline_us']),**stats)
                row['speedup']=row['baseline_us']/row['device_us']
                writer.writerow(row);f.flush();rows.append(row)
                print(f'time {i:03d} {name(config)}: {row["device_us"]:.3f} us, speedup={row["speedup"]:.4f}',flush=True)
            del c,x,z,y
            release()
    return rows,jobs


def summarize(args,rows,jobs,pilots):
    lines=['# split-B 分支测试结果','',
        '一个 block 负责 groupB 个 batch；每个 batch 由 wavesPerBatch 个 wave 协作 M tile，block 内完成最终 Sum。','',
        '正确性：case 1–32 × 12 配置，含两 dtype、四布局、尾块、groupB 尾部、全负及长归约；每项额外重复3次。',
        'case 37–40 为单次可行性检查；33–36 为 B=1 且 M/N/K 极大，不作为该分支的合适测试。',
        '主要性能：case 9–16；极限 case 仅在单次 pilot 满足运行预算时加入。',
        '性能统一为10次预热、100次device算术平均；HIP event + 单次100调用graph replay；输入/分配/捕获/验证不计时。','',
        '| case | 最快实测配置 | baseline μs | split-B μs | 加速比 |','|---:|---|---:|---:|---:|']
    for i in jobs:
        best=min((r for r in rows if r['case']==i),key=lambda r:r['device_us'])
        lines.append(f'| {i} | {best["config"]} | {best["baseline_us"]:.3f} | {best["device_us"]:.3f} | {best["speedup"]:.4f} |')
    lines+=['','## 极限形状 pilot（不是正式平均耗时）','',
            '| case | 单次 device ms | 正式计时 |','|---:|---:|---|']
    for r in pilots:lines.append(f'| {r["case"]} | {r["single_device_ms"]:.3f} | {"纳入" if r["eligible_for_full_timing"] else "跳过：不满足运行预算"} |')
    lines+=['','现有40个case缺少B较大且M/N适中的形状；case9–16的B仅为4。不能由本轮结果断言高B的一般性能。',
        'groupB和wave数均为显式实验配置，未启用自动选择。旧small数据保留，新库使用独立构建目录。',
        '原始结果：[performance.csv](performance.csv)、[correctness.json](correctness.json)、[large_preflight.json](large_preflight.json)。','']
    (args.output/'summary.md').write_text('\n'.join(lines))
    specs=json.loads((args.cases/'manifest.json').read_text())['cases']
    save(args.output/'selection.json',dict(correctness_ids=list(range(1,33)),preflight_ids=list(range(37,41)),
        performance_ids=list(jobs),skipped_ids=[33,34,35,36],
        skip_reason='B=1 and extreme M/N/K; prefer future M/N split, not split-B',
        large_full_timing_skipped=[r['case'] for r in pilots if not r['eligible_for_full_timing']],case_count=len(specs)))
    save(args.output/'validation.json',dict(correctness_checks=32*len(CONFIGS),performance_rows=len(rows),
        preflight_checks=len(pilots),golden='all passed, provisional mixed tolerance',
        max_abs=max(r['max_abs'] for r in rows),max_rel=max(r['max_rel'] for r in rows)))


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--library',type=Path,default=Path('/tmp/bmms-splitb-build/libbmms_small.so'))
    p.add_argument('--cases',type=Path,default=DEFAULT_CASES)
    p.add_argument('--baseline',type=Path,default=ROOT/'results/baseline_device_10_100/baseline.csv')
    p.add_argument('--output',type=Path,default=ROOT/'results/split_b_v1')
    p.add_argument('--large-limit-ms',type=float,default=50.,help='single pilot feasibility limit; not a performance result')
    p.add_argument('--mode',choices=['all','smoke','large'],default='all')
    args=p.parse_args();args.output.mkdir(parents=True,exist_ok=True)
    ensure_cases(args.cases, [1] if args.mode=='smoke' else list(range(37,41)) if args.mode=='large' else list(range(1,33))+list(range(37,41)))
    runner=Runner(args.library)
    if args.mode=='smoke':
        c,x,z,y=load(args,1)
        runner.call(x,z,y,c['metadata'],(4,2,64));torch.cuda.synchronize();check(y,c['golden'])
        print('split-B smoke passed',flush=True);return
    if args.mode=='large':
        baseline={int(r['case']):r for r in csv.DictReader(args.baseline.open())}
        rows=[]
        for i in range(37,41):
            c,x,z,y=load(args,i);spec=c['metadata'];config=(1,4,64)
            stats=time_config(runner,x,z,y,spec,config,c['golden'])
            row=dict(case=i,config=name(config),**dict(zip(('B','M','N','K'),spec['shape'])),
                dtype=spec['dtype'],t1=spec['t1'],t2=spec['t2'],baseline_us=float(baseline[i]['baseline_us']),**stats)
            row['speedup']=row['baseline_us']/row['device_us']
            rows.append(row)
            with (args.output/'large_performance.csv').open('w',newline='') as f:
                writer=csv.DictWriter(f,fieldnames=list(row));writer.writeheader();writer.writerows(rows)
            print(f'large time {i}: {row["device_us"]:.3f} us, speedup={row["speedup"]:.4f}',flush=True)
            del c,x,z,y
            release()
        save(args.output/'large_timing_method.json',dict(
            config=name((1,4,64)),warmups=WARMUPS,iterations=ITERATIONS,
            method='device event, one graph of 100 calls, arithmetic mean; no replay warmup',
            reason='pilot 142-317ms showed one representative config per large-B case is affordable; full multi-config tuning remains skipped',
            library_sha256=hashlib.sha256(args.library.read_bytes()).hexdigest(),
            baseline_sha256=hashlib.sha256(args.baseline.read_bytes()).hexdigest(),
            script_sha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest()))
        lines=['# 大 B 代表配置正式计时','',
            'case37–40，groupB=1、wavesPerBatch=4、groupBaseN=64。每个case10次预热、100次device平均；均通过golden检查。',
            '只测一组代表配置，不宣称已找到极限形状最优参数。','',
            '| case | baseline μs | split-B μs | 加速比 |','|---:|---:|---:|---:|']
        for row in rows:
            lines.append(f'| {row["case"]} | {row["baseline_us"]:.3f} | {row["device_us"]:.3f} | {row["speedup"]:.4f} |')
        lines+=['','原始数据：[large_performance.csv](large_performance.csv)。']
        (args.output/'large_summary.md').write_text('\n'.join(lines)+'\n')
        return
    sources=[Path(__file__),ROOT/'src/batch_matmul_max_sum.hip',*sorted((ROOT/'include/bmms').glob('*'))]
    save(args.output/'environment.json',dict(device=str(torch.cuda.get_device_properties(0)),torch=str(torch.__version__),
        library_sha256=hashlib.sha256(args.library.read_bytes()).hexdigest(),
        sources={str(f.relative_to(ROOT)):hashlib.sha256(f.read_bytes()).hexdigest() for f in sources},
        timing='10 warmups, 100 calls in one graph, one timed replay, device event arithmetic mean',
        baseline_sha256=hashlib.sha256(args.baseline.read_bytes()).hexdigest(),large_limit_ms=args.large_limit_ms))
    validate(runner,args)
    pilots=preflight(runner,args)
    rows,jobs=performance(runner,args,pilots)
    summarize(args,rows,jobs,pilots)
if __name__=='__main__':main()
