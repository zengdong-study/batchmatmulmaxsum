vim /tmp/amd-oneclick-sshd_config
/usr/sbin/sshd -t -f /tmp/amd-oneclick-sshd_config && kill -HUP 476

vim ~/.bashrc 
# SSH 
http_proxy="http://127.0.0.1:7897"
https_proxy="http://127.0.0.1:7897"
HTTP_PROXY="$http_proxy"
HTTPS_PROXY="$https_proxy"
no_proxy="localhost,127.0.0.1,::1"
NO_PROXY="$no_proxy"

source ~/.bashrc

curl -I --connect-timeout 15 https://www.google.com

npm install -g @openai/codex@latest
codex --version
codex

继续优化 small 和 split-B 两条 HIP 融合路径。

先读取 implement/hip/优化暂停记录.md 和实验记录，检查当前源码、构建版本、已有结果及未完成项，从暂停位置继续，不从头重跑。

重点优化计算并行度和 GEMM 数据流，并结合编译后的 gfx1100 汇编分析加载、寄存器、同步和指令依赖。保留优化前版本，做优化前后对比，不只报告相对旧实现的提速，也要比较拆分基线。

约束：
1. 每次算子调用只能启动一次 kernel。
2. 只使用现有40个持久化case中的合适用例。
3. Small计时范围保持 B≤8、M≤128、N≤257，共22个case；Split-B沿用已记录的测试范围。
4. 性能统一采用10次预热、100次device耗时取算术平均，计时外完成搬运、分配、捕获和验证。
5. 优先核对最新协作加载版本的正确性。已完成且版本一致的结果复用；被中断的配置重新完整测量。
6. 完成后更新实验文档，说明性能收益、回退情况和剩余瓶颈。
