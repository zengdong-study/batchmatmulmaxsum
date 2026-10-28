#include <hip/hip_runtime.h>
#include <cstdio>
int main() {
    void* p=nullptr;
    if (hipMalloc(&p,4)!=hipSuccess) return 1;
    std::puts("Own test client holds a GPU context; no kernel launched");
    std::fflush(stdout);
    std::getchar();
    return hipFree(p)==hipSuccess ? 0 : 2;
}
