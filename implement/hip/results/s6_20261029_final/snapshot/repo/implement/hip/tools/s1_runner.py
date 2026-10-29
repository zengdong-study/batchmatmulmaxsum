#!/usr/bin/env python3
"""S1 fixed host dispatch: bounded validation, strict 10/100 and audited resume."""
import argparse
import ctypes
import gc
import hashlib
import json
from pathlib import Path
import sys
import time
import uuid

import torch
from case_cache import DEFAULT_CASES, ensure_cases
from gpu_exclusive import GPUExclusive
from benchmark_baseline import measure as baseline_measure
from experiment_small import Runner as SmallRunner
from experiment_split_b import Runner as SplitRunner

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / 'split_mn/tools'))
from experiment_split_mn import Runner as MNRunner, check, counters
from s0_native import loaded_libraries


def sha(p):
    with Path(p).open('rb') as f:
        return hashlib.file_digest(f, 'sha256').hexdigest()


def save(p, obj):
    p.parent.mkdir(parents=True, exist_ok=True)
    tmp = p.with_suffix('.tmp')
    tmp.write_text(json.dumps(obj, indent=2, ensure_ascii=False) + '\n')
    tmp.replace(p)


class Entry:
    def __init__(self, library):
        self.lib = ctypes.CDLL(str(library.resolve()))
        self.plan = self.lib.bmms_s1_plan
        self.plan.argtypes = [ctypes.c_int]*8 + [ctypes.POINTER(ctypes.c_int)] + [ctypes.POINTER(ctypes.c_size_t)]*2
        self.plan.restype = ctypes.c_int
        self.fn = self.lib.bmms_s1
        self.fn.argtypes = [ctypes.c_void_p]*4 + [ctypes.c_size_t] + [ctypes.c_int]*8 + [ctypes.c_void_p]
        self.fn.restype = ctypes.c_int

    def params(self, s, allow):
        return (*s['shape'], int(s['dtype'] == 'bfloat16'), int(s['t1']), int(s['t2']), int(allow))

    def query(self, s, allow):
        route, size, offset = ctypes.c_int(-1), ctypes.c_size_t(123), ctypes.c_size_t(456)
        code = self.plan(*self.params(s, allow), ctypes.byref(route), ctypes.byref(size), ctypes.byref(offset))
        return code, route.value, size.value, offset.value

    def workspace(self, size, offset, b):
        if not size:
            return torch.empty(0, dtype=torch.uint8, device='cuda')
        host = torch.full((size,), 0xA5, dtype=torch.uint8)
        host[offset:offset+4*b] = 0
        return host.cuda()

    def call(self, x, z, y, w, s, allow):
        code = self.fn(x.data_ptr(), z.data_ptr(), y.data_ptr(), w.data_ptr(), w.numel(),
                       *self.params(s, allow), torch.cuda.current_stream().cuda_stream)
        if code:
            raise RuntimeError(f'S1 launch status {code}')


def lifecycle(call, workspace, x, z, golden, size, offset, conditional):
    """Each invocation overwrites poison; two streams share only read-only inputs."""
    y = torch.full_like(golden, float('nan'), device='cuda')
    w = workspace()
    call(y, w)
    torch.cuda.synchronize()
    stats = check(y, golden)
    first = y.cpu()
    for _ in range(3):
        y.fill_(float('nan'))
        call(y, w)
        torch.cuda.synchronize()
        assert torch.equal(first, y.cpu()), 'Repeated result changed'
        if conditional:
            counters(w, offset, golden.numel())
    streams = [torch.cuda.Stream(), torch.cuda.Stream()]
    outs = [torch.full_like(y, float('nan')) for _ in streams]
    work = [workspace() for _ in streams]
    assert not size or work[0].data_ptr() != work[1].data_ptr()
    torch.cuda.synchronize()
    for stream, out, ws in zip(streams, outs, work):
        with torch.cuda.stream(stream):
            for _ in range(20):
                call(out, ws)
    torch.cuda.synchronize()
    for out, ws in zip(outs, work):
        check(out, golden)
        if conditional:
            counters(ws, offset, golden.numel())
    return dict(**stats, repeat_equal=True, poison_overwritten=True,
                extra_repeats=3, streams=2, calls_per_stream=20,
                independent_workspace=True, counter_reset=conditional)


def timed(call, golden, workspace, offset, conditional):
    y = torch.empty_like(golden, device='cuda')
    w = workspace()
    for _ in range(10):
        call(y, w)
    torch.cuda.synchronize()
    check(y, golden)
    graph = torch.cuda.CUDAGraph()
    with torch.cuda.graph(graph):
        for _ in range(100):
            call(y, w)
    start, end = torch.cuda.Event(enable_timing=True), torch.cuda.Event(enable_timing=True)
    start.record(); graph.replay(); end.record(); end.synchronize()
    ms = start.elapsed_time(end)
    stats = check(y, golden)
    if conditional:
        counters(w, offset, golden.numel())
    graph.replay(); torch.cuda.synchronize()
    check(y, golden)
    if conditional:
        counters(w, offset, golden.numel())
    return dict(**stats, device_us=ms*10, total_device_ms=ms,
                warmups=10, iterations=100, extra_replay_pass=True)


