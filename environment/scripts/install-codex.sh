#!/usr/bin/env bash
set -euo pipefail
base=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
if [[ $(uname -s) != Linux || $(uname -m) != x86_64 ]]; then
  echo '此安装包仅适用于 Linux x86_64。' >&2; exit 1
fi
if [[ ! -f "$base/packages/codex-0.165.0-linux-x64.tgz" ]]; then
  echo '缺少本地安装包：请将 codex-0.165.0-linux-x64.tgz 放入 environment/packages/。' >&2
  echo '也可按 README 使用 npm 在线安装。' >&2
  exit 1
fi
# 保留完整 vendor 目录，包含运行所需的辅助程序与资源。
(cd "$base/packages" && sha256sum -c SHA256SUMS)
target="$base/runtime/codex-0.165.0"
mkdir -p "$target" "$base/bin"
tar -xzf "$base/packages/codex-0.165.0-linux-x64.tgz" -C "$target"
ln -sfn ../runtime/codex-0.165.0/package/vendor/x86_64-unknown-linux-musl/bin/codex "$base/bin/codex"
"$base/bin/codex" --version
printf '安装完成。当前终端执行：export PATH="%s/bin:$PATH"\n' "$base"
