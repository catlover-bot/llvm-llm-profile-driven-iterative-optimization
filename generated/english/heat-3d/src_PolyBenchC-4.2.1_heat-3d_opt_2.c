#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout
#include "heat-3d.h"

static void init_array(int n, DATA_TYPE POLYBENCH_3D(A,N,N,N,n,n,n), DATA_TYPE POLYBENCH_3D(B,N,N,N,n,n,n)) {
  for (int i = 0; i < n; i++)
    for (int j = 0; j < n; j++)
      for (int k = 0; k < n; k++)
        A[i][j][k] = B[i][j][k] = (DATA_TYPE) (i + j + (n-k)) * 10 / n;
}

static void print_array(int n, DATA_TYPE POLYBENCH_3D(A,N,N,N,n,n,n)) {
  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("A");
  for (int i = 0; i < n; i++)
    for (int j = 0; j < n; j++)
      for (int k = 0; k < n; k++) {
         if ((i * n * n + j * n + k) % 20 == 0) fprintf(POLYBENCH_DUMP_TARGET, "\n");
         fprintf(POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, A[i][j][k]);
      }
  POLYBENCH_DUMP_END("A");
  POLYBENCH_DUMP_FINISH;
}

static void kernel_heat_3d(int tsteps, int n, DATA_TYPE POLYBENCH_3D(A,N,N,N,n,n,n), DATA_TYPE POLYBENCH_3D(B,N,N,N,n,n,n)) {
  #pragma scop
  for (int t = 1; t <= TSTEPS; t++) {
      for (int i = 1; i < _PB_N-1; i++) {
          for (int j = 1; j < _PB_N-1; j++) {
              #pragma GCC ivdep
              for (int k = 1; k < _PB_N-1; k++) {
                  DATA_TYPE a_ijk = A[i][j][k];
                  DATA_TYPE b_ijk = B[i][j][k];
                  DATA_TYPE a_ip1jk = A[i+1][j][k];
                  DATA_TYPE a_im1jk = A[i-1][j][k];
                  DATA_TYPE a_ijp1k = A[i][j+1][k];
                  DATA_TYPE a_ijm1k = A[i][j-1][k];
                  DATA_TYPE a_ijkp1 = A[i][j][k+1];
                  DATA_TYPE a_ijkm1 = A[i][j][k-1];

                  B[i][j][k] = 0.125 * (a_ip1jk - 2.0 * a_ijk + a_im1jk)
                               + 0.125 * (a_ijp1k - 2.0 * a_ijk + a_ijm1k)
                               + 0.125 * (a_ijkp1 - 2.0 * a_ijk + a_ijkm1)
                               + a_ijk;
              }
          }
      }
      for (int i = 1; i < _PB_N-1; i++) {
          for (int j = 1; j < _PB_N-1; j++) {
              #pragma GCC ivdep
              for (int k = 1; k < _PB_N-1; k++) {
                  DATA_TYPE b_ijk = B[i][j][k];
                  DATA_TYPE a_ip1jk = B[i+1][j][k];
                  DATA_TYPE a_im1jk = B[i-1][j][k];
                  DATA_TYPE a_ijp1k = B[i][j+1][k];
                  DATA_TYPE a_ijm1k = B[i][j-1][k];
                  DATA_TYPE a_ijkp1 = B[i][j][k+1];
                  DATA_TYPE a_ijkm1 = B[i][j][k-1];

                  A[i][j][k] = 0.125 * (a_ip1jk - 2.0 * b_ijk + a_im1jk)
                               + 0.125 * (a_ijp1k - 2.0 * b_ijk + a_ijm1k)
                               + 0.125 * (a_ijkp1 - 2.0 * b_ijk + a_ijkm1)
                               + b_ijk;
              }
          }
      }
  }
  #pragma endscop
}

int main(int argc, char** argv) {
  int n = N, tsteps = TSTEPS;
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