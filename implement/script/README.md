# 可复现测试数据与本地缓存

仓库不保存任何 `.pt` 文件。保留以下必要信息：

- `generate_cases.py`：原40case的输入与FP64 golden生成逻辑。
- `implement/cases/manifest.json`：形状、dtype、布局、种子和生成器版本。
- `case_001.json` 至 `case_040.json`：不可变的参考golden、原文件哈希/大小及生成环境。
- `content_hashes.json`：输入和golden逐张量内容哈希，用于区分真实数据变化与`.pt`序列化格式变化。

原始JSON是参考信息，不再作为缓存完成标记，也不会被生成器覆盖。历史实验记录和源码快照保持原样。

## 获得数据

需要PyTorch；下例使用本机的 `/opt/venv/bin/python`，其他环境可换成已配置好的Python解释器。有兼容GPU时默认用GPU计算FP64 golden，否则使用CPU。参考环境是PyTorch `2.9.1+gitff65f5b` / HIP7.2。不同版本只有在输入内容哈希和最终FP32 golden完全一致时才可使用；如果检查失败，应核对环境，不要修改参考JSON绕过检查。

```bash
# 生成全部40case，只在本地保存
/opt/venv/bin/python implement/script/generate_cases.py

# 只生成需要的原case；支持 --group basic/numeric/extreme
/opt/venv/bin/python implement/script/generate_cases.py --ids 1 25

# 无GPU也可生成，极限形状在CPU上可能较慢
/opt/venv/bin/python implement/script/generate_cases.py --device cpu --ids 25
```

默认缓存目录是系统临时目录下的 `batchmatmulmaxsum-<uid>/cases-v1`，例如Linux root用户为 `/tmp/batchmatmulmaxsum-0/cases-v1`，不在仓库中。可指定持久缓存位置：

```bash
export BMMS_CASE_CACHE=/path/to/local/case-cache
/opt/venv/bin/python implement/script/generate_cases.py --ids 1 25
```

CLI的 `--output PATH` 也可指定生成目录。正式测试工具的 `--cases PATH` 用于指定同一缓存。修改缓存位置时需同步设置环境变量或传参。

## 自动生成和复用

当前活跃测试入口已接入预备步骤：先按所选范围生成/校验缓存，再计算运行身份、搬运、捕获及计时。Small专项仍只准备原22case，Split-B沿用既有范围，不自动扩大实验范围。Split-M/N入口的既有身份包含case1–32，按该范围准备。

缓存存在时验证SHA并复用，不重复计算golden。内容损坏时报错；使用 `--overwrite` 显式重建本地缓存，原始参考JSON不会改变。

```bash
/opt/venv/bin/python implement/script/generate_cases.py --ids 25 --overwrite
```

每个缓存 `.pt` 包含 `x1`、`x2`、FP32 `golden` 和 `metadata`。同目录的 `.cache.json` 记录实际文件SHA、逐张量哈希、环境与生成器指纹，`.lock` 防止同一case被并发写入。临时写入后原子替换，不接受半写入文件。

Golden仍从实际量化输入转FP64计算完整K点积，再Max(N)、Sum(M)，最后转FP32。它必须与原参考golden逐位一致。输入生成也必须匹配冻结的逐张量内容哈希，不根据case编号或数值特征替代算子计算。

## 手动加载

从项目根目录运行：

```python
import sys
sys.path.insert(0, 'implement/script')
from generate_cases import ensure_cases, DEFAULT_CACHE
import torch

ensure_cases(DEFAULT_CACHE, [1])
case = torch.load(DEFAULT_CACHE / 'case_001.pt', weights_only=True, map_location='cpu')
x1, x2, expected = case['x1'], case['x2'], case['golden']
```

历史工具快照不改写；复现旧工具时先生成缓存，再传入 `--cases` 指向缓存目录。生成后的序列化SHA若不同，不能混入锁定旧SHA的结果目录，需使用新输出目录，即使逐张量内容相同也应保留新身份。

## 存储与历史

完整缓存约2.04GiB，可删除后重建，不再上传Git/LFS。新克隆不会下载case `.pt`。参考JSON中的旧文件SHA保留用于审计。

本次只移除当前版本的40个数据文件，不改写既有commit、不清理旧Git/LFS历史对象，因此现有 `.git` 占用不会立即全部消失。其他安装包、二进制快照及实验记录不在本次数据缓存调整的删除范围。
