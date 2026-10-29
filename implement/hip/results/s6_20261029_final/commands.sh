#!/usr/bin/env bash
# From repository root. New source/library identity => choose a NEW output.
set -euo pipefail
S1_BUILD=/tmp/bmms-s1-build
FINAL_BUILD=/tmp/bmms-tiled-s6-build
FINAL_OUT=implement/hip/results/my_s6
ALL_IDS=(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40)
cmake -S implement/hip -B "$S1_BUILD" -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_HIP_COMPILER=/opt/rocm/llvm/bin/clang++ -DCMAKE_HIP_ARCHITECTURES=gfx1100 -DBMMS_BUILD_S1=ON
cmake --build "$S1_BUILD" -j2
cmake -S implement/hip/tiled -B "$FINAL_BUILD" -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_HIP_COMPILER=/opt/rocm/llvm/bin/clang++ -DCMAKE_HIP_ARCHITECTURES=gfx1100 \
  -DBMMS_BUILD_S4=ON -DBMMS_BUILD_S5=ON -DBMMS_BACKEND_ABI_ID=6 -DBMMS_S1_BUILD="$S1_BUILD"
cmake --build "$FINAL_BUILD" -j2
/opt/venv/bin/python implement/hip/tiled/tools/host_checks.py --build "$FINAL_BUILD" --output "$FINAL_OUT/host_validation.json"
# --max-cases can stop either mode cleanly; repeat with the SAME ids/output.
/opt/venv/bin/python implement/hip/tiled/tools/fused_runner.py --build "$FINAL_BUILD" --symbol bmms_s5 --ids "${ALL_IDS[@]}" --mode validate --output "$FINAL_OUT"
/opt/venv/bin/python implement/hip/tiled/tools/fused_runner.py --build "$FINAL_BUILD" --symbol bmms_s5 --ids "${ALL_IDS[@]}" --mode time --output "$FINAL_OUT"
# Independent profile AFTER all performance measurements.
rocprofv3 --kernel-trace --hip-runtime-trace --marker-trace --output-format csv \
  --output-directory "$FINAL_OUT/profile" --output-file stage -- \
  /opt/venv/bin/python implement/hip/tiled/tools/fused_runner.py --build "$FINAL_BUILD" --symbol bmms_s5 \
  --ids "${ALL_IDS[@]}" --mode profile --output "$FINAL_OUT/profile_run"
/opt/venv/bin/python implement/hip/tiled/tools/verify_profile.py "$FINAL_OUT"
# Five independent rounds for historically marginal Split-N cases; no minimum picking.
/opt/venv/bin/python implement/hip/tiled/tools/fused_runner.py --build "$FINAL_BUILD" --symbol bmms_s5 --ids 11 15 --mode validate --output "$FINAL_OUT/margin_recheck"
for S6_ROUND in 1 2 3 4 5; do
  /opt/venv/bin/python implement/hip/tiled/tools/fused_runner.py --build "$FINAL_BUILD" --symbol bmms_s5 --ids 11 15 --mode time --round "$S6_ROUND" --output "$FINAL_OUT/margin_recheck"
done
# artifacts.py and summarize_stages.py rebuild resource/report evidence offline;
# follow the shipped snapshot/validation/fusion_code_identity/stability manifests.
