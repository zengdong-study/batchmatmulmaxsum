cmake_minimum_required(VERSION 3.21)
project(bmms_precision LANGUAGES CXX HIP)
add_library(bmms_precision SHARED src/precision.hip)
target_include_directories(bmms_precision PRIVATE ../tiled/include ../include)
set_target_properties(bmms_precision PROPERTIES HIP_STANDARD 17 HIP_STANDARD_REQUIRED YES)
target_compile_options(bmms_precision PRIVATE -Wall -Wextra -Werror)

set(BMMS_PRECISION_CHUNK 16 CACHE STRING "K terms per WMMA FP32 chunk")
target_compile_definitions(bmms_precision PRIVATE BMMS_PRECISION_CHUNK=${BMMS_PRECISION_CHUNK})

set(BMMS_PRECISION_TERMS 16 CACHE STRING "Nonzero K terms per short-K WMMA")
target_compile_definitions(bmms_precision PRIVATE BMMS_PRECISION_TERMS=${BMMS_PRECISION_TERMS})

option(BMMS_PRECISION_KAHAN "Compensated FP32 chunk merge, retaining high/low at final FP64 Max" ON)
target_compile_definitions(bmms_precision PRIVATE BMMS_PRECISION_KAHAN=$<BOOL:${BMMS_PRECISION_KAHAN}>)
add_library(bmms_product_probe SHARED EXCLUDE_FROM_ALL src/product_probe.hip)
target_include_directories(bmms_product_probe PRIVATE ../include)
set_target_properties(bmms_product_probe PROPERTIES HIP_STANDARD 17 HIP_STANDARD_REQUIRED YES)

option(BMMS_PRECISION_POSITIVE "Four nonnegative WMMA products with compensated signed merge" OFF)
target_compile_definitions(bmms_precision PRIVATE BMMS_PRECISION_POSITIVE=$<BOOL:${BMMS_PRECISION_POSITIVE}>)

option(BMMS_PRECISION_SPLIT_A "Two algebraically equivalent signed-A partitions" ON)
target_compile_definitions(bmms_precision PRIVATE BMMS_PRECISION_SPLIT_A=$<BOOL:${BMMS_PRECISION_SPLIT_A}>)
add_library(bmms_refine SHARED src/refine.hip)
set_target_properties(bmms_refine PROPERTIES HIP_STANDARD 17 HIP_STANDARD_REQUIRED YES)
target_compile_options(bmms_refine PRIVATE -Wall -Wextra -Werror -fno-fast-math)
add_library(bmms_accurate SHARED src/entry.hip)
target_include_directories(bmms_accurate PUBLIC include PRIVATE ../tiled/include)
set(BMMS_FROZEN_S6_BUILD /tmp/bmms-tiled-s6-build CACHE PATH "Frozen S6 dependency build")
target_link_libraries(bmms_accurate PRIVATE bmms_precision bmms_refine ${BMMS_FROZEN_S6_BUILD}/libbmms_s5.so)
set_target_properties(bmms_accurate PROPERTIES HIP_STANDARD 17 HIP_STANDARD_REQUIRED YES)
target_compile_options(bmms_accurate PRIVATE -Wall -Wextra -Werror)

set(BMMS_REFINE_N 64 CACHE STRING "Certified refinement N tile")
target_compile_definitions(bmms_refine PRIVATE BMMS_REFINE_N=${BMMS_REFINE_N})

option(BMMS_PRECISION_NARROW_BIG "Narrow completed compensated C to FP32 before row Max" OFF)
target_compile_definitions(bmms_precision PRIVATE BMMS_PRECISION_NARROW_BIG=$<BOOL:${BMMS_PRECISION_NARROW_BIG}>)
