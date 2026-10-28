#!/usr/bin/env python3
"""Reproduce the frozen cases into an ignored local cache, without editing references."""
import argparse
import hashlib
import fcntl
import json
import os
from pathlib import Path
import time
import tempfile

import torch

DEFAULT_CACHE = Path(os.environ.get("BMMS_CASE_CACHE", str(Path(tempfile.gettempdir())/f"batchmatmulmaxsum-{os.getuid()}"/"cases-v1")))
VERSION = 1

def specs():
    result = []
    for shape, kind in [((3,17,33,40),'random'), ((4,32,1024,128),'normalized'), ((1,65,129,8192),'random')]:
        for dtype in ('float16','bfloat16'):
            for t1,t2 in ((False,False),(False,True),(True,False),(True,True)):
                result.append(dict(shape=shape,dtype=dtype,t1=t1,t2=t2,kind=kind))
    special = [
        ((1,1,1,32),'float16',False,False,'exact'),
        ((2,1,257,40),'bfloat16',False,True,'negative'),
        ((3,257,1,72),'float16',True,False,'signed_sum'),
        ((2,17,33,56),'bfloat16',True,True,'zero_batch'),
        ((2,17,33,64),'float16',False,True,'structured'),
        ((2,33,65,8192),'bfloat16',True,False,'cancellation'),
        ((2,17,129,128),'float16',True,True,'ties'),
        ((2,8192,1,32),'bfloat16',False,False,'long_sum'),
    ]
    for shape,dtype,t1,t2,kind in special:
        result.append(dict(shape=shape,dtype=dtype,t1=t1,t2=t2,kind=kind))
    for shape,dtypes in [((1,8192,8192,8192),('float16','bfloat16','float16','bfloat16')), ((64,8192,8192,128),('bfloat16','float16','bfloat16','float16'))]:
        for (t1,t2),dtype in zip(((False,False),(False,True),(True,False),(True,True)),dtypes):
            result.append(dict(shape=shape,dtype=dtype,t1=t1,t2=t2,kind='normalized'))
    for i,s in enumerate(result,1):
        s.update(id=i, seed=20261027 + (i-1)//8 if i<=24 else 20261027+i, version=VERSION)
        s['shape'] = list(s['shape'])
    return result

def inputs(s):
    b,m,n,k = s['shape']
    g = torch.Generator().manual_seed(s['seed'])
    x = torch.randn((b,m,k),generator=g)
    z = torch.randn((b,n,k),generator=g)
    kind = s['kind']
    if kind == 'normalized':
        x /= torch.linalg.vector_norm(x,dim=-1,keepdim=True)
        z /= torch.linalg.vector_norm(z,dim=-1,keepdim=True)
    elif kind == 'random':
        x *= 0.25; z *= 0.25
    elif kind == 'exact':
        x.zero_(); z.zero_(); x[...,0]=2; z[...,0]=-3
    elif kind == 'negative':
        x.fill_(0.5); z.fill_(-0.5); z[:,-1,:]=-0.25
    elif kind == 'signed_sum':
        x.zero_(); z.zero_(); z[...,0]=1
        for batch in range(b):
            x[batch,:,0]=((torch.arange(m)%7)-3)*(batch+1)*0.25
    elif kind == 'zero_batch':
        x[0].zero_(); x[1].fill_(0.25); z[1].fill_(0.5)
    elif kind == 'structured':
        x.zero_(); z.zero_()
        for batch in range(b):
            x[batch,torch.arange(m),torch.arange(m)]=batch+1
            z[batch,torch.arange(n)[:,None],torch.arange(m)[None,:]]=-0.25
            z[batch,(torch.arange(m)*7)%n,torch.arange(m)]=torch.arange(1,m+1)*0.125
    elif kind == 'cancellation':
        # Adjacent positive/negative terms cancel exactly after quantization.
        # Half the rows have a small residual; half have an ordinary residual.
        base=torch.randint(1,5,(b,m,k//2),generator=g).float()*0.25
        x[...,0::2]=base; x[...,1::2]=base
        z[...,0::2]=0.5; z[...,1::2]=-0.5
        z[...,-1]=0
        x[...,-2:]=0
        x[:,0::2,-2]=2**-10; x[:,1::2,-2]=1
    elif kind == 'ties':
        x.zero_(); z.zero_(); x[...,0]=1
        z[...,0]=-0.5
        z[:,0,0]=1; z[:,n//2,0]=1; z[:,-1,0]=1-2**-10
        x[:,1::2,0]=-1  # Negative query rows select the other candidates.
    elif kind == 'long_sum':
        x.zero_(); z.zero_(); z[...,0]=1
        pattern=torch.tensor([64.,0.125,-64.,0.125])
        x[...,0]=pattern.repeat(m//4)
        x[1,...,0]*=-0.5
    dtype=getattr(torch,s['dtype'])
    x=x.to(dtype); z=z.to(dtype)
    x1=x.transpose(1,2).contiguous() if s['t1'] else x.contiguous()
    x2=z.contiguous() if s['t2'] else z.transpose(1,2).contiguous()
    return x1,x2

@torch.inference_mode()
def golden(x1,x2,s,device,mb,nb):
    b,m,n,k=s['shape']
    x=x1.transpose(1,2) if s['t1'] else x1
    z=x2.transpose(1,2) if s['t2'] else x2
    output=torch.empty(b,dtype=torch.float64,device=device)
    for batch in range(b):
        # Convert actual quantized storage values, not the original random values.
        a=x[batch].to(device=device,dtype=torch.float64)
        c=z[batch].to(device=device,dtype=torch.float64)
        rows=torch.empty(m,dtype=torch.float64,device=device)
        for mi in range(0,m,mb):
            hi=min(mi+mb,m)
            maxima=torch.full((hi-mi,),-torch.inf,dtype=torch.float64,device=device)
            for ni in range(0,n,nb):
                tile=a[mi:hi] @ c[:,ni:ni+nb]
                maxima=torch.maximum(maxima,tile.amax(dim=1))
            rows[mi:hi]=maxima
        output[batch]=rows.sum()
    result=output.float().cpu()
    if not torch.isfinite(result).all():
        raise RuntimeError('Nonfinite golden')
    return result

def sha256(path):
    h=hashlib.sha256()
    with path.open('rb') as f:
        for chunk in iter(lambda:f.read(8*1024*1024),b''):
            h.update(chunk)
    return h.hexdigest()

def save_json(path,value):
    temp=path.with_suffix(path.suffix+'.tmp')
    temp.write_text(json.dumps(value,indent=2)+'\n')
    temp.replace(path)

def _tensor_hash(tensor):
    h=hashlib.sha256()
    h.update(str(tensor.dtype).encode());h.update(str(tuple(tensor.shape)).encode())
    h.update(tensor.contiguous().reshape(-1).view(torch.uint8).numpy().tobytes())
    return h.hexdigest()


def ensure_cases(output, ids, device=None, overwrite=False, verify=True, mb=1024, nb=2048, references=None):
    """Materialize only requested original cases, before any benchmark capture/timing.

    Tracked manifest/JSON are immutable references. Per-cache receipts and locks
    are ignored. Regeneration must reproduce original FP32 golden bit-for-bit.
    """
    output=Path(output);references=Path(references) if references else Path(__file__).resolve().parents[1]/'cases'
    manifest=json.loads((references/'manifest.json').read_text())
    content_reference=references/'content_hashes.json'
    if not content_reference.exists():raise RuntimeError('Missing frozen tensor-content hashes')
    content=json.loads(content_reference.read_text())
    if content['version']!=VERSION:raise RuntimeError('Tensor-content reference version mismatch')
    if manifest['cases']!=specs():raise RuntimeError('Generator definitions differ from frozen manifest')
    ids=sorted(set(ids))
    if any(i<1 or i>40 for i in ids):raise ValueError('case IDs must be in 1..40')
    if mb<1 or nb<1:raise ValueError('Block sizes must be positive')
    output.mkdir(parents=True,exist_ok=True)
    if output.resolve()!=references.resolve():
        with (output/'.references.lock').open('a+') as metadata_lock:
            fcntl.flock(metadata_lock,fcntl.LOCK_EX)
            target=output/'manifest.json'
            if target.exists() and target.read_bytes()!=(references/'manifest.json').read_bytes():
                raise RuntimeError('Output manifest differs from frozen reference')
            if not target.exists():target.write_bytes((references/'manifest.json').read_bytes())
            content_target=output/'content_hashes.json'
            if content_target.exists() and content_target.read_bytes()!=content_reference.read_bytes():raise RuntimeError('Cache tensor references differ from tracked references')
            if not content_target.exists():content_target.write_bytes(content_reference.read_bytes())
            for i in range(1,41):
                source=references/f'case_{i:03d}.json';target=output/source.name
                if target.exists() and target.read_bytes()!=source.read_bytes():raise RuntimeError(f'Reference metadata changed: {target}')
                if not target.exists():target.write_bytes(source.read_bytes())
    receipts=[]
    for i in ids:
        s=manifest['cases'][i-1];reference=json.loads((references/f'case_{i:03d}.json').read_text())
        if reference['spec']!=s:raise RuntimeError(f'Reference spec mismatch: {i}')
        path=output/f'case_{i:03d}.pt';receipt=output/f'case_{i:03d}.cache.json'
        with (output/f'case_{i:03d}.lock').open('a+') as lock:
            fcntl.flock(lock,fcntl.LOCK_EX)
            pointer=False
            if path.exists():
                with path.open('rb') as f:pointer=f.read(80).startswith(b'version https://git-lfs.github.com/spec/v1')
            if path.exists() and not pointer and not overwrite:
                digest=sha256(path) if verify else None
                known_original=path.stat().st_size==reference['bytes'] and (not verify or digest==reference['sha256'])
                cached=json.loads(receipt.read_text()) if receipt.exists() else None
                known_cache=cached and cached['spec']==s and cached['reference_sha256']==sha256(references/f'case_{i:03d}.json') and cached.get('content_reference_sha256')==sha256(content_reference) and cached.get('tensor_sha256')==content['cases'][str(i)] and cached['bytes']==path.stat().st_size and (not verify or cached['sha256']==digest)
                if not known_original and not known_cache:
                    raise RuntimeError(f'Unverified or corrupt cache: {path}; regenerate explicitly with --overwrite')
                print(f'[{i:02d}/40] verified cache {path.name}',flush=True)
                receipts.append(path);continue
            generation_device=device or ('cuda' if torch.cuda.is_available() else 'cpu')
            old_threads=torch.get_num_threads();old_deterministic=torch.are_deterministic_algorithms_enabled();old_warn=torch.is_deterministic_algorithms_warn_only_enabled()
            start=time.monotonic()
            try:
                torch.set_num_threads(min(8,os.cpu_count() or 1));torch.use_deterministic_algorithms(True)
                print(f'[{i:02d}/40] generating original inputs and FP64 golden ({generation_device})',flush=True)
                x1,x2=inputs(s)
                tensor_hashes={name:_tensor_hash(t) for name,t in [('x1',x1),('x2',x2)]}
                if any(tensor_hashes[n]!=content['cases'][str(i)][n] for n in tensor_hashes):
                    raise RuntimeError(f'Case {i}: generated inputs differ from frozen tensor content; use recorded PyTorch {reference["torch_version"]} or investigate before changing references')
                y=golden(x1,x2,s,generation_device,mb,nb)
                tensor_hashes['golden']=_tensor_hash(y)
                if tensor_hashes!=content['cases'][str(i)]:raise RuntimeError(f'Case {i}: recomputed golden differs from frozen tensor content')
                expected=torch.tensor(reference['golden'],dtype=torch.float32)
                torch.testing.assert_close(y,expected,rtol=0,atol=0)
                temp=path.with_suffix('.pt.tmp')
                torch.save(dict(x1=x1,x2=x2,golden=y,metadata=s),temp);temp.replace(path)
                save_json(receipt,dict(spec=s,sha256=sha256(path),bytes=path.stat().st_size,
                    reference_sha256=sha256(references/f'case_{i:03d}.json'),content_reference_sha256=sha256(content_reference),generator_sha256=sha256(Path(__file__)),
                    tensor_sha256=tensor_hashes,
                    golden_bitwise_matches_reference=True,torch_version=str(torch.__version__),device=str(generation_device),m_block=mb,n_block=nb,
                    seconds=time.monotonic()-start,note='Local cache receipt; original manifest and JSON are never overwritten. Serialized pt SHA may differ while tensor content matches.'))
            finally:
                torch.set_num_threads(old_threads);torch.use_deterministic_algorithms(old_deterministic,warn_only=old_warn)
            receipts.append(path)
    return receipts


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--output',type=Path,default=DEFAULT_CACHE)
    p.add_argument('--group',choices=['all','basic','numeric','extreme'],default='all')
    p.add_argument('--ids',type=int,nargs='+')
    p.add_argument('--device',default=None)
    p.add_argument('--m-block',type=int,default=1024);p.add_argument('--n-block',type=int,default=2048)
    p.add_argument('--verify',action='store_true',help='Compatibility flag; cache SHA verification is always enabled')
    p.add_argument('--overwrite',action='store_true',help='Rebuild local cache only; never overwrite tracked references')
    a=p.parse_args()
    ids=a.ids if a.ids is not None else [s['id'] for s in specs() if a.group=='all' or a.group=='basic' and s['id']<=24 or a.group=='numeric' and 25<=s['id']<=32 or a.group=='extreme' and s['id']>=33]
    ensure_cases(a.output,ids,a.device,a.overwrite,True,a.m_block,a.n_block)

if __name__=='__main__':main()
