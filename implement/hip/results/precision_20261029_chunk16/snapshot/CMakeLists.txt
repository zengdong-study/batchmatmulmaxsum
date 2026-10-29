cmake_minimum_required(VERSION 3.21)
project(bmms_precision LANGUAGES CXX HIP)
add_library(bmms_precision SHARED src/precision.hip)
target_include_directories(bmms_precision PRIVATE ../tiled/include ../include)
set_target_properties(bmms_precision PROPERTIES HIP_STANDARD 17 HIP_STANDARD_REQUIRED YES)
target_compile_options(bmms_precision PRIVATE -Wall -Wextra -Werror)

set(BMMS_PRECISION_CHUNK 128 CACHE STRING "K terms per WMMA FP32 chunk")
target_compile_definitions(bmms_precision PRIVATE BMMS_PRECISION_CHUNK=${BMMS_PRECISION_CHUNK})
