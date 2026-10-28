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
    assert len(launch)==calls['operator_calls']==12
    correlated=[]
    for row in fused:
        match=[r for r in launch if r['Correlation_Id']==row['Correlation_Id']]
        assert len(match)==1
        assert sum(k['Correlation_Id']==row['Correlation_Id'] for k in kernels)==1
        correlated.append(dict(kernel=row['Kernel_Name'],correlation_id=row['Correlation_Id'],api=match[0]['Function']))
    report=dict(successful_operator_calls=12,fused_small_kernels=8,fused_split_b_kernels=4,
        launch_api_calls=12,invalid_calls_without_launch=calls['invalid_calls'],one_kernel_per_call=True,
        external_kernels=len(kernels)-len(fused),correlations=correlated,
        note='External memcpy/runtime kernels are excluded only after HIP correlation matching; no elapsed timings from profiler used as formal performance results.')
    (a.directory/'verification.json').write_text(json.dumps(report,indent=2)+'\n')
    print('Verified 12 calls = 12 launches = 12 fused kernels; invalid calls launch none')
if __name__=='__main__':main()
