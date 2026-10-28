# batchmatmulmaxsum40

HIP融合算子实验使用固定的40个case。仓库只保存case规格、种子、参考golden、内容校验信息及生成脚本，不保存`.pt`数据文件。

在可用的PyTorch环境中生成需要的case：

```bash
python implement/script/generate_cases.py --ids 1 25
# 生成全部40case：
python implement/script/generate_cases.py
```

数据默认缓存到仓库外的系统临时目录；活跃测试工具会按需生成并复用缓存。可用`BMMS_CASE_CACHE`指定持久目录。完整环境、缓存校验和复现步骤见[数据说明](implement/script/README.md)，算子和实验见[HIP说明](implement/hip/README.md)。
