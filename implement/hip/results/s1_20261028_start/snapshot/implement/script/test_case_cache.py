"""Cache lifecycle tests using existing case definitions; no new problem instances."""
import hashlib
import json
from pathlib import Path
import tempfile
import subprocess
import sys
import unittest
import torch
from generate_cases import ensure_cases

REFERENCES=Path(__file__).resolve().parents[1]/'cases'

def reference_hashes():
    return {p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in REFERENCES.glob('*.json')}

class CaseCacheTests(unittest.TestCase):
    def test_regeneration_is_verified_and_reused_without_reference_edits(self):
        before=reference_hashes();threads=torch.get_num_threads();det=torch.are_deterministic_algorithms_enabled()
        with tempfile.TemporaryDirectory() as d:
            root=Path(d)
            ensure_cases(root,[1,8,25,26,27,28,29,32],device='cpu')
            stamps={p.name:p.stat().st_mtime_ns for p in root.glob('*.pt')}
            ensure_cases(root,[1,8,25,26,27,28,29,32],device='cpu')
            self.assertEqual(stamps,{p.name:p.stat().st_mtime_ns for p in root.glob('*.pt')})
            expected=json.loads((REFERENCES/'content_hashes.json').read_text())['cases']
            for p in root.glob('*.cache.json'):
                row=json.loads(p.read_text());self.assertEqual(row['tensor_sha256'],expected[str(row['spec']['id'])])
            self.assertEqual(len(list(root.glob('case_*.pt'))),8)
        self.assertEqual(before,reference_hashes());self.assertEqual(threads,torch.get_num_threads())
        self.assertEqual(det,torch.are_deterministic_algorithms_enabled())

    def test_corrupt_cache_rejected_and_explicit_rebuild_repairs(self):
        with tempfile.TemporaryDirectory() as d:
            root=Path(d);ensure_cases(root,[25],device='cpu')
            (root/'case_025.pt').write_bytes(b'broken cache')
            with self.assertRaisesRegex(RuntimeError,'corrupt cache'):
                ensure_cases(root,[25],device='cpu')
            ensure_cases(root,[25],device='cpu',overwrite=True)
            row=torch.load(root/'case_025.pt',weights_only=True)
            torch.testing.assert_close(row['golden'],torch.tensor([-6.]),rtol=0,atol=0)

    def test_concurrent_first_use_serializes_metadata_and_case_writes(self):
        with tempfile.TemporaryDirectory() as d:
            command=[sys.executable,str(Path(__file__).with_name('generate_cases.py')),'--device','cpu','--ids','25','--output',d]
            jobs=[subprocess.Popen(command,stdout=subprocess.PIPE,stderr=subprocess.PIPE,text=True) for _ in range(2)]
            for job in jobs:
                out,err=job.communicate(timeout=60)
                self.assertEqual(job.returncode,0,out+err)
            self.assertEqual(len(list(Path(d).glob('*.pt'))),1)
            self.assertTrue((Path(d)/'case_025.cache.json').exists())
            ensure_cases(Path(d),[25],device='cpu')

    def test_reference_mutation_rejected(self):
        with tempfile.TemporaryDirectory() as d:
            root=Path(d);ensure_cases(root,[],device='cpu')
            (root/'case_001.json').write_text('{}\n')
            with self.assertRaisesRegex(RuntimeError,'Reference metadata changed'):
                ensure_cases(root,[1],device='cpu',overwrite=True)

if __name__=='__main__':unittest.main()
