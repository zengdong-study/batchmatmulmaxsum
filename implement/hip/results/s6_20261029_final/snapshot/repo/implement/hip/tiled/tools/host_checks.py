#!/usr/bin/env python3
"""Pure-host dispatch coverage and failure-preserves-output checks, no GPU launch."""
import argparse
import ctypes
import json
from pathlib import Path
from fused_runner import NamedEntry, HIP, save, sha
p=argparse.ArgumentParser(description=__doc__)
p.add_argument('--build',type=Path,default=Path('/tmp/bmms-tiled-s5-final-build'))
p.add_argument('--output',type=Path,required=True)
a=p.parse_args();entry=NamedEntry(a.build/'libbmms_s5.so','bmms_s5')
old=NamedEntry(Path('/tmp/bmms-s1-build/libbmms_s1.so'),'bmms_s1')
specs=json.loads((HIP.parent/'cases/manifest.json').read_text())['cases'];rows=[]
for spec in specs:
 i=spec['id'];s={k:spec[k] for k in ('shape','dtype','t1','t2')}
 for allow in (False,True):
  result=entry.query(s,allow)
  if not allow:assert result==old.query(s,allow)
  else:
   expected=6 if 33<=i<=36 else 7 if 37<=i<=40 else 5 if i in list(range(17,25))+[30] else 2 if 9<=i<=16 else 3 if i in (27,32) else 0
   assert result[0]==0 and result[1]==expected
   assert bool(result[2])==(expected>=2)
  if result[0]:assert result[1:]==(-1,123,456)
  rows.append(dict(case=i,allow=allow,status=result[0],route=result[1],workspace_bytes=result[2],offset=result[3]))
invalid=[(0,17,33,40,0,0,0,1),(3,17,33,40,2,0,0,1),(3,17,33,40,0,2,0,1),
 (3,17,33,40,0,0,2,1),(3,17,33,40,0,0,0,2),(1,8192,8192,8193,0,0,0,1)]
for args in invalid:
 route,size,off=ctypes.c_int(-1),ctypes.c_size_t(123),ctypes.c_size_t(456)
 assert entry.plan(*args,ctypes.byref(route),ctypes.byref(size),ctypes.byref(off))==1
 assert (route.value,size.value,off.value)==(-1,123,456)
assert entry.plan(1,16,16,32,0,0,0,1,None,None,None)==1
save(a.output,dict(status='passed',metadata_queries=80,invalid_queries=len(invalid)+1,outputs_preserved_on_failure=True,
 allow_false_equals_frozen_s1=True,queries=rows,source_sha256=sha(Path(__file__)),entry_sha256=sha(a.build/'libbmms_s5.so')))
print('80 host dispatch queries and 7 invalid query checks passed; no GPU execution')
