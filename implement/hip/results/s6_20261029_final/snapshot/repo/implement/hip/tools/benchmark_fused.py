#!/usr/bin/env python3
"""Small-BMN persisted cases only: exactly 10 warmups and 100 device-mean iterations."""
import argparse
import csv
import gc
import hashlib
import json
import os
from pathlib import Path
import time

import torch
from case_cache import ensure_cases, DEFAULT_CASES
from experiment_small import Runner, PATHS

ROOT = Path(__file__).resolve().parents[1]
WARMUPS, ITERATIONS = 10, 100
LIMITS = dict(B=8, M=128, N=257)

def selected(spec):
    b, m, n, _ = spec["shape"]
    return b <= LIMITS["B"] and m <= LIMITS["M"] and n <= LIMITS["N"]


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def save(path, value):
    tmp = path.with_suffix(path.suffix + '.tmp')
    tmp.write_text(json.dumps(value, indent=2) + '\n')
    tmp.replace(path)


def error_stats(y, expected):
    actual = y.cpu()
    diff = (actual.double() - expected.double()).abs()
    rel = diff / expected.double().abs().clamp_min(1e-12)
    passed = bool(torch.isfinite(actual).all() and (diff <= 1e-4 + 1e-4 * expected.double().abs()).all())
    return dict(golden_passed=passed, max_abs=diff.max().item(), max_rel=rel.max().item())


def refresh(output, baseline, specs):
    rows = []
    for path in sorted((output / 'items').glob('*.json')):
        row = json.loads(path.read_text())
        if row.get('status') in ('complete', 'numerical_failure', 'error', 'skipped'):
            rows.append(row)
    fields = ['case', 'path', 'status', 'B', 'M', 'N', 'K', 'dtype', 't1', 't2',
              'warmups', 'iterations', 'fused_us', 'total_device_ms', 'baseline_us',
              'speedup', 'golden_passed', 'max_abs', 'max_rel', 'error', 'skip_reason', 'imported_from']
    tmp = output / 'fused.csv.tmp'
    with tmp.open('w', newline='') as f:
        writer = csv.DictWriter(f, fieldnames=fields, extrasaction='ignore')
        writer.writeheader()
        writer.writerows(rows)
    tmp.replace(output / 'fused.csv')
    done = {(r['case'], r['path']): r for r in rows}
    lines = ['# small 融合与拆分基线：统一 device 计时', '',
             f'范围：B≤8、M≤128、N≤257，共 22 个 case × 6 配置 = 132 项测量；其余 18 个 case 跳过。已完成测量 {sum(r["status"] != "skipped" for r in rows)} 项。',
             '每项 10 次预热，100 次测量取算术平均；GPU event 计时 HIP Graph。',
             '空白表示尚未完成，不以估算填充结果。仅 golden 通过的测量报告加速比。', '',
             '| case | 状态 | baseline μs | Matrix μs | 最快已完成 SIMD | SIMD μs | 最快已完成加速比 |',
             '|---:|---|---:|---:|---|---:|---:|']
    for s in specs:
        i = s['id']
        mat = done.get((i, 'matrix'))
        simd = [r for r in rows if r['case'] == i and r['path'] != 'matrix' and r.get('golden_passed')]
        best = min(simd, key=lambda r: r['fused_us']) if simd else None
        valid = [r for r in rows if r['case'] == i and r.get('golden_passed')]
        speed = max((r['speedup'] for r in valid), default=None)
        mt = f'{mat["fused_us"]:.3f}' if mat and 'fused_us' in mat else ''
        st = f'{best["fused_us"]:.3f}' if best else ''
        sp = f'{speed:.4f}' if speed is not None else ''
        state = '跳过：超出小BMN范围' if not selected(s) else ('已完成' if all((i, name) in done for name, _, _ in PATHS) else '未完成')
        lines.append(f'| {i} | {state} | {float(baseline[i]["baseline_us"]):.3f} | {mt} | {best["path"] if best else ""} | {st} | {sp} |')
    lines += ['', '完整配置与失败信息见 [fused.csv](fused.csv)，当前进度见 [progress.json](progress.json)。',
              '本次与基线采用相同计时协议；两次运行不同时发生，GPU 状态变化仍可能影响比较。', '']
    (output / 'summary.md').write_text('\n'.join(lines))
    return rows


