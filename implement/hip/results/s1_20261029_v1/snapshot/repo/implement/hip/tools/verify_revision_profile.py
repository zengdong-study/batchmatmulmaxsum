#!/usr/bin/env python3
"""Verify one fused kernel per successful call via HIP API correlation IDs."""
import argparse
import csv
import json
from pathlib import Path

def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('directory',type=Path);a=p.parse_args()
    calls=json.loads((a.directory/'calls.json').read_text())
    api=list(csv.DictReader(next(a.directory.rglob('*hip_api_trace.csv')).open()))
    kernels=list(csv.DictReader(next(a.directory.rglob('*kernel_trace.csv')).open()))
    fused=[r for r in kernels if 'fused_small<' in r['Kernel_Name'] or 'fused_split_b<' in r['Kernel_Name']]
    small=[r for r in fused if 'fused_small<' in r['Kernel_Name']]
    split=[r for r in fused if 'fused_split_b<' in r['Kernel_Name']]
    assert len(small)==calls['small_calls']==8 and len(split)==calls['split_calls']==4
    launch=[r for r in api if 'LaunchKernel' in r['Function']]
    fused_ids={r['Correlation_Id'] for r in fused}
    operator_launch=[r for r in launch if r['Correlation_Id'] in fused_ids]
    assert len(operator_launch)==calls['operator_calls']==12
    preflight_launch=[r for r in launch if r['Correlation_Id'] not in fused_ids]
    first_operator=min(int(r['Start_Timestamp']) for r in operator_launch)
    assert all(int(r['End_Timestamp'])<first_operator for r in preflight_launch)
    correlated=[]
    for row in fused:
        match=[r for r in operator_launch if r['Correlation_Id']==row['Correlation_Id']]
        assert len(match)==1
        assert sum(k['Correlation_Id']==row['Correlation_Id'] for k in kernels)==1
        correlated.append(dict(kernel=row['Kernel_Name'],correlation_id=row['Correlation_Id'],api=match[0]['Function']))
    report=dict(successful_operator_calls=12,fused_small_kernels=8,fused_split_b_kernels=4,
        launch_api_calls=12,operator_launch_api_calls=12,all_launch_api_calls=len(launch),preflight_generation_launch_api_calls=len(preflight_launch),invalid_calls_without_launch=calls['invalid_calls'],one_kernel_per_call=True,
        external_kernels=len(kernels)-len(fused),correlations=correlated,
        note='External memcpy/runtime kernels are excluded only after HIP correlation matching; no elapsed timings from profiler used as formal performance results.')
    (a.directory/'verification.json').write_text(json.dumps(report,indent=2)+'\n')
    print('Verified 12 operator calls = 12 operator launches = 12 fused kernels; preflight generation excluded; invalid calls launch none')
if __name__=='__main__':main()
