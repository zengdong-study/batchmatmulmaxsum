#!/usr/bin/env python3
"""Device-only split PyTorch baseline for the 40 persisted cases (10 warmups, 100 mean)."""
import argparse
import csv
import gc
import hashlib
import json
from pathlib import Path

import torch

ROOT = Path(__file__).resolve().parents[1]
WARMUPS = 10
ITERATIONS = 100


@torch.inference_mode()
def measure(case, device):
    s = case['metadata']
    b, m, n, _ = s['shape']
    # Preserve the actual storage layout, then interpret the logical matrices.
    x1 = case['x1'].to(device)
    x2 = case['x2'].to(device)
    a = (x1.transpose(1, 2) if s['t1'] else x1).float()
    c = (x2.transpose(1, 2) if s['t2'] else x2).float()
    similarity = torch.empty((b, m, n), dtype=torch.float32, device=device)
    row_max = torch.empty((b, m), dtype=torch.float32, device=device)
    y = torch.empty(b, dtype=torch.float32, device=device)

    def split():
        torch.bmm(a, c, out=similarity)
        torch.amax(similarity, dim=-1, out=row_max)
        torch.sum(row_max, dim=-1, dtype=torch.float32, out=y)

    # Exactly ten untimed operator executions, including library initialization.
    for _ in range(WARMUPS):
        split()
    torch.cuda.synchronize(device)
    expected = case['golden']
    actual = y.cpu()
    torch.testing.assert_close(actual, expected, atol=1e-4, rtol=1e-4)
    diff = (actual.double() - expected.double()).abs()
    relative = diff / expected.double().abs().clamp_min(1e-12)

    # Capture only: no replay warmup. The graph contains exactly 100 split calls.
    # All outputs are preallocated and reused, so no per-iteration allocations.
    graph = torch.cuda.CUDAGraph()
    with torch.cuda.graph(graph):
        for _ in range(ITERATIONS):
            split()
    start = torch.cuda.Event(enable_timing=True)
    end = torch.cuda.Event(enable_timing=True)
    start.record()
    graph.replay()
    end.record()
    end.synchronize()
    elapsed_ms = start.elapsed_time(end)
    # Checking the last measured output happens strictly outside the event range.
    torch.testing.assert_close(y.cpu(), expected, atol=1e-4, rtol=1e-4)
    return dict(
        baseline_us=elapsed_ms * 1000 / ITERATIONS,
        total_device_ms=elapsed_ms,
        warmups=WARMUPS,
        iterations=ITERATIONS,
        max_abs=diff.max().item(),
        max_rel=relative.max().item(),
        fp32_a_stride=list(a.stride()),
        fp32_b_stride=list(c.stride()),
        similarity_bytes=similarity.numel() * similarity.element_size(),
    )


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--cases', type=Path, default=ROOT.parent / 'cases')
    parser.add_argument('--output', type=Path, default=ROOT / 'results' / 'baseline_device_10_100')
    args = parser.parse_args()
    if not torch.cuda.is_available():
        parser.error('A HIP/CUDA device is required; CPU wall time is not a fallback')
    args.output.mkdir(parents=True, exist_ok=True)
    torch.set_float32_matmul_precision('highest')
    torch.backends.cuda.matmul.allow_tf32 = False
    device = torch.device('cuda', torch.cuda.current_device())
    metadata = dict(
        scope='exactly case_001.pt through case_040.pt; no shape scans',
        operator='torch.bmm(FP32 logical inputs) -> torch.amax(N) -> torch.sum(M, FP32)',
        input_conversion='actual FP16/BF16 values converted to FP32 before timing; logical transpose views, no explicit contiguous conversion',
        method='device events around one HIP graph replay containing exactly 100 split calls; elapsed/100 arithmetic mean',
        warmups=WARMUPS, iterations=ITERATIONS,
        statistic='arithmetic mean, not median; no adaptive repetition',
        includes='FP32 BMM and two separate reductions, intermediate global-memory traffic, device/graph scheduling',
        excludes='file IO, host/device copies, dtype conversion, allocations, graph capture, reference checking, host wall time',
        output_buffers='preallocated once per case and reused; similarity is temporary device memory, never persisted',
        numerical_check='abs <= 1e-4 + 1e-4*abs(saved golden), provisional',
        float32_matmul_precision=torch.get_float32_matmul_precision(),
        allow_tf32=torch.backends.cuda.matmul.allow_tf32,
        torch_version=str(torch.__version__), hip_version=torch.version.hip,
        device=str(torch.cuda.get_device_properties(device)),
        script_sha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        comparison='old fused timings use a different protocol; no direct speedup claimed',
    )
    (args.output / 'timing_method.json').write_text(json.dumps(metadata, indent=2) + '\n')
    rows = []
    fields = ['case', 'B', 'M', 'N', 'K', 'dtype', 't1', 't2',
              'baseline_us', 'total_device_ms', 'warmups', 'iterations',
              'max_abs', 'max_rel', 'similarity_bytes', 'fp32_a_stride', 'fp32_b_stride']
    with (args.output / 'baseline.csv').open('w', newline='') as f:
        writer = csv.DictWriter(f, fieldnames=fields)
        writer.writeheader()
        for i in range(1, 41):
            path = args.cases / f'case_{i:03d}.pt'
            case = torch.load(path, weights_only=True, map_location='cpu')
            s = case['metadata']
            if s['id'] != i:
                raise ValueError(f'Unexpected case metadata in {path}')
            print(f'[{i:02d}/40] measuring {s["shape"]} {s["dtype"]} {s["t1"]}/{s["t2"]}', flush=True)
            result = measure(case, device)
            row = dict(case=i, **dict(zip(('B', 'M', 'N', 'K'), s['shape'])),
                       dtype=s['dtype'], t1=s['t1'], t2=s['t2'], **result)
            writer.writerow(row)
            f.flush()
            rows.append(row)
            print(f'[{i:02d}/40] mean {result["baseline_us"]:.3f} us, golden passed', flush=True)
            del case
            # Release large per-case graph/buffers before the next case, outside timing.
            gc.collect()
            torch.cuda.empty_cache()
    assert len(rows) == 40
    lines = ['# 拆分算子 device 基线', '',
             '范围：全部 40 个持久化 case。每个 case 10 次预热，100 次测量取算术平均。', '',
             'FP32 bmm → amax(N) → sum(M)。输入转换、搬运、分配及 graph 捕获在计时外；GPU event 测量包含 100 次调用的 HIP Graph，elapsed/100。相似度矩阵只在设备临时存在，不保存。', '',
             '40 个输出均与已有 golden 按暂定混合误差标准核对通过。旧融合数据计时口径不同，本表不直接计算加速比。', '',
             '| case | B/M/N/K | dtype | T1/T2 | 平均 device 耗时 μs |',
             '|---:|---|---|---|---:|']
    for r in rows:
        shape = '/'.join(str(r[k]) for k in ('B', 'M', 'N', 'K'))
        lines.append(f'| {r["case"]} | {shape} | {r["dtype"]} | {r["t1"]}/{r["t2"]} | {r["baseline_us"]:.3f} |')
    lines += ['', '原始数据：[baseline.csv](baseline.csv)；计时配置：[timing_method.json](timing_method.json)。', '']
    (args.output / 'summary.md').write_text('\n'.join(lines))
    (args.output / 'validation.json').write_text(json.dumps(dict(
        completed_cases=40, golden_checks='all passed', warmups=WARMUPS,
        iterations=ITERATIONS, statistical_method='arithmetic mean',
        max_abs=max(r['max_abs'] for r in rows), max_rel=max(r['max_rel'] for r in rows),
    ), indent=2) + '\n')


if __name__ == '__main__':
    main()
