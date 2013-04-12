#include <cuda.h>
#include <stdio.h>

// A basic kernel
__global__ void kernel_test(float* A)
{
    A[threadIdx.x] = (float)(threadIdx.x);
    
    // Add a voluntary error to test colornvcc
    A[0.1] = 42;
}

int main()
{
    const unsigned int NTHREADS = 32;
    const unsigned int NBLOCKS = 64;
    
    printf("Hello World!\n");

    float h_A[NTHREADS];
    int memsize = NTHREADS * sizeof(float);
    memset(&h_A, 0, memsize);

    float* d_A;
    
    // Allocate and copy data to the device
    cudaMalloc((void**)&d_A, memsize);
    cudaMemcpy(d_A, h_A, memsize, cudaMemcpyHostToDevice);

    // Run the kernel
    kernel_test<<<NBLOCKS, NTHREADS>>>(d_A);

    // Copy data back to the host
    cudaMemcpy(h_A, d_A, memsize, cudaMemcpyDeviceToHost);
    cudaFree(d_A);
}
