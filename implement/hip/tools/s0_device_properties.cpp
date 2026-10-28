#include <hip/hip_runtime.h>
extern "C" int s0_device_properties(int* output) {
    const hipDeviceAttribute_t attributes[] = {
        hipDeviceAttributeMaxThreadsPerBlock,
        hipDeviceAttributeMaxRegistersPerBlock,
        hipDeviceAttributeMaxRegistersPerMultiprocessor,
        hipDeviceAttributeMaxSharedMemoryPerBlock,
        hipDeviceAttributeMaxSharedMemoryPerMultiprocessor,
        hipDeviceAttributeWarpSize,
        hipDeviceAttributeMultiprocessorCount
    };
    for (unsigned i=0;i<sizeof(attributes)/sizeof(attributes[0]);++i) {
        auto status=hipDeviceGetAttribute(output+i,attributes[i],0);
        if(status!=hipSuccess) return static_cast<int>(status);
    }
    return 0;
}
