#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <omp.h>
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout
#include "heat-3d.h"

static void init_array(int n, DATA_TYPE POLYBENCH_3D(A, N, N, N, n, n, n), DATA_TYPE POLYBENCH_3D(B, N, N, N, n, n, n)) {
    int i, j, k;
    for (i = 0; i < n; i++)
        for (j = 0; j < n; j++)
            for (k = 0; k < n; k++)
                A[i][j][k] = B[i][j][k] = (DATA_TYPE)(i + j + (n - k)) * 10 / n;
}

static void print_array(int n, DATA_TYPE POLYBENCH_3D(A, N, N, N, n, n, n)) {
    int i, j, k;
    POLYBENCH_DUMP_START;
    POLYBENCH_DUMP_BEGIN("A");
    for (i = 0; i < n; i++)
        for (j = 0; j < n; j++)
            for (k = 0; k < n; k++) {
                if ((i * n * n + j * n + k) % 20 == 0) fprintf(POLYBENCH_DUMP_TARGET, "\n");
                fprintf(POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, A[i][j][k]);
            }
    POLYBENCH_DUMP_END("A");
    POLYBENCH_DUMP_FINISH;
}

static void kernel_heat_3d(int tsteps, int n, DATA_TYPE POLYBENCH_3D(A, N, N, N, n, n, n), DATA_TYPE POLYBENCH_3D(B, N, N, N, n, n, n)) {
    int t, i, j, k;
    #pragma omp parallel
    {
        for (t = 1; t <= TSTEPS; t++) {
            #pragma omp for collapse(2) schedule(static)
            for (i = 1; i < _PB_N - 1; i++) {
                for (j = 1; j < _PB_N - 1; j++) {
                    for (k = 1; k < _PB_N - 1; k++) {
                        B[i][j][k] = SCALAR_VAL(0.125) * (A[i + 1][j][k] - SCALAR_VAL(2.0) * A[i][j][k] + A[i - 1][j][k])
                                     + SCALAR_VAL(0.125) * (A[i][j + 1][k] - SCALAR_VAL(2.0) * A[i][j][k] + A[i][j - 1][k])
                                     + SCALAR_VAL(0.125) * (A[i][j][k + 1] - SCALAR_VAL(2.0) * A[i][j][k] + A[i][j][k - 1])
                                     + A[i][j][k];
                    }
                }
            }

            #pragma omp for collapse(2) schedule(static)
            for (i = 1; i < _PB_N - 1; i++) {
                for (j = 1; j < _PB_N - 1; j++) {
                    for (k = 1; k < _PB_N - 1; k++) {
                        A[i][j][k] = SCALAR_VAL(0.125) * (B[i + 1][j][k] - SCALAR_VAL(2.0) * B[i][j][k] + B[i - 1][j][k])
                                     + SCALAR_VAL(0.125) * (B[i][j + 1][k] - SCALAR_VAL(2.0) * B[i][j][k] + B[i][j - 1][k])
                                     + SCALAR_VAL(0.125) * (B[i][j][k + 1] - SCALAR_VAL(2.0) * B[i][j][k] + B[i][j][k - 1])
                                     + B[i][j][k];
                    }
                }
            }
        }
    }
}

int main(int argc, char **argv) {
    int n = N;
    int tsteps = TSTEPS;
    POLYBENCH_3D_ARRAY_DECL(A, DATA_TYPE, N, N, N, n, n, n);
    POLYBENCH_3D_ARRAY_DECL(B, DATA_TYPE, N, N, N, n, n, n);

    init_array(n, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(B));
    polybench_start_instruments;
    kernel_heat_3d(tsteps, n, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(B));
    polybench_stop_instruments;
    polybench_print_instruments;
    polybench_prevent_dce(print_array(n, POLYBENCH_ARRAY(A)));
    POLYBENCH_FREE_ARRAY(A);
    return 0;
}