#pragma once
#include "small_impl.hip.h"
namespace bmms::detail {
template<DataType Dtype,bool TransposeX1,bool TransposeX2,int NTiles>
__global__ __launch_bounds__(256) void fused_split_b(KernelArguments args) {
    extern __shared__ float rows[];
    native_batch<Dtype,TransposeX1,TransposeX2,NTiles,false>(args,rows);
}
} // namespace bmms::detail
