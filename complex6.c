#include <CL/cl.h>
#include <stdio.h>

int foo(int x)
{
    cl_int err;
    cl_uint numPlatforms;

    err = clGetPlatformIDs(0, NULL, &numPlatforms);
    if (CL_SUCCESS == err)
        printf("\nDetected OpenCL platforms: %d\n", numPlatforms);
    else
        printf("\nError calling clGetPlatformIDs. Error code: %d", err);

    return x + 1;
}

int bar(int x)
{
    return x - 1;
}
