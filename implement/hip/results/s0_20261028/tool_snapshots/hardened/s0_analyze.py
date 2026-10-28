#!/usr/bin/env python3
"""Build S0 stage/API/kernel correlations, actual code resource evidence, and budgets."""
import argparse
import csv
import hashlib
import json
from pathlib import Path
import re
import struct
import subprocess
ROOT=Path(__file__).resolve().parents[1]
LLVM=Path('/opt/rocm/llvm/bin')
def sha(p):
    with p.open('rb') as f:return hashlib.file_digest(f,'sha256').hexdigest()
def save(p,x):p.write_text(json.dumps(x,indent=2)+'\n')
def elf_symbols(path):
    data=path.read_bytes();off=struct.unpack_from('<Q',data,40)[0];sz,num=struct.unpack_from('<HH',data,58)
    sections=[struct.unpack_from('<IIQQQQIIQQ',data,off+i*sz) for i in range(num)];result={};entries=[];descriptors={}
    for section in sections:
        if section[1]!=2:continue
        st=sections[section[6]];strings=data[st[4]:st[4]+st[5]]
        for pos in range(section[4],section[4]+section[5],section[9]):
            n,info,other,index,value,size=struct.unpack_from('<IBBHQQ',data,pos)
            name=strings[n:].split(b'\0',1)[0].decode()
            if index>=len(sections):continue
            if name.endswith('.kd') and size>=64:
                target=sections[index];at=target[4]+value-target[3]
                group,private,kernarg=struct.unpack_from('<III',data,at)
                descriptors[name[:-3]]=dict(group_segment_bytes=group,private_segment_bytes=private,kernarg_field=kernarg)
            if info&15 not in (2,10):continue
            entries.append((name,index,value,size))
    for name,index,value,size in entries:
        section=sections[index]
        if not section[2]&4:continue
        extent=size
        if not extent:
            ends=[v for _,i,v,_ in entries if i==index and v>value]
            extent=min(ends+[section[3]+section[5]])-value
        start=section[4]+value-section[3]
        result[name]=dict(address=value,bytes=extent,declared_symbol_bytes=size,kernel_descriptor=descriptors.get(name,{}),
            span_includes_possible_alignment_padding=size==0,code_sha256=hashlib.sha256(data[start:start+extent]).hexdigest())
    return result

