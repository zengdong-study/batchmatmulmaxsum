"""Shared preflight for ignored case caches; call before hashing/capture/timing."""
import sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'script'))
from generate_cases import ensure_cases, DEFAULT_CACHE as DEFAULT_CASES
