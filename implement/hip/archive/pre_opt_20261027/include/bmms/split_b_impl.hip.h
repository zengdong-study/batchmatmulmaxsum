#pragma once
#include "small_impl.hip.h"

namespace bmms::detail {

// NTiles adjacent N tiles share the same A fragment during each K step.
// Each wave owns disjoint M tiles of one batch. Only the final block reduction
// crosses waves; no inter-block communication or initialized global scratch.
template<DataType Dtype, bool TransposeX1, bool TransposeX2, int NTiles>
__global__ __launch_bounds__(256) void fused_split_b(KernelArguments args) {
    using T=Scalar<Dtype>;
    using ALayout=std::conditional_t<TransposeX1,rocwmma::col_major,rocwmma::row_major>;
    using BLayout=std::conditional_t<TransposeX2,rocwmma::col_major,rocwmma::row_major>;
    using AFrag=rocwmma::fragment<rocwmma::matrix_a,16,16,16,T,ALayout>;
    using BFrag=rocwmma::fragment<rocwmma::matrix_b,16,16,16,T,BLayout>;
    using Acc=rocwmma::fragment<rocwmma::accumulator,16,16,16,float>;
    const int lane=threadIdx.x%32, wave=threadIdx.x/32;
    const int wavesPerBatch=args.config.wavesPerBatch;
    const int waveInBatch=wave%wavesPerBatch;
    const int batch=blockIdx.x*args.config.groupB+wave/wavesPerBatch;
    const int waveCount=blockDim.x/32;
    const auto p=args.problem;
    const auto* x=static_cast<const T*>(args.x1);
    const auto* z=static_cast<const T*>(args.x2);
    extern __shared__ __align__(32) unsigned char storage[];
    T* stageA=reinterpret_cast<T*>(storage)+wave*256;
    T* stageB=reinterpret_cast<T*>(storage+waveCount*512)+wave*256;
    float* stageC=reinterpret_cast<float*>(storage+waveCount*1024)+wave*256;
    float* partial=reinterpret_cast<float*>(storage+waveCount*2048);
    float waveSum=0.0f;
    if(batch<p.B) {
        const std::int64_t xOffset=static_cast<std::int64_t>(batch)*p.M*p.K;
        const std::int64_t zOffset=static_cast<std::int64_t>(batch)*p.N*p.K;
        const int lda=TransposeX1 ? p.M : p.K;
        const int ldb=TransposeX2 ? p.K : p.N;
        for(int m0=waveInBatch*16;m0<p.M;m0+=wavesPerBatch*16) {
            float rowMax=-INFINITY;
            for(int ng=0;ng<p.N;ng+=NTiles*16) {
                Acc acc[NTiles];
                #pragma unroll
                for(int j=0;j<NTiles;++j) rocwmma::fill_fragment(acc[j],0.0f);
                for(int k0=0;k0<p.K;k0+=16) {
                    AFrag fa;
                    if(m0+16<=p.M && k0+16<=p.K && lda%16==0) {
                        const auto offset=TransposeX1 ? k0*p.M+m0 : m0*p.K+k0;
                        rocwmma::load_matrix_sync(fa,x+xOffset+offset,lda);
                    } else {
                        // Pack into the fragment's declared row/column layout.
                        for(int i=lane;i<256;i+=32) {
                            const int m=m0+(TransposeX1 ? i%16 : i/16);
                            const int k=k0+(TransposeX1 ? i/16 : i%16);
                            stageA[i]=static_cast<T>(m<p.M && k<p.K ? read_x<T,TransposeX1>(x,p,batch,m,k) : 0.0f);
                        }
                        __syncwarp();
                        rocwmma::load_matrix_sync(fa,stageA,16);
                        __syncwarp();
                    }
                    #pragma unroll
                    for(int j=0;j<NTiles;++j) {
                        const int n0=ng+j*16;
                        if(n0<p.N) {
                            BFrag fb;
                            if(n0+16<=p.N && k0+16<=p.K && ldb%16==0) {
                                const auto offset=TransposeX2 ? n0*p.K+k0 : k0*p.N+n0;
                                rocwmma::load_matrix_sync(fb,z+zOffset+offset,ldb);
                            } else {
                                for(int i=lane;i<256;i+=32) {
                                    const int k=k0+(TransposeX2 ? i%16 : i/16);
                                    const int n=n0+(TransposeX2 ? i/16 : i%16);
                                    stageB[i]=static_cast<T>(k<p.K && n<p.N ? read_z<T,TransposeX2>(z,p,batch,k,n) : 0.0f);
                                }
                                __syncwarp();
                                rocwmma::load_matrix_sync(fb,stageB,16);
                                __syncwarp();
                            }
                            rocwmma::mma_sync(acc[j],fa,fb,acc[j]);
                        }
                    }
                }
                #pragma unroll
                for(int j=0;j<NTiles;++j) {
                    const int n0=ng+j*16;
                    if(n0<p.N) {
                        rocwmma::store_matrix_sync(stageC,acc[j],16,rocwmma::mem_row_major);
                        __syncwarp();
                        const int row=lane%16;
                        for(int col=lane/16;col<16;col+=2)
                            if(m0+row<p.M && n0+col<p.N)
                                rowMax=fmaxf(rowMax,stageC[row*16+col]);
                        __syncwarp();
                    }
                }
            }
            rowMax=fmaxf(rowMax,__shfl_xor(rowMax,16,32));
            float value=lane<16 && m0+lane<p.M ? rowMax : 0.0f;
            for(int offset=8;offset>0;offset/=2) value+=__shfl_down(value,offset,16);
            if(lane==0) waveSum+=value;
        }
    }
    if(lane==0) partial[wave]=waveSum;
    // All waves, including padded batches and waves with no M tile, participate.
    __syncthreads();
    if(batch<p.B && waveInBatch==0 && lane==0) {
        float sum=0.0f;
        for(int w=0;w<wavesPerBatch;++w) sum+=partial[wave+w];
        args.y[batch]=sum;
    }
}
} // namespace bmms::detail
