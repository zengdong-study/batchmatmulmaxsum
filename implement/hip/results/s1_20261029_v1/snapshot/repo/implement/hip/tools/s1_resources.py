#!/usr/bin/env python3
"""Extract actual S1 code/resources; compare every kernel to frozen predecessor."""
import argparse
import gzip
import hashlib
import json
from pathlib import Path
import re
import struct
import subprocess
from s1_runner import ROOT, sha, save

LLVM=Path('/opt/rocm/llvm/bin')


def extract(lib,out,label):
    # Work on a copy: llvm-objdump writes extracted bundles beside its input.
    import shutil
    dst=out/(label+'.so');shutil.copy2(lib,dst)
    subprocess.run([str(LLVM/'llvm-objdump'),'--offloading',str(dst)],check=True,capture_output=True)
    obj=Path(str(dst)+'.0.hipv4-amdgcn-amd-amdhsa--gfx1100')
    data=obj.read_bytes();assert data[:5]==b'\x7fELF\x02'
    shoff=struct.unpack_from('<Q',data,40)[0];shsize,shnum=struct.unpack_from('<HH',data,58)
    sections=[struct.unpack_from('<IIQQQQIIQQ',data,shoff+i*shsize) for i in range(shnum)]
    rows={}
    for sec in sections:
        if sec[1]!=2:continue
        strings=sections[sec[6]];strings=data[strings[4]:strings[4]+strings[5]]
        for pos in range(sec[4],sec[4]+sec[5],sec[9]):
            name,info,other,index,value,size=struct.unpack_from('<IBBHQQ',data,pos)
            name=strings[name:].split(b'\0',1)[0].decode()
            if info&15!=2 or 'fused_' not in name or not size:continue
            target=sections[index];start=target[4]+value-target[3]
            rows[name]=dict(bytes=size,code_sha256=hashlib.sha256(data[start:start+size]).hexdigest())
    notes=subprocess.check_output([str(LLVM/'llvm-readelf'),'--notes',str(obj)],text=True)
    for block in notes.split('    .name:')[1:]:
        name=block.splitlines()[0].strip()
        if name not in rows:continue
        rows[name]['resources']={key:int(m[1]) for key in ['vgpr_count','sgpr_count','private_segment_fixed_size','group_segment_fixed_size','wavefront_size','max_flat_workgroup_size'] if (m:=re.search(r'\.'+key+r':\s+(\d+)',block))}
    assert rows and all('resources' in r for r in rows.values())
    dis=subprocess.check_output([str(LLVM/'llvm-objdump'),'-d','--mcpu=gfx1100','--demangle',str(obj)],text=True)
    with gzip.open(out/(label+'_disassembly.txt.gz'),'wt') as f:f.write(dis)
    names=list(rows)
    pretty=subprocess.check_output(['c++filt'],input='\n'.join(names),text=True).splitlines()
    for name,demangled in zip(names,pretty):rows[name]['demangled']=demangled
    return dict(library_sha256=sha(lib),code_object_sha256=sha(obj),kernels=rows,
                instruction_counts={key:len(re.findall(key,dis)) for key in ['v_wmma','v_mfma','s_barrier','s_waitcnt','ds_bpermute']})


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--output',type=Path,required=True)
    p.add_argument('--build',type=Path,default=Path('/tmp/bmms-s1-build'));a=p.parse_args()
    a.output.mkdir(parents=True,exist_ok=False)
    families={
        'small_split_b':(ROOT/'archive/final_20261028/libbmms_small.so',a.build/'libbmms_small.so'),
        'split_mn':(ROOT/'split_mn/results/artifacts/libbmms_split_mn.so',a.build/'split_mn/libbmms_split_mn.so')}
    report={}
    for name,(old,new) in families.items():
        before=extract(old,a.output,name+'_before');after=extract(new,a.output,name+'_after')
        b,c=before['kernels'],after['kernels'];assert b.keys()==c.keys()
        identical=[n for n in b if b[n]['code_sha256']==c[n]['code_sha256']]
        report[name]=dict(before=before,after=after,kernels=len(c),identical=len(identical),
                          all_kernel_code_identical=len(identical)==len(c),
                          scratch_kernels=[n for n,r in c.items() if r['resources']['private_segment_fixed_size']])
    save(a.output/'resources.json',report)
    print(json.dumps({k:{x:r[x] for x in ['kernels','identical','all_kernel_code_identical','scratch_kernels']} for k,r in report.items()},indent=2))

if __name__=='__main__':main()
