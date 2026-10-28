#!/usr/bin/env python3
"""Cooperative per-BDF lease plus independent GPU-client auditing (not a hardware reservation)."""
import argparse
import fcntl
import json
import os
from pathlib import Path
import subprocess
import threading
import time

class GPUExclusive:
    def __init__(self, output, bdf='0000:03:00.0'):
        self.output=Path(output);self.bdf=bdf;self.samples=[];self.errors=[]
        self.allowed={os.getpid()};self.stop=threading.Event()
    def aliases(self):
        text=Path('/proc/self/status').read_text()
        return {int(x) for line in text.splitlines() if line.startswith('NSpid:') for x in line.split()[1:]}|{os.getpid()}
    def clients(self):
        result=subprocess.run(['amd-smi','process','--gpu',self.bdf,'--json'],capture_output=True,text=True,timeout=15)
        if result.returncode:raise RuntimeError('amd-smi client query failed: '+result.stderr)
        raw=json.loads(result.stdout);pids=set()
        def visit(x):
            if isinstance(x,dict):
                for k,v in x.items():
                    if k.lower() in ('pid','process_id'):
                        try:pids.add(int(v))
                        except (ValueError,TypeError):pass
                    else:visit(v)
            elif isinstance(x,list):
                for v in x:visit(v)
        visit(raw)
        visible=[]
        for proc in Path('/proc').iterdir():
            if not proc.name.isdigit() or int(proc.name)==os.getpid():continue
            try:
                for fd in (proc/'fdinfo').iterdir():
                    data=fd.read_text()
                    if 'drm-pdev:' in data and self.bdf in data:
                        visible.append(int(proc.name));break
            except (PermissionError,FileNotFoundError,ProcessLookupError):continue
        return dict(time_unix=time.time(),management_pids=sorted(pids),visible_drm_pids=sorted(set(visible)),management_raw=raw)
    def check(self):
        snap=self.clients();self.samples.append(snap)
        foreign=(set(snap['management_pids'])|set(snap['visible_drm_pids']))-self.allowed
        if foreign:raise RuntimeError(f'Other target-GPU clients detected: {sorted(foreign)}; no process stopped')
        if self.errors:raise RuntimeError(self.errors[0])
    def adopt_context(self):
        self.allowed|=self.aliases()
        snap=self.clients()
        candidates=set(snap['management_pids'])-self.allowed
        own_fd=False
        for fd in Path('/proc/self/fdinfo').iterdir():
            try:
                data=fd.read_text()
                own_fd|=('drm-pdev:' in data and self.bdf in data)
            except FileNotFoundError:pass
        # amd-smi reports host PIDs, whereas this container's /proc NSpid
        # contains only namespace PIDs. Map only the unique new client after
        # an empty-device startup, and require an actual own target DRM fd.
        if candidates:
            if self.samples[0]['management_pids'] or len(candidates)!=1 or snap['visible_drm_pids'] or not own_fd:
                raise RuntimeError('Cannot safely identify namespace/host GPU PID mapping')
            self.allowed|=candidates
            self.host_pid_mapping=dict(namespace_pid=os.getpid(),host_pid=next(iter(candidates)),
                evidence='empty initial target-client set, unique client after context initialization, own target DRM fd; not inferred from process name')
        self.check()
        def watch():
            while not self.stop.wait(1):
                try:self.check()
                except Exception as exc:self.errors.append(str(exc));break
        self.thread=threading.Thread(target=watch,daemon=True);self.thread.start()
    def __enter__(self):
        self.output.parent.mkdir(parents=True,exist_ok=True)
        lock=Path('/tmp')/('bmms-gpu-'+self.bdf.replace(':','_').replace('.','_')+'.lock')
        self.lock=lock.open('a+')
        try:fcntl.flock(self.lock,fcntl.LOCK_EX|fcntl.LOCK_NB)
        except BlockingIOError:raise RuntimeError('Another cooperating experiment owns the target-GPU lease')
        self.allowed|=self.aliases();self.check()
        return self
    def __exit__(self,kind,value,tb):
        self.stop.set()
        if hasattr(self,'thread'):self.thread.join(timeout=20)
        try:self.check()
        except Exception as exc:self.errors.append(str(exc))
        self.output.write_text(json.dumps(dict(bdf=self.bdf,allowed_pids=sorted(self.allowed),host_pid_mapping=getattr(self,'host_pid_mapping',None),samples=self.samples,
            interference_errors=self.errors,valid=not self.errors and kind is None,
            limitations='Advisory per-BDF flock plus amd-smi and visible DRM fdinfo clients; cannot reserve hardware or see hidden clients; non-cooperating activity invalidates the run when observed.'),indent=2)+'\n')
        fcntl.flock(self.lock,fcntl.LOCK_UN);self.lock.close()
        if kind is None and self.errors:raise RuntimeError(self.errors[0])

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--audit',type=Path,required=True);a=p.parse_args()
    with GPUExclusive(a.audit):print('No other visible target-GPU clients; lease and audit check passed')
