cmake_minimum_required(VERSION 3.21)
project(bmms_precision LANGUAGES CXX HIP)
add_library(bmms_precision SHARED src/precision.hip)
target_include_directories(bmms_precision PRIVATE ../tiled/include ../include)
set_target_properties(bmms_precision PROPERTIES HIP_STANDARD 17 HIP_STANDARD_REQUIRED YES)
target_compile_options(bmms_precision PRIVATE -Wall -Wextra -Werror)

set(BMMS_PRECISION_CHUNK 128 CACHE STRING "K terms per WMMA FP32 chunk")
target_compile_definitions(bmms_precision PRIVATE BMMS_PRECISION_CHUNK=${BMMS_PRECISION_CHUNK})

set(BMMS_PRECISION_TERMS 8 CACHE STRING "Nonzero K terms per short-K WMMA")
target_compile_definitions(bmms_precision PRIVATE BMMS_PRECISION_TERMS=${BMMS_PRECISION_TERMS})

option(BMMS_PRECISION_KAHAN "Compensated FP32 chunk merge, retaining high/low at final FP64 Max" OFF)
target_compile_definitions(bmms_precision PRIVATE BMMS_PRECISION_KAHAN=$<BOOL:${BMMS_PRECISION_KAHAN}>)
add_library(bmms_product_probe SHARED src/product_probe.hip)
target_include_directories(bmms_product_probe PRIVATE ../include)
set_target_properties(bmms_product_probe PROPERTIES HIP_STANDARD 17 HIP_STANDARD_REQUIRED YES)

option(BMMS_PRECISION_POSITIVE "Four nonnegative WMMA products with compensated signed merge" OFF)
target_compile_definitions(bmms_precision PRIVATE BMMS_PRECISION_POSITIVE=$<BOOL:${BMMS_PRECISION_POSITIVE}>)
