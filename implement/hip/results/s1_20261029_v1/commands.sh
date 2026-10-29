#!/usr/bin/env bash
# Run from repository root. Choose a NEW output directory for a new identity.
set -euo pipefail
S1_BUILD=/tmp/bmms-s1-build
S1_OUT=implement/hip/results/my_s1_v1
S1_IDS=(1 9 11 15 27 32 2 3 4 5 6 7 8 10 12 13 14 16 17 18 19 20 21 22 23 24 25 26 28 29 30 31)
cmake -S implement/hip -B "$S1_BUILD" -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_HIP_COMPILER=/opt/rocm/llvm/bin/clang++ -DCMAKE_HIP_ARCHITECTURES=gfx1100 -DBMMS_BUILD_S1=ON
cmake --build "$S1_BUILD" -j2
# Bounded first batch, then audited resume of the same identity.
/opt/venv/bin/python implement/hip/tools/s1_runner.py --build "$S1_BUILD" --output "$S1_OUT" --ids "${S1_IDS[@]}" --mode validate --max-cases 6
/opt/venv/bin/python implement/hip/tools/s1_runner.py --build "$S1_BUILD" --output "$S1_OUT" --ids "${S1_IDS[@]}" --mode validate
/opt/venv/bin/python implement/hip/tools/s1_runner.py --build "$S1_BUILD" --output "$S1_OUT" --ids "${S1_IDS[@]}" --mode time --max-cases 6
/opt/venv/bin/python implement/hip/tools/s1_runner.py --build "$S1_BUILD" --output "$S1_OUT" --ids "${S1_IDS[@]}" --mode time
# All profiling/diagnostics below execute AFTER formal timing.
rocprofv3 --kernel-trace --hip-runtime-trace --marker-trace --output-format csv \
  --output-directory "$S1_OUT/profile" --output-file s1 -- \
  /opt/venv/bin/python implement/hip/tools/s1_profile.py --build "$S1_BUILD" --output "$S1_OUT/profile"
/opt/venv/bin/python implement/hip/tools/s1_verify_profile.py "$S1_OUT/profile"
/opt/venv/bin/python implement/hip/tools/s1_recheck.py --build "$S1_BUILD" --output "$S1_OUT/recheck"
/opt/venv/bin/python implement/hip/tools/s1_resources.py --build "$S1_BUILD" --output "$S1_OUT/resources"
/opt/venv/bin/python implement/hip/tools/s1_summarize.py "$S1_OUT"
