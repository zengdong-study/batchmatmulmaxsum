# Codex 环境工具目录

整理 Codex 0.165.0 Linux x86_64 的安装脚本、校验文件和 Bash 代理命令。此目录不是 Python 虚拟环境。

仓库只保存脚本、说明与校验和；约 159 MiB 的安装包和安装后的运行文件保留在本地，不提交 Git。新克隆仓库可使用下方在线安装方式；如需离线安装，先将对应安装包放入 `environment/packages/`。

## 本地安装（无需 npm）

安装包使用 Git LFS 保存。新克隆仓库后，先安装 Git LFS 并执行以下命令拉取实际文件；未拉取时 `.tgz` 只是指针，无法解压：

```bash
git lfs install
git lfs pull
```



从项目根目录执行：

```bash
bash environment/scripts/install-codex.sh
export PATH="$PWD/environment/bin:$PATH"
codex --version
codex
```

脚本会校验压缩包并安装到本目录的 `runtime/`，保留辅助程序和资源，通过 `bin/codex` 启动。首次启动按提示登录。安装包是平台二进制包，没有 npm 命令入口，不直接用 `npm install -g ./...tgz` 安装。

校验和根据现有文件生成，用于检查后续文件是否变化，不代表已验证上游签名。

## 在线安装或更新（另一种方式）

已安装 Node.js/npm 时可执行：

```bash
npm install -g @openai/codex@latest
codex --version
```

在线安装与本地包安装选择一种即可。若同时安装，用 `type -a codex` 检查实际使用的路径。
官方说明：https://learn.chatgpt.com/docs/codex/cli

## 启用、修改、关闭代理

```bash
source environment/scripts/proxy.sh
proxy_on                             # 默认 http://127.0.0.1:7897
proxy_on http://127.0.0.1:7890         # 修改端口
proxy_on socks5h://127.0.0.1:7897      # 使用支持 SOCKS 的代理端口
proxy_status
curl -I --connect-timeout 15 --max-time 30 https://chatgpt.com
proxy_off
```

这些命令只影响当前终端和之后从该终端启动的程序；`proxy_off` 清除代理变量，不恢复之前的值。脚本只设置环境变量，Clash 等代理服务需另行运行，端口以实际配置为准。远程服务器中的 `127.0.0.1` 指远程服务器自身。

## 每次打开 Bash 自动加载

如有需要，手动在 `~/.bashrc` 末尾添加以下内容（路径按实际目录调整）：

```bash
export PATH="/root/batchmatmulmaxsum/environment/bin:$PATH"
source /root/batchmatmulmaxsum/environment/scripts/proxy.sh
# 取消下一行注释可默认开启代理
# proxy_on http://127.0.0.1:7897
```

保存后执行 `source ~/.bashrc`。更换代理只需再次运行 `proxy_on 新地址`；永久修改则调整上述配置。

## 文件说明

- `packages/SHA256SUMS`：现有离线安装包的 SHA-256 校验文件。
- `packages/*.tgz`：本地离线安装包，已排除 Git。
- `scripts/install-codex.sh`：本地安装命令。
- `scripts/proxy.sh`：代理启用、修改、关闭、状态命令。

整理目录不会自动安装 Codex、修改代理或改写 `~/.bashrc`。
