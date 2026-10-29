#!/usr/bin/env python3
"""Extract actual selected precision backend metadata/disassembly, CPU only."""
import argparse,gzip,hashlib,json,re,shutil,subprocess
from pathlib import Path
p=argparse.ArgumentParser();p.add_argument('--library',type=Path,required=True);p.add_argument('--output',type=Path,required=True);a=p.parse_args();a.output.mkdir(parents=True,exist_ok=False);dst=a.output/a.library.name;shutil.copy2(a.library,dst);llvm=Path('/opt/rocm/llvm/bin');subprocess.run([str(llvm/'llvm-objdump'),'--offloading',str(dst)],check=True,capture_output=True);obj=Path(str(dst)+'.0.hipv4-amdgcn-amd-amdhsa--gfx1100');notes=subprocess.check_output([str(llvm/'llvm-readelf'),'--notes',str(obj)],text=True);rows={}
for block in notes.split('    .name:')[1:]:
 name=block.splitlines()[0].strip()
 if not any(k in name for k in ['fused_tiled','certified_fma']):continue
 rows[name]={k:int(m[1]) for k in ['vgpr_count','sgpr_count','private_segment_fixed_size','group_segment_fixed_size','wavefront_size'] if (m:=re.search(r'\.'+k+r':\s+(\d+)',block))}
dis=subprocess.check_output([str(llvm/'llvm-objdump'),'-d','--demangle','--mcpu=gfx1100',str(obj)],text=True)
with gzip.open(a.output/'disassembly.txt.gz','wt') as f:f.write(dis)
report=dict(library_sha256=hashlib.sha256(a.library.read_bytes()).hexdigest(),code_object_sha256=hashlib.sha256(obj.read_bytes()).hexdigest(),kernels=rows,scratch_kernels=[n for n,r in rows.items() if r.get('private_segment_fixed_size',0)],note='Static code object metadata, not measured occupancy.')
(a.output/'resources.json').write_text(json.dumps(report,indent=2)+'\n');print('kernels',len(rows),'scratch',len(report['scratch_kernels']),'maxVGPR',max(r['vgpr_count'] for r in rows.values()))
