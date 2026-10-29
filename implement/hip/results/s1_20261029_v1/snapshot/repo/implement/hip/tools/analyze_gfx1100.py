#!/usr/bin/env python3
"""Record actual gfx1100 kernel code hashes, resources, and disassembly samples."""
import argparse
import hashlib
import json
from pathlib import Path
import re
import struct
import subprocess

LLVM=Path('/opt/rocm/llvm/bin')

def kernels(path):
    data=path.read_bytes()
    if data[:5]!=b'\x7fELF\x02':raise ValueError('Expected ELF64 code object')
    shoff=struct.unpack_from('<Q',data,40)[0]
    shsize,shnum=struct.unpack_from('<HH',data,58)
    sections=[struct.unpack_from('<IIQQQQIIQQ',data,shoff+i*shsize) for i in range(shnum)]
    result={}
    for section in sections:
        if section[1]!=2:continue
        strings=sections[section[6]]; strings=data[strings[4]:strings[4]+strings[5]]
        for pos in range(section[4],section[4]+section[5],section[9]):
            name,info,other,index,value,size=struct.unpack_from('<IBBHQQ',data,pos)
            name=strings[name:].split(b'\0',1)[0].decode()
            if 'KernelArgumentsE' not in name or name.endswith('.kd') or not size:continue
            target=sections[index]; start=target[4]+value-target[3]
            result[name]=dict(bytes=size,code_sha256=hashlib.sha256(data[start:start+size]).hexdigest())
    return result

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--before',type=Path,required=True);p.add_argument('--after',type=Path,required=True)
    p.add_argument('--before-assembly',type=Path,required=True);p.add_argument('--after-assembly',type=Path,required=True)
    p.add_argument('--output',type=Path,required=True);a=p.parse_args();a.output.mkdir(parents=True,exist_ok=True)
    result={}
    for label,lib,assembly in [('before',a.before,a.before_assembly),('after',a.after,a.after_assembly)]:
        subprocess.run([str(LLVM/'llvm-objdump'),'--offloading',str(lib)],check=True,capture_output=True)
        obj=Path(str(lib)+'.0.hipv4-amdgcn-amd-amdhsa--gfx1100'); rows=kernels(obj)
        for part in assembly.read_text().split('; -- Begin function ')[1:]:
            name=part.splitlines()[0]
            if name not in rows:continue
            rows[name]['resources']={k:int(m[1]) for k in ['NumVgprs','TotalNumSgprs','ScratchSize','Occupancy'] if (m:=re.search(r'; '+k+r': (\d+)',part))}
        notes=subprocess.check_output([str(LLVM/'llvm-readelf'),'--notes',str(obj)],text=True)
        for block in notes.split('    .name:')[1:]:
            name=block.splitlines()[0].strip()
            if name not in rows:continue
            metadata={key:int(m[1]) for key in ['vgpr_count','sgpr_count','private_segment_fixed_size','wavefront_size']
                if (m:=re.search(r'\.'+key+r':\s+(\d+)',block))}
            rows[name]['code_object_resources']=metadata
            assert metadata['vgpr_count']==rows[name]['resources']['NumVgprs']
            assert metadata['private_segment_fixed_size']==rows[name]['resources']['ScratchSize']
        names=list(rows)
        pretty=subprocess.check_output(['c++filt'],input='\n'.join(names),text=True).splitlines()
        for name,demangled in zip(names,pretty):rows[name]['demangled']=demangled
        disasm=subprocess.check_output([str(LLVM/'llvm-objdump'),'-d','--mcpu=gfx1100','--demangle','--no-show-raw-insn',str(obj)],text=True)
        sections=re.split(r'(?m)^(?=[0-9a-f]+ <)',disasm)
        samples=[]
        for section in sections:
            title=section.splitlines()[0] if section else ''
            if ('fused_split_b<(bmms::DataType)0, true, false, 2>' in title or
                'fused_split_b<(bmms::DataType)0, false, true, 2>' in title):samples.append(section)
        (a.output/f'{label}_gfx1100_disassembly.txt').write_text('\n'.join(samples))
        result[label]=dict(library_sha256=hashlib.sha256(lib.read_bytes()).hexdigest(),
            device_code_object_sha256=hashlib.sha256(obj.read_bytes()).hexdigest(),kernels=rows)
    before,after=result['before']['kernels'],result['after']['kernels']
    simd=[n for n in before if 'ComputePathE2' in n]
    result['comparison']=dict(before_kernels=len(before),after_kernels=len(after),simd_kernels=len(simd),
        simd_unchanged=sum(before[n]['code_sha256']==after[n]['code_sha256'] for n in simd),
        after_spilling=[n for n,r in after.items() if r.get('resources',{}).get('ScratchSize',0)>0],
        note='Instruction samples disassembled from actual shared-library gfx1100 code objects; resource comments from same-flags device assembly; static occupancy is not measured utilization.')
    (a.output/'kernel_code_resources.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result['comparison'],indent=2))
if __name__=='__main__':main()
