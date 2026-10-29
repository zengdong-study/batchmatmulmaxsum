#!/usr/bin/env python3
"""Check each successful stage call's ROCTX range and HIP/kernel correlation."""
import argparse
import csv
import json
from pathlib import Path
from artifacts import save
p=argparse.ArgumentParser(description=__doc__);p.add_argument('directory',type=Path);a=p.parse_args();out=a.directory
rows=[json.loads(f.read_text()) for f in sorted((out/'profile_run/profile').glob('*.json'))];assert rows
for f in (out/'profile_run/audits').glob('*.json'):assert json.loads(f.read_text())['valid']
def read(s):return list(csv.DictReader(next((out/'profile').glob('*'+s)).open()))
api=read('hip_api_trace.csv');kernels=read('kernel_trace.csv');markers=read('marker_api_trace.csv');report=[]
for row in rows:
 label=f'STAGE/case_{row["case"]}/route_{row["route"]}'
 mark=[r for r in markers if r['Function']==label];assert len(mark)==1
 lo,hi=int(mark[0]['Start_Timestamp']),int(mark[0]['End_Timestamp'])
 inside=[r for r in api if lo<=int(r['Start_Timestamp']) and int(r['End_Timestamp'])<=hi]
 launch=[r for r in inside if 'LaunchKernel' in r['Function']];assert len(launch)==1
 correlated=[k for k in kernels if k['Correlation_Id']==launch[0]['Correlation_Id']];assert len(correlated)==1
 k=correlated[0];assert lo<=int(k['Start_Timestamp'])<=int(k['End_Timestamp'])<=hi
 assert not [r for r in inside if any(s in r['Function'] for s in ['hipMemcpy','hipMemset','hipMalloc'])]
 report.append(dict(case=row['case'],route=row['route'],correlation_id=k['Correlation_Id'],kernel=k['Kernel_Name'],
     resources={key:k[key] for key in ['LDS_Block_Size','Scratch_Size','VGPR_Count','SGPR_Count','Workgroup_Size_X','Grid_Size_X']}))
save(out/'profile/verification.json',dict(one_kernel_per_call=True,calls=len(report),correlations=report,operator_allocations_or_copies=0,note='Every successful call individually range/correlation checked; profiler times are not formal performance data.'))
print(f'Verified {len(report)} successful calls = {len(report)} launches = {len(report)} kernels')
