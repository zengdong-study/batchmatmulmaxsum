#!/usr/bin/env python3
"""Generate persistent BatchMatmulMaxSum inputs and FP64-reference outputs."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import time

import torch

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

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--output',type=Path,default=Path(__file__).resolve().parents[1]/'cases')
    p.add_argument('--group',choices=['all','basic','numeric','extreme'],default='all')
    p.add_argument('--ids',type=int,nargs='+',help='Generate only these case IDs')
    p.add_argument('--device',default='cuda' if torch.cuda.is_available() else 'cpu')
    p.add_argument('--m-block',type=int,default=1024)
    p.add_argument('--n-block',type=int,default=2048)
    p.add_argument('--verify',action='store_true',help='Verify cached SHA256 before skipping')
    p.add_argument('--overwrite',action='store_true')
    args=p.parse_args()
    if args.m_block<1 or args.n_block<1: p.error('Block sizes must be positive')
    if args.ids and any(i<1 or i>40 for i in args.ids): p.error('IDs must be in 1..40')
    torch.set_num_threads(min(8,os.cpu_count() or 1))
    torch.use_deterministic_algorithms(True)
    args.output.mkdir(parents=True,exist_ok=True)
    all_specs=specs()
    save_json(args.output/'manifest.json',{'version':VERSION,'cases':all_specs,'format':'case_XXX.pt: x1, x2, golden, metadata; companion JSON marks completed files'})
    for s in all_specs:
        i=s['id']
        if args.ids and i not in args.ids: continue
        if args.group=='basic' and i>24: continue
        if args.group=='numeric' and not 25<=i<=32: continue
        if args.group=='extreme' and i<33: continue
        path=args.output/f'case_{i:03d}.pt'; meta=path.with_suffix('.json')
        if path.exists() and meta.exists() and not args.overwrite:
            cached=json.loads(meta.read_text())
            if cached['spec']!=s or cached['bytes']!=path.stat().st_size:
                raise RuntimeError(f'Cache mismatch: {path}; use --overwrite')
            if args.verify and cached['sha256']!=sha256(path):
                raise RuntimeError(f'Checksum mismatch: {path}')
            print(f'[{i:02d}/40] cached {path.name}',flush=True)
            continue
        start=time.monotonic()
        print(f'[{i:02d}/40] generating {s}',flush=True)
        x1,x2=inputs(s)
        y=golden(x1,x2,s,args.device,args.m_block,args.n_block)
        # Exact independent expectations for analytic special cases.
        expected={25:[-6.],26:[-5.,-5.],28:[0.,119.],29:[19.125,38.25],32:[512.,-256.]}.get(i)
        if expected is not None:
            torch.testing.assert_close(y,torch.tensor(expected),rtol=0,atol=0)
        temp=path.with_suffix('.pt.tmp')
        torch.save({'x1':x1,'x2':x2,'golden':y,'metadata':s},temp)
        temp.replace(path)
        save_json(meta,{'spec':s,'bytes':path.stat().st_size,'sha256':sha256(path),'golden':y.tolist(),'seconds':time.monotonic()-start,'torch_version':str(torch.__version__),'device':args.device,'reference':'FP64 dot -> Max(N) -> FP64 Sum(M) -> FP32'})
        print(f'[{i:02d}/40] saved, {time.monotonic()-start:.2f}s; golden range [{y.min().item():.8g}, {y.max().item():.8g}]',flush=True)

if __name__=='__main__': main()