def main():
    p=argparse.ArgumentParser();p.add_argument('--output',type=Path,default=ROOT/'results/s0_20261028');a=p.parse_args();r=a.output
    api=list(csv.DictReader((r/'trace/native_hip_api_trace.csv').open()));trace=list(csv.DictReader((r/'trace/native_kernel_trace.csv').open()));markers=list(csv.DictReader((r/'trace/native_marker_api_trace.csv').open()))
    entries=[]
    for marker in markers:
        m=re.fullmatch(r'S0/case_(\d+)/(bmm|amax|sum)',marker['Function'])
        if not m:continue
        start,end=int(marker['Start_Timestamp']),int(marker['End_Timestamp'])
        calls=[x for x in api if x['Process_Id']==marker['Process_Id'] and x['Thread_Id']==marker['Thread_Id'] and start<=int(x['Start_Timestamp'])<=end]
        correlations={x['Correlation_Id'] for x in calls};kernels=[x for x in trace if x['Correlation_Id'] in correlations]
        assert kernels,(marker,calls)
        for kernel in kernels:
            launch=[x for x in calls if x['Correlation_Id']==kernel['Correlation_Id']]
            assert len(launch)==1
            wg=[int(kernel['Workgroup_Size_'+d]) for d in 'XYZ'];grid=[int(kernel['Grid_Size_'+d]) for d in 'XYZ']
            entries.append(dict(case=int(m[1]),stage=m[2],name=kernel['Kernel_Name'],kernel_id=kernel['Kernel_Id'],correlation_id=kernel['Correlation_Id'],api=launch[0]['Function'],
                trace_device_us=(int(kernel['End_Timestamp'])-int(kernel['Start_Timestamp']))/1000,
                workgroup=wg,grid_workitems=grid,grid_blocks=[(grid[j]+wg[j]-1)//wg[j] for j in range(3)],
                lds_bytes=int(kernel['LDS_Block_Size']),scratch_bytes=int(kernel['Scratch_Size']),vgpr=int(kernel['VGPR_Count']),sgpr=int(kernel['SGPR_Count'])))
    assert len({(x['case'],x['stage']) for x in entries})==22*3
    save(r/'native_dispatches.json',entries)
    names=sorted({x['name'] for x in entries});index={}
    for path in sorted((r/'code_objects').glob('*.o')):
        symbols=elf_symbols(path);mangled=list(symbols)
        notes=subprocess.check_output([str(LLVM/'llvm-readelf'),'--notes',str(path)],text=True)
        metadata={}
        for block in re.split(r'(?m)^    \.name:',notes)[1:]:
            n=block.splitlines()[0].strip()
            metadata[n]={key:int(m[1]) for key in ['vgpr_count','sgpr_count','private_segment_fixed_size','group_segment_fixed_size','wavefront_size'] if (m:=re.search(r'\.'+key+r':\s+(\d+)',block))}

        demangled=subprocess.check_output(['c++filt'],input='\n'.join(mangled),text=True).splitlines()
        for symbol,pretty in zip(mangled,demangled):
            for n in [symbol,pretty]:
                if n in names:index.setdefault(n,[]).append(dict(file=str(path),symbol=symbol,**symbols[symbol],object_sha256=sha(path),code_object_resources=metadata.get(symbol,{})))
    unmatched=[n for n in names if n not in index]
    save(r/'code_object_index.json',dict(kernels=index,unmatched=unmatched))
    assembly=r/'assembly';assembly.mkdir(exist_ok=True)
    for num,name in enumerate(names):
        if name not in index:continue
        item=index[name][0];obj=Path(item['file'])
        text=subprocess.check_output([str(LLVM/'llvm-objdump'),'-d','--mcpu=gfx1100','--no-show-raw-insn','--start-address='+str(item['address']),'--stop-address='+str(item['address']+item['bytes']),str(obj)],text=True)
        instructions=[]
        for line in text.splitlines():
            m=re.match(r'\s+([a-z][a-z0-9_]+)\s',line)
            if m:instructions.append(m[1])
        counts={key:sum(op.startswith(key) for op in instructions) for key in ['v_wmma','v_mfma','v_fma','v_fmac','v_dual','global_load','buffer_load','flat_load','ds_load','ds_read','ds_store','ds_write','s_waitcnt','s_barrier']}
        item['static_instruction_counts']=counts;item['static_count_note']='Prefix counts can overlap (v_fma includes v_fmac); static code, not dynamic execution counts.';item['disassembly_file']=str(assembly/f'kernel_{num:02d}.s')
        Path(item['disassembly_file']).write_text(text)
    save(r/'code_object_index.json',dict(kernels=index,unmatched=unmatched))
    measures=[json.loads(p.read_text()) for p in sorted((r/'measure').glob('case_*.json'))];assert len(measures)==36
    audit=json.loads((r/'measure_gpu_audit.json').read_text());pa=json.loads((r/'profile_gpu_audit.json').read_text());assert audit['valid'] and pa['valid']
    measureid=json.loads((r/'measure_identity.json').read_text());profileid=json.loads((r/'profile_identity.json').read_text());assert measureid['device']==profileid['device']
    for x in measures:
        for t in [x['chain']]+list(x['stages'].values()):
            mean=t.get('mean_us',t.get('baseline_us'));assert t['warmups']==10 and t['iterations']==100 and abs(mean-t['total_device_ms']*10)<1e-7
    with (r/'stage_times.csv').open('w',newline='') as f:
        w=csv.writer(f);w.writerow(['case','chain_us','bmm_us','amax_us','sum_us'])
        for x in measures:w.writerow([x['case'],x['chain']['baseline_us'],*[x['stages'][n]['mean_us'] for n in ['bmm','amax','sum']]])
    coverage=json.loads((r/'coverage.json').read_text());assert len(coverage)==40
    byid={x['case']:x for x in measures}
    lines=['# S0：基线、接口与原生执行证据','', '本阶段未修改融合kernel、ABI或分派。正式整链及三个独立阶段均为10次预热、100次调用的单次HIP Graph device算术平均。独立阶段使用已准备的中间数据，其耗时不能相加替代整链，也不能作为严格的整链时间占比。','',
        '## 覆盖与冻结','', '40case元数据与预期哈希全部冻结；36case实文件通过原SHA256和大小校验，并完成新一轮整链及三个阶段的计时与golden检查。33–36仍为LFS占位，标记留待S5，未伪装成全40case测量。','',
        '| case | 数据 | 新S0基线 | Small专项 | Split-B专项 | Split-M/N验证 |','|---:|---|---|---|---|---|']
    for x in coverage:lines.append(f'| {x["case"]} | {"SHA通过" if x["actual_sha256"] else "LFS占位"} | {"已完成" if x["case"] in byid else "未测"} | {"是" if x["small_formal"] else "否"} | {"是" if x["split_b_formal"] else "否"} | {"已验证" if x["split_mn_validated"] else "未验证"} |')
    lines+=['','## 正式整链与独立阶段时间（μs）','','| case | 整链 | BMM | Max | Sum |','|---:|---:|---:|---:|---:|']
    for x in measures:lines.append(f'| {x["case"]} | {x["chain"]["baseline_us"]:.3f} | '+ ' | '.join(f'{x["stages"][n]["mean_us"]:.3f}' for n in ['bmm','amax','sum'])+' |')
    lines+=['','## 原生阶段的实际任务与资源（profiling，非正式耗时）','','22个代表case覆盖四布局、长K、N=1、特殊数值和大B。ROCTX范围→HIP API correlation→设备dispatch关联；未将转换/拷贝kernel混入三阶段。网格block数由profiler全局workitem数除workgroup维度得到，不把全局线程数误当block数。','', '| case | 阶段 | kernel简称 | block网格 | 每block线程 | LDS bytes | VGPR | SGPR | scratch |','|---:|---|---|---|---|---:|---:|---:|---:|']
    for x in entries:
        name=x['name'];tile=re.search(r'MT(\d+x\d+x\d+)',name)
        short=('Tensile '+tile[1]) if tile else ('ATen Max' if 'MaxNan' in name else 'ATen Sum' if 'sum_functor' in name else name[:60])
        lines.append(f'| {x["case"]} | {x["stage"]} | {short} | {x["grid_blocks"]} | {x["workgroup"]} | {x["lds_bytes"]} | {x["vgpr"]} | {x["sgpr"]} | {x["scratch_bytes"]} |')
    lines+=['','## 接口放行条件','','Small/Split-B：workspace=0，无外部清零前提。Split-M/N：首次使用前需要B个uint32计数器为零；串行完成后kernel内部复位，并发须独立workspace/output。原题文本没有明确授权首次外部状态初始化，因此该路径只能先以条件候选进入S1，不能直接视为无条件最终接口。正式精度规则仍有档位归属歧义，S0冻结现有混合误差检查，不放宽。','',
        '## 资源预算与后续放行','','baseline输入低精度存储+FP32转换+相似度/Max/输出的设备张量字节估算、最低相似度写读流量、已有M/N路径部分结果量见coverage.json。该预算不包括运行时分配器保留块、库workspace及graph状态，不能当实际峰值显存。','',
        '| CTA M×N | K stage | 单LDS buffer bytes | 双LDS buffer bytes | FP32累加器总bytes |','|---|---:|---:|---:|---:|']
    for tm,tn in [(16,64),(32,64),(32,128),(64,64)]:
        for tk in [32,64]:
            lds=2*(tm*tk+tk*tn);lines.append(f'| {tm}×{tn} | {tk} | {lds} | {2*lds} | {4*tm*tn} |')
    lines+=['','上述宏tile仅为S2候选预算，不是S0实现或已测参数；还需加padding、归约存储，最终以编译分配为准。每wave/lane的VGPR取决于映射、WMMA副本、地址与buffer活跃期，不能把总累加器字节直接除线程数当最终VGPR。','',
        'S1可基于本轮36case整链基线重新对照已有候选；33–36必须保持未覆盖标记。GPU独占使用按BDF的协作锁，并逐次/周期检查amd-smi及可见DRM客户端，发现其他客户端则该轮无效，不终止其他任务。此机制不是硬件预约，旧工具直接启动仍可能绕过协作锁，后续所有新测量须使用共同入口。','',
        '## 证据文件','','- freeze.json / coverage.json：源码、库、case、计时与接口冻结。','- measure_identity.json / measure_loaded_libraries.json：本轮基线环境与映射库指纹。','- native_dispatches.json / code_object_index.json / assembly/：实际kernel名称、网格、资源、代码匹配与反汇编。','- measure_gpu_audit.json / profile_gpu_audit.json：目标设备客户端采样与PID映射证据。','- stage_times.csv：独立阶段与完整整链的原始平均时间。','']
    (r/'S0报告.md').write_text('\n'.join(lines)+'\n')
    save(r/'validation.json',dict(metadata_cases=40,verified_data_cases=36,chain_timed_cases=36,standalone_stage_timings=108,profiled_cases=22,marked_stages=66,labeled_kernel_dispatches=len(entries),unique_labeled_kernels=len(names),unmatched_code_kernels=unmatched,golden='all measured/profiled cases passed',timing_arithmetic='all passed',gpu_audits_valid=True,missing_data_cases=[33,34,35,36],workspace_init_permission='not established by problem text; conditional M/N candidate',fusion_implementation_changed=False))
    validation=json.loads((r/'validation.json').read_text())
    frozen=json.loads((r/'freeze.json').read_text())
    impl={p:h for p,h in frozen['files'].items() if '/include/' in p or '/src/' in p or p.endswith('CMakeLists.txt')}
    validation['implementation_hashes_unchanged']=all(sha(Path(p))==h for p,h in impl.items())
    validation['library_hashes_unchanged']=all(sha(Path(p))==h for p,h in frozen['libraries'].items())
    for file,key,field in [('guard_nonpython_test.json','nonpython_client_rejected','rejected'),('guard_wrapper_test.json','legacy_python_guard_wrapper_test','valid'),('properties_gpu_audit.json','properties_query_audit_valid','valid')]:
        if (r/file).exists():validation[key]=json.loads((r/file).read_text())[field]
    validation['s0_status']='complete; scope/initialization/precision conditions explicit; S1 not started'
    save(r/'validation.json',validation)
    print('S0:',len(entries),'labeled kernel dispatches,',len(names),'unique kernels; unmatched:',len(unmatched))

if __name__=='__main__':main()
