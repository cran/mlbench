#include <R.h>
#include <R_ext/Rdynload.h>

#define CDEF(name, n)  {#name, (DL_FUNC) &name, n}

void waveform(int *R_num_instances, double *x, int *type);

static const R_CMethodDef cMethods[] = {
    CDEF(waveform, 3),
    {NULL, NULL, 0}
};

void R_init_mlbench(DllInfo *dll)
{
    R_useDynamicSymbols(dll, FALSE);
    R_registerRoutines(dll, cMethods, NULL, NULL, NULL);
}