@torch.inference_mode()
def run(args):
    args.output.mkdir(parents=True, exist_ok=True)
    (args.output / 'items').mkdir(exist_ok=True)
    ensure_cases(args.cases, [])
    specs = json.loads((args.cases / 'manifest.json').read_text())['cases']
    ensure_cases(args.cases, [s['id'] for s in specs if selected(s)])
    if [s['id'] for s in specs] != list(range(1, 41)):
        raise ValueError('Expected exactly 40 cases')
    baseline = {int(r['case']): r for r in csv.DictReader(args.baseline.open())}
    assert set(baseline) == set(range(1, 41))
    assert all(int(r['warmups']) == WARMUPS and int(r['iterations']) == ITERATIONS for r in baseline.values())
    fingerprint = dict(library_sha256=digest(args.library), baseline_sha256=digest(args.baseline),
                       case_manifest_sha256=digest(args.cases / 'manifest.json'), limits=LIMITS,
                       script_sha256=digest(Path(__file__)), warmups=WARMUPS, iterations=ITERATIONS)
    config = args.output / 'timing_method.json'
    if config.exists() and json.loads(config.read_text())['identity'] != fingerprint:
        raise RuntimeError('Input/library/script/protocol changed; use a new output directory')
    save(config, dict(identity=fingerprint,
        scope='22 small-BMN persisted cases x Matrix + SIMD lanesK 1/4/8/16/32; 18 cases explicitly skipped; no scans',
        selected_ids=[s['id'] for s in specs if selected(s)], skipped_ids=[s['id'] for s in specs if not selected(s)],
        method='10 untimed warmup calls; capture exactly 100 calls; one timed graph replay; device elapsed/100 arithmetic mean',
        excludes='loading, copies, allocation, graph capture, golden checks, host wall time',
        includes='fused kernel device execution and graph scheduling',
        precision_check='abs <= 1e-4 + 1e-4*abs(saved golden), provisional',
        device=str(torch.cuda.get_device_properties(0)), torch=str(torch.__version__), hip=torch.version.hip,
        library=str(args.library.resolve()), pid=os.getpid(),
        ordering='ascending per-batch M*N*K; expensive extremes last; no case omitted',
        resume='completed item JSONs are retained; interrupted items restart with fresh 10/100 protocol'))
    runner = Runner(args.library)
    # Reuse only proven identical-binary/input/protocol records from the stopped full run.
    if args.import_from and (args.import_from / 'timing_method.json').exists():
        old = json.loads((args.import_from / 'timing_method.json').read_text())['identity']
        for key in ('library_sha256', 'baseline_sha256', 'case_manifest_sha256', 'warmups', 'iterations'):
            if old[key] != fingerprint[key]:
                raise RuntimeError(f'Cannot import mismatched {key}')
        for spec in specs:
            if not selected(spec):
                continue
            for name, _, _ in PATHS:
                filename = f'case_{spec["id"]:03d}_{name}.json'
                source, target = args.import_from / 'items' / filename, args.output / 'items' / filename
                if source.exists() and not target.exists():
                    record = json.loads(source.read_text())
                    if record['status'] == 'complete':
                        assert record['warmups'] == WARMUPS and record['iterations'] == ITERATIONS
                        assert [record[k] for k in ('B','M','N','K')] == spec['shape']
                        record['imported_from'] = str(source.resolve())
                        save(target, record)
    for spec in specs:
        if selected(spec):
            continue
        for name, _, _ in PATHS:
            save(args.output / 'items' / f'case_{spec["id"]:03d}_{name}.json', dict(
                case=spec['id'], path=name, status='skipped',
                **dict(zip(('B','M','N','K'), spec['shape'])),
                dtype=spec['dtype'], t1=spec['t1'], t2=spec['t2'],
                baseline_us=float(baseline[spec['id']]['baseline_us']),
                skip_reason='User scope: require B<=8, M<=128, N<=257'))
    refresh(args.output, baseline, specs)
    ordered = sorted([s for s in specs if selected(s)], key=lambda s: s['shape'][1] * s['shape'][2] * s['shape'][3])
    for s in ordered:
        i = s['id']
        todo = [(name, matrix, lanes) for name, matrix, lanes in PATHS
                if not (args.output / 'items' / f'case_{i:03d}_{name}.json').exists()]
        if not todo:
            continue
        case = torch.load(args.cases / f'case_{i:03d}.pt', weights_only=True, map_location='cpu')
        assert case['metadata'] == s
        x, z = case['x1'].cuda(), case['x2'].cuda()
        y = torch.empty(s['shape'][0], dtype=torch.float32, device='cuda')
        for name, matrix, lanes in todo:
            row = dict(case=i, path=name, **dict(zip(('B', 'M', 'N', 'K'), s['shape'])),
                       dtype=s['dtype'], t1=s['t1'], t2=s['t2'], warmups=WARMUPS, iterations=ITERATIONS,
                       baseline_us=float(baseline[i]['baseline_us']))
            start_wall = time.time()
            save(args.output / 'progress.json', dict(status='running', stage='warmup', pid=os.getpid(),
                 current_case=i, path=name, shape=s['shape'], started_unix=start_wall))
            print(f'case {i:03d} {name}: 10 warmups, shape={s["shape"]}', flush=True)
            try:
                for _ in range(WARMUPS):
                    runner.call(x, z, y, s, matrix, lanes)
                torch.cuda.synchronize()
                warm_stats = error_stats(y, case['golden'])
                graph = torch.cuda.CUDAGraph()
                with torch.cuda.graph(graph):
                    for _ in range(ITERATIONS):
                        runner.call(x, z, y, s, matrix, lanes)
                save(args.output / 'progress.json', dict(status='running', stage='measurement', pid=os.getpid(),
                     current_case=i, path=name, shape=s['shape'], started_unix=start_wall))
                start, end = torch.cuda.Event(enable_timing=True), torch.cuda.Event(enable_timing=True)
                start.record(); graph.replay(); end.record(); end.synchronize()
                elapsed = start.elapsed_time(end)
                stats = error_stats(y, case['golden'])
                passed = warm_stats['golden_passed'] and stats['golden_passed']
                row.update(stats, golden_passed=passed, fused_us=elapsed * 1000 / ITERATIONS,
                           total_device_ms=elapsed, status='complete' if passed else 'numerical_failure')
                row['speedup'] = row['baseline_us'] / row['fused_us'] if passed else None
                del graph
                print(f'case {i:03d} {name}: {row["fused_us"]:.3f} us, golden={passed}', flush=True)
            except Exception as exc:
                row.update(status='error', error=f'{type(exc).__name__}: {exc}')
                save(args.output / 'items' / f'case_{i:03d}_{name}.json', row)
                refresh(args.output, baseline, specs)
                save(args.output / 'progress.json', dict(status='error', pid=os.getpid(), current_case=i,
                     path=name, error=row['error']))
                raise  # A device execution failure may poison the HIP context.
            save(args.output / 'items' / f'case_{i:03d}_{name}.json', row)
            refresh(args.output, baseline, specs)
        del case, x, z, y
        gc.collect()
        torch.cuda.empty_cache()
    rows = refresh(args.output, baseline, specs)
    assert len(rows) == 240
    save(args.output / 'progress.json', dict(status='finished', measured_target=132,
         correct=sum(r['status'] == 'complete' for r in rows), skipped=sum(r['status'] == 'skipped' for r in rows),
         failed=sum(r['status'] in ('error','numerical_failure') for r in rows)))


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--library', type=Path, default=Path('/tmp/bmms-build/libbmms_small.so'))
    p.add_argument('--cases', type=Path, default=DEFAULT_CASES)
    p.add_argument('--baseline', type=Path, default=ROOT / 'results/baseline_device_10_100/baseline.csv')
    p.add_argument('--output', type=Path, default=ROOT / 'results/fused_small_device_10_100')
    p.add_argument('--import-from', type=Path, default=ROOT / 'results/fused_device_10_100')
    args = p.parse_args()
    run(args)


if __name__ == '__main__':
    main()
