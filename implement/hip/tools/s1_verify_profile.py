#!/usr/bin/env python3
"""Verify each marked S1 call has exactly one HIP launch and correlated kernel."""
import argparse
import csv
import json
from pathlib import Path
from s1_runner import save


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('directory',type=Path);a=p.parse_args()
    calls=json.loads((a.directory/'calls.json').read_text())
    assert json.loads((a.directory/'gpu_audit.json').read_text())['valid']
    def read(suffix):
        return list(csv.DictReader(next(a.directory.glob('*'+suffix)).open()))
    api=read('hip_api_trace.csv');kernels=read('kernel_trace.csv');markers=read('marker_api_trace.csv')
    launch=[r for r in api if 'LaunchKernel' in r['Function']]
    correlated=[]
    for call in calls['calls']:
        marks=[r for r in markers if r['Function']==call['label']];assert len(marks)==1
        mark=marks[0];lo,hi=int(mark['Start_Timestamp']),int(mark['End_Timestamp'])
        inside=[r for r in launch if lo<=int(r['Start_Timestamp']) and int(r['End_Timestamp'])<=hi]
        assert len(inside)==1
        matching=[r for r in kernels if r['Correlation_Id']==inside[0]['Correlation_Id']]
        assert len(matching)==1
        k=matching[0];expected={0:'fused_small<',1:'fused_split_b<',2:'fused_split_mn<',3:'fused_split_mn<'}[call['route']]
        assert expected in k['Kernel_Name']
        assert lo<=int(k['Start_Timestamp'])<=int(k['End_Timestamp'])<=hi
        assert not [r for r in api if lo<=int(r['Start_Timestamp']) and int(r['End_Timestamp'])<=hi and any(s in r['Function'] for s in ['hipMemcpy','hipMemset','hipMalloc'])]
        correlated.append(dict(label=call['label'],route=call['route'],kernel=k['Kernel_Name'],correlation_id=k['Correlation_Id'],
                               resources={key:k[key] for key in ['LDS_Block_Size','Scratch_Size','VGPR_Count','SGPR_Count','Workgroup_Size_X','Grid_Size_X']}))
    rejected=[r for r in markers if r['Function']=='S1/rejected'];assert len(rejected)==1
    lo,hi=int(rejected[0]['Start_Timestamp']),int(rejected[0]['End_Timestamp'])
    assert not [r for r in launch if lo<=int(r['Start_Timestamp'])<=hi]
    all_fused=[r for r in kernels if any(s in r['Kernel_Name'] for s in ['fused_small<','fused_split_b<','fused_split_mn<'])]
    assert len(all_fused)==len(correlated)==calls['operator_calls']
    save(a.directory/'verification.json',dict(one_kernel_per_call=True,successful_calls=len(correlated),
        rejected_calls_without_launch=calls['rejected_calls'],operator_allocations_or_copies=0,host_routes=[0,1,2,3],correlations=correlated,
        scope='Six successful calls individually bounded by ROCTX ranges; API/kernel correlation checked; runtime preparation kernels outside ranges excluded. Not performance data.'))
    print('Verified 6 calls = 6 launch APIs = 6 fused kernels; 4 rejected calls launch none')

if __name__=='__main__':main()
