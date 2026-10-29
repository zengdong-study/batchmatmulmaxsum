"""CPU-only source/library snapshots and actual gfx1100 kernel resource evidence."""
import gzip
import hashlib
import json
from pathlib import Path
import re
import shutil
import struct
import subprocess
import sys
TILED=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(TILED.parent/'tools'))
from s1_runner import sha,save


def snapshot(out,libraries):
    dst=out/'snapshot';dst.mkdir(exist_ok=False)
    files=[TILED/'CMakeLists.txt',*sorted((TILED/'include').glob('*')),*sorted((TILED/'src').glob('*.hip')),*sorted((TILED/'tools').glob('*.py')),
           *sorted((TILED.parent/'include').rglob('*.h*')),TILED.parent/'tools/gpu_exclusive.py',TILED.parent/'tools/s1_runner.py',
           TILED.parent/'tools/benchmark_baseline.py',TILED.parent/'tools/case_cache.py',TILED.parent.parent/'script/generate_cases.py',
           *sorted((TILED.parent.parent/'cases').glob('*.json'))]
    rows=[]
    repo=TILED.parents[2]
    for p in files:
        if not p.is_file():continue
        target=dst/'repo'/p.relative_to(repo);target.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(p,target)
        rows.append(dict(original=str(p),snapshot=str(target.relative_to(out)),sha256=sha(target)))
    for p in libraries:
        target=dst/'libraries'/p.name;target.parent.mkdir(exist_ok=True);shutil.copy2(p,target)
        rows.append(dict(original=str(p),snapshot=str(target.relative_to(out)),sha256=sha(target)))
    (dst/'compiler.txt').write_text(subprocess.check_output(['/opt/rocm/llvm/bin/clang++','--version'],text=True))
    for p in libraries:
        cache=p.parent/'CMakeCache.txt'
        if cache.exists():shutil.copy2(cache,dst/(p.stem+'_CMakeCache.txt'))
    assert all(sha(out/r['snapshot'])==r['sha256'] for r in rows)
    save(out/'snapshot.json',dict(hashes_verified=True,files=rows))


def resources(lib,out):
    out.mkdir(exist_ok=False)
    dst=out/lib.name;shutil.copy2(lib,dst)
    llvm=Path('/opt/rocm/llvm/bin')
    subprocess.run([str(llvm/'llvm-objdump'),'--offloading',str(dst)],check=True,capture_output=True)
    obj=Path(str(dst)+'.0.hipv4-amdgcn-amd-amdhsa--gfx1100')
    data=obj.read_bytes();shoff=struct.unpack_from('<Q',data,40)[0];shsize,shnum=struct.unpack_from('<HH',data,58)
    sections=[struct.unpack_from('<IIQQQQIIQQ',data,shoff+i*shsize) for i in range(shnum)];rows={}
    for sec in sections:
        if sec[1]!=2:continue
        strings=sections[sec[6]];strings=data[strings[4]:strings[4]+strings[5]]
        for pos in range(sec[4],sec[4]+sec[5],sec[9]):
            name,info,_,index,value,size=struct.unpack_from('<IBBHQQ',data,pos)
            name=strings[name:].split(b'\0',1)[0].decode()
            if info&15!=2 or not size or not any(x in name for x in ['tiled_gemm','splitk_gemm','fused_tiled']):continue
            target=sections[index];start=target[4]+value-target[3]
            rows[name]=dict(bytes=size,code_sha256=hashlib.sha256(data[start:start+size]).hexdigest())
    notes=subprocess.check_output([str(llvm/'llvm-readelf'),'--notes',str(obj)],text=True)
    for block in notes.split('    .name:')[1:]:
        name=block.splitlines()[0].strip()
        if name in rows:
            rows[name]['resources']={key:int(m[1]) for key in ['vgpr_count','sgpr_count','private_segment_fixed_size','group_segment_fixed_size','wavefront_size'] if (m:=re.search(r'\.'+key+r':\s+(\d+)',block))}
    assert rows and all('resources' in r for r in rows.values())
    pretty=subprocess.check_output(['c++filt'],input='\n'.join(rows),text=True).splitlines()
    for name,label in zip(rows,pretty):rows[name]['demangled']=label
    dis=subprocess.check_output([str(llvm/'llvm-objdump'),'-d','--mcpu=gfx1100','--demangle',str(obj)],text=True)
    with gzip.open(out/'disassembly.txt.gz','wt') as f:f.write(dis)
    report=dict(library_sha256=sha(lib),code_object_sha256=sha(obj),kernels=rows,
        kernel_count=len(rows),scratch_kernels=[n for n,r in rows.items() if r['resources']['private_segment_fixed_size']],
        instruction_counts={s:dis.count(s) for s in ['v_wmma','v_mfma','s_barrier','s_waitcnt','ds_read','ds_write']},
        note='Actual code object metadata; LDS includes single-buffer staging and padding. No measured occupancy or bank-conflict claim.')
    save(out/'resources.json',report)
    return report