def accepted(path, out):
    if not path.exists():
        return False
    item = json.loads(path.read_text())
    audit = out / 'audits' / (item['attempt'] + '.json')
    if not audit.exists() or not json.loads(audit.read_text())['valid']:
        raise RuntimeError(f'Unaudited/interrupted item {path}; preserve it and choose a new output directory')
    assert item['status'] == 'complete'
    return True


@torch.inference_mode()
def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--build', type=Path, default=Path('/tmp/bmms-s1-build'))
    p.add_argument('--cases', type=Path, default=DEFAULT_CASES)
    p.add_argument('--output', type=Path, required=True)
    p.add_argument('--ids', nargs='+', type=int, default=list(range(1,33)))
    p.add_argument('--mode', choices=['validate', 'time', 'profile'], required=True)
    p.add_argument('--max-cases', type=int, help='stop cleanly after this many NEW complete cases')
    a = p.parse_args()
    if len(set(a.ids)) != len(a.ids) or not all(1 <= i <= 32 for i in a.ids):
        p.error('S1 scope is original cases 1..32, no duplicate IDs')
    if a.max_cases is not None and a.max_cases < 1:
        p.error('--max-cases must be positive')
    a.output.mkdir(parents=True, exist_ok=True)
    libs = [a.build/'libbmms_s1.so', a.build/'libbmms_small.so', a.build/'split_mn/libbmms_split_mn.so']
    sources = [ROOT/'CMakeLists.txt', ROOT/'split_mn/CMakeLists.txt',
               *sorted((ROOT/'src').glob('*.hip')), *sorted((ROOT/'include').rglob('*.h*')),
               *sorted((ROOT/'split_mn/src').glob('*.hip')), *sorted((ROOT/'split_mn/include').rglob('*.h*')),
               Path(__file__), ROOT/'tools/gpu_exclusive.py', ROOT/'tools/benchmark_baseline.py',
               ROOT/'tools/s0_native.py', ROOT/'tools/experiment_small.py', ROOT/'tools/experiment_split_b.py',
               ROOT/'split_mn/tools/experiment_split_mn.py', ROOT/'tools/case_cache.py',
               ROOT.parent/'script/generate_cases.py', ROOT.parent/'cases/manifest.json', ROOT.parent/'cases/content_hashes.json']
    attempt = uuid.uuid4().hex
    audit = a.output/'audits'/f'{attempt}.json'
    with GPUExclusive(audit) as guard:
        torch.cuda.init(); guard.adopt_context()
        ensure_cases(a.cases, a.ids)
        torch.set_float32_matmul_precision('highest')
        torch.backends.cuda.matmul.allow_tf32 = False
        identity = dict(policy='S1-v1 fixed host metadata dispatch, conditional paths explicitly opted in',
                        ids=a.ids, libraries={str(x.resolve()):sha(x) for x in libs},
                        sources={str(x.relative_to(ROOT.parent.parent)):sha(x) for x in sources},
                        cases={str(i):sha(a.cases/f'case_{i:03d}.pt') for i in a.ids},
                        device=str(torch.cuda.get_device_properties(0)), torch=str(torch.__version__),
                        torch_commit=torch.version.git_version, hip=torch.version.hip,
                        runtime_libraries=loaded_libraries(), warmups=10, iterations=100,
                        criterion='abs <= 1e-4 + 1e-4*abs(golden), provisional')
        ip = a.output/'identity.json'
        if ip.exists() and json.loads(ip.read_text()) != identity:
            raise RuntimeError('Identity changed; use a new output directory')
        save(ip, identity)
        entry, small, split, mn = Entry(libs[0]), SmallRunner(libs[1]), SplitRunner(libs[1]), MNRunner(libs[2])
        specs = json.loads((a.cases/'manifest.json').read_text())['cases']
        # Host dispatch ignores ID and seed. Exercise opt-out and malformed calls.
        host = []
        for s in specs:
            clean = {k:s[k] for k in ('shape', 'dtype', 't1', 't2')}
            for allow in (False, True):
                code, route, size, off = entry.query(clean, allow)
                if s['id'] in (33,34,35,36):
                    assert code == 2 and (route,size,off) == (-1,123,456)
                elif s['id'] in (27,32) and not allow:
                    assert code == 2 and (route,size,off) == (-1,123,456)
                else:
                    expected = 3 if allow and s['shape'][2] == 1 and s['shape'][1] > 128 else 2 if allow and s['shape'] == [4,32,1024,128] else 1 if s['id'] in list(range(9,17))+list(range(37,41)) else 0
                    assert code == 0 and route == expected
                    assert bool(size) == (route >= 2)
                host.append(dict(case=s['id'],allow=allow,status=code,route=route,bytes=size,offset=off))
        for params in [(0,1,1,32,0,0,0,0),(1,1,1,32,2,0,0,0),(1,1,1,32,0,0,0,2)]:
            route,size,off = ctypes.c_int(-1),ctypes.c_size_t(123),ctypes.c_size_t(456)
            assert entry.plan(*params,ctypes.byref(route),ctypes.byref(size),ctypes.byref(off)) == 1
            assert (route.value,size.value,off.value) == (-1,123,456)
        save(a.output/'host_dispatch.json',dict(status='passed',queries=host,invalid_queries=3,metadata_only=True))
        new = 0
        for i in a.ids:
            target = a.output/a.mode/f'case_{i:03d}.json'
            if accepted(target,a.output):
                continue
            if a.mode == 'time' and not accepted(a.output/'validate'/f'case_{i:03d}.json',a.output):
                raise RuntimeError(f'Validate case {i} before timing')
            guard.check()
            started = time.time()
            save(a.output/'progress.json',dict(attempt=attempt,mode=a.mode,case=i,status='running'))
            c = torch.load(a.cases/f'case_{i:03d}.pt',weights_only=True,map_location='cpu')
            s = c['metadata']; assert s == specs[i-1]
            # The operator sees only input metadata, never ID, seed or golden.
            s = {k:s[k] for k in ('shape','dtype','t1','t2')}
            x,z = c['x1'].cuda(),c['x2'].cuda()
            code,route,size,offset = entry.query(s,True); assert code == 0
            workspace = lambda:entry.workspace(size,offset,s['shape'][0])
            call = lambda y,w:entry.call(x,z,y,w,s,True)
            if route == 2:
                control_name='original_split_b_gb1_w8_n32'
                control = lambda y,w:split.call(x,z,y,s,(1,8,32))
                control_ws = lambda:entry.workspace(0,0,s['shape'][0])
                control_off=0; control_cond=False
            elif route == 3:
                control_name='split_m_g16_w1'
                control = lambda y,w:mn.call(x,z,y,w,s,(0,16,1))
                _,control_off=mn.workspace(s,(0,16,1))
                control_ws = lambda:mn.workspace(s,(0,16,1))[0]
                control_cond=True
            else:
                control_name='original_small_matrix'
                control = lambda y,w:small.call(x,z,y,s,True,8)
                control_ws = lambda:entry.workspace(0,0,s['shape'][0])
                control_off=0; control_cond=False
            result = dict(status='complete',attempt=attempt,case=i,metadata=s,route=route,
                          conditional=route>=2,workspace_bytes=size,counter_offset=offset,control_name=control_name)
            if a.mode == 'validate':
                result['entry'] = lifecycle(call,workspace,x,z,c['golden'],size,offset,route>=2)
                result['control'] = lifecycle(control,control_ws,x,z,c['golden'],1 if control_cond else 0,control_off,control_cond)
                # Compare wrapper with exactly the selected original configuration.
                y=torch.empty_like(c['golden'],device='cuda'); w=workspace()
                call(y,w); torch.cuda.synchronize(); first=y.cpu()
                if route>=2:
                    mn.call(x,z,y,w,s,(1,64,2) if route==2 else (0,64,4))
                else:
                    small.call(x,z,y,s,True,8)
                torch.cuda.synchronize(); assert torch.equal(first,y.cpu())
                result['selected_original_equal']=True
            elif a.mode == 'time':
                # Alternate order by metadata-independent test index; never selects a route.
                if i%2:
                    result['baseline']=baseline_measure(c,torch.device('cuda'))
                result['entry']=timed(call,c['golden'],workspace,offset,route>=2)
                result['control']=timed(control,c['golden'],control_ws,control_off,control_cond)
                if not i%2:
                    result['baseline']=baseline_measure(c,torch.device('cuda'))
                result['baseline_over_entry']=result['baseline']['baseline_us']/result['entry']['device_us']
                result['control_over_entry']=result['control']['device_us']/result['entry']['device_us']
            else:
                y=torch.full_like(c['golden'],float('nan'),device='cuda');w=workspace()
                torch.cuda.synchronize()
                call(y,w);torch.cuda.synchronize()
                result['entry']=check(y,c['golden'])
                result['operator_calls']=1
            torch.cuda.synchronize();guard.check()
            result.update(start_unix=started,end_unix=time.time())
            save(target,result)
            print(f'{a.mode} case {i:03d}, host route {route}: passed'+
                  (f", entry {result['entry']['device_us']:.3f} us, baseline/entry {result['baseline_over_entry']:.3f}" if a.mode=='time' else ''),flush=True)
            del c,x,z,call,workspace,control,control_ws
            gc.collect();torch.cuda.empty_cache()
            new += 1
            if a.max_cases and new>=a.max_cases:
                break
        guard.check()
        save(a.output/'progress.json',dict(attempt=attempt,mode=a.mode,status='bounded_run_finished',new_cases=new))
    # Exit audit must validate before results become eligible for resume/reuse.
    complete=[i for i in a.ids if accepted(a.output/a.mode/f'case_{i:03d}.json',a.output)]
    save(a.output/f'{a.mode}_summary.json',dict(status='complete' if complete==a.ids else 'partial',
                                              completed=complete,remaining=[i for i in a.ids if i not in complete],attempt=attempt))


if __name__ == '__main__':
    main()
