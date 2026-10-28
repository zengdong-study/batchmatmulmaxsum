# 持久化测试数据

使用预装 ROCm PyTorch 环境：

```bash
/opt/venv/bin/python implement/script/generate_cases.py
```

默认输出到 `implement/cases/`，共 40 个 case：1–24 基础 dtype/布局交叉，25–32 数值专项，33–40 极限规模。完整定义见 `manifest.json`。相同形状、相同 dtype 的四种布局使用相同 seed 和逻辑数据。

每个 `case_XXX.pt` 包含：

- `x1`、`x2`：CPU 上连续的 FP16/BF16 Tensor，形状为属性指定的实际存储形状。
- `golden`：CPU FP32 Tensor，shape 为 `(B,)`。
- `metadata`：`shape=[B,M,N,K]`、`dtype`、`t1`、`t2`、`kind`、`seed`、生成器版本。

对应 JSON 包含 SHA256、文件大小、golden 数值、计算环境和生成时间。JSON 在 PT 写入完成后生成，作为完成标记；不保存中间相似度矩阵。`generation.log` 是本次批量运行的日志。

Golden 从量化后的实际输入转换到 FP64，分块执行完整 K 点积、沿 N 取最大值、沿 M 以 FP64 求和，最后转换到 FP32。分块只改变 M/N 的遍历，不分割 K 归约。最大临时相似度 tile 默认是 1024×2048 FP64（16 MiB），GPU 同时还保存当前 batch 的两个 FP64 输入和计算库工作区。

## 直接加载

```python
from pathlib import Path
import torch

root = Path('implement/cases')
case = torch.load(root / 'case_001.pt', map_location='cpu', weights_only=True)
x1, x2, expected = case['x1'], case['x2'], case['golden']
transpose_x1 = case['metadata']['t1']
transpose_x2 = case['metadata']['t2']
# 将 x1/x2 送入后续 HIP 算子，直接与 expected 比较，无需重新计算 golden。
```

## 可选参数

```bash
# 默认跳过已经完成且配置/大小匹配的文件；校验内容时额外指定 --verify
/opt/venv/bin/python implement/script/generate_cases.py --verify
# 单独生成分组或指定编号
/opt/venv/bin/python implement/script/generate_cases.py --group numeric
/opt/venv/bin/python implement/script/generate_cases.py --ids 1 25 40
# 调整 GPU 临时矩阵大小，或显式选择 CPU（极限规模会很慢）
/opt/venv/bin/python implement/script/generate_cases.py --m-block 512 --n-block 1024
/opt/venv/bin/python implement/script/generate_cases.py --device cpu --ids 25
```

`--output PATH` 修改输出目录；`--overwrite` 重新生成选中 case。完整数据约 2.2 GiB。不要并发向同一个输出目录运行多个生成器。

数值专项包含解析答案检查；实际误差阈值由后续评测脚本设置，本生成器不将题目中存在歧义的误差档位固化。
