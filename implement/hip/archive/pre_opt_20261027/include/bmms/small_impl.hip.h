#pragma once
#include "kernels.hip.h"
#include <rocwmma/rocwmma.hpp>
#include <cmath>
#include <type_traits>

namespace bmms::detail {
template<DataType D> using Scalar = std::conditional_t<D == DataType::Float16,
    rocwmma::float16_t, rocwmma::bfloat16_t>;

template<typename T, bool T1>
__device__ float read_x(const T* x, const Problem& p, int b, int m, int k) {
    auto offset = static_cast<std::int64_t>(b)*p.M*p.K;
    return static_cast<float>(x[offset + (T1 ? k*p.M+m : m*p.K+k)]);
}
template<typename T, bool T2>
__device__ float read_z(const T* z, const Problem& p, int b, int k, int n) {
    auto offset = static_cast<std::int64_t>(b)*p.N*p.K;
    return static_cast<float>(z[offset + (T2 ? n*p.K+k : k*p.N+n)]);
}

template<DataType Dtype, bool TransposeX1, bool TransposeX2, ComputePath Path>
__global__ __launch_bounds__(32) void fused_small(KernelArguments args) {
    // Initial experimental mapping: one wave32/block per batch, no workspace.
    const int lane=threadIdx.x, batch=blockIdx.x;
    const auto p=args.problem;
    const auto* x=static_cast<const Scalar<Dtype>*>(args.x1);
    const auto* z=static_cast<const Scalar<Dtype>*>(args.x2);
    float total=0.0f;
    if constexpr (Path == ComputePath::Simd) {
        const int lanesK=args.config.lanesK;
        const int kLane=lane%lanesK;
        const int nLane=lane/lanesK;
        for (int m=0;m<p.M;++m) {
            float rowMax=-INFINITY;
            for (int n0=0;n0<p.N;n0+=32/lanesK) {
                const int n=n0+nLane;
                float dot=0.0f;
                if (n<p.N) {
                    for (int k=kLane;k<p.K;k+=lanesK)
                        dot=fmaf(read_x<Scalar<Dtype>,TransposeX1>(x,p,batch,m,k),
                                 read_z<Scalar<Dtype>,TransposeX2>(z,p,batch,k,n),dot);
                }
                // Only sub-group leaders own the completed dot product.
                for(int offset=lanesK/2;offset>0;offset/=2)
                    dot+=__shfl_down(dot,offset,lanesK);
                if(kLane==0 && n<p.N) rowMax=fmaxf(rowMax,dot);
            }
            for(int offset=16;offset>0;offset/=2)
                rowMax=fmaxf(rowMax,__shfl_down(rowMax,offset,32));
            if(lane==0) total+=rowMax;
        }
    } else {
        using T=Scalar<Dtype>;
        __shared__ T a[256];
        __shared__ T b[256];
        __shared__ float c[256];
        for(int m0=0;m0<p.M;m0+=16) {
            // Each lane owns half a row of the stored accumulator tile.
            float rowMax=-INFINITY;
            for(int n0=0;n0<p.N;n0+=16) {
                rocwmma::fragment<rocwmma::accumulator,16,16,16,float> acc;
                rocwmma::fill_fragment(acc,0.0f);
                for(int k0=0;k0<p.K;k0+=16) {
                    for(int i=lane;i<256;i+=32) {
                        int am=m0+i/16, ak=k0+i%16;
                        int bk=k0+i/16, bn=n0+i%16;
                        a[i]=static_cast<T>(am<p.M && ak<p.K ? read_x<T,TransposeX1>(x,p,batch,am,ak) : 0.0f);
                        b[i]=static_cast<T>(bk<p.K && bn<p.N ? read_z<T,TransposeX2>(z,p,batch,bk,bn) : 0.0f);
                    }
                    __syncthreads();
                    rocwmma::fragment<rocwmma::matrix_a,16,16,16,T,rocwmma::row_major> fa;
                    rocwmma::fragment<rocwmma::matrix_b,16,16,16,T,rocwmma::row_major> fb;
                    rocwmma::load_matrix_sync(fa,a,16);
                    rocwmma::load_matrix_sync(fb,b,16);
                    rocwmma::mma_sync(acc,fa,fb,acc);
                    __syncthreads();
                }
                rocwmma::store_matrix_sync(c,acc,16,rocwmma::mem_row_major);
                __syncthreads();
                const int row=lane%16;
                for(int col=lane/16;col<16;col+=2)
                    if(m0+row<p.M && n0+col<p.N)
                        rowMax=fmaxf(rowMax,c[row*16+col]);
                __syncthreads();
            }
            rowMax=fmaxf(rowMax,__shfl_xor(rowMax,16,32));
            float value=lane<16 && m0+lane<p.M ? rowMax : 0.0f;
            for(int offset=8;offset>0;offset/=2)
                value+=__shfl_down(value,offset,16);
            if(lane==0) total+=value;
        }
    }
    if(lane==0) args.y[batch]=total;
}
} // namespace bmms::detail
