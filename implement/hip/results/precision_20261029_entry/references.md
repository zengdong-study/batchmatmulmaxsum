官方ISA参考：[RDNA3 ISA](https://docs.amd.com/api/khub/documents/UkT_UPQL21KfKAMUBFnZTw/content)，WMMA章节注明仅支持round-to-nearest-even。单乘积偏差是本机实测路径现象，本轮不依据猜测修改全局浮点模式，也不把实测现象扩大为通用AMD硬件结论。
