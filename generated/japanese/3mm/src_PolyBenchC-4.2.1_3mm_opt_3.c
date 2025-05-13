#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout
#include "3mm.h"

static void init_array(int ni, int nj, int nk, int nl, int nm,
                       DATA_TYPE POLYBENCH_2D(A, NI, NK, ni, nk),
                       DATA_TYPE POLYBENCH_2D(B, NK, NJ, nk, nj),
                       DATA_TYPE POLYBENCH_2D(C, NJ, NM, nj, nm),
                       DATA_TYPE POLYBENCH_2D(D, NM, NL, nm, nl)) {
  int i, j;
  for (i = 0; i < ni; i++)
    for (j = 0; j < nk; j++)
      A[i][j] = (DATA_TYPE)((i * j + 1) % ni) / (5 * ni);
  for (i = 0; i < nk; i++)
    for (j = 0; j < nj; j++)
      B[i][j] = (DATA_TYPE)((i * (j + 1) + 2) % nj) / (5 * nj);
  for (i = 0; i < nj; i++)
    for (j = 0; j < nm; j++)
      C[i][j] = (DATA_TYPE)(i * (j + 3) % nl) / (5 * nl);
  for (i = 0; i < nm; i++)
    for (j = 0; j < nl; j++)
      D[i][j] = (DATA_TYPE)((i * (j + 2) + 2) % nk) / (5 * nk);
}

static void print_array(int ni, int nl, DATA_TYPE POLYBENCH_2D(G, NI, NL, ni, nl)) {
  int i, j;
  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("G");
  for (i = 0; i < ni; i++)
    for (j = 0; j < nl; j++) {
      if ((i * ni + j) % 20 == 0) fprintf(POLYBENCH_DUMP_TARGET, "\n");
      fprintf(POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, G[i][j]);
    }
  POLYBENCH_DUMP_END("G");
  POLYBENCH_DUMP_FINISH;
}

static void kernel_3mm(int ni, int nj, int nk, int nl, int nm,
                       DATA_TYPE POLYBENCH_2D(E, NI, NJ, ni, nj),
                       DATA_TYPE POLYBENCH_2D(A, NI, NK, ni, nk),
                       DATA_TYPE POLYBENCH_2D(B, NK, NJ, nk, nj),
                       DATA_TYPE POLYBENCH_2D(F, NJ, NL, nj, nl),
                       DATA_TYPE POLYBENCH_2D(C, NJ, NM, nj, nm),
                       DATA_TYPE POLYBENCH_2D(D, NM, NL, nm, nl),
                       DATA_TYPE POLYBENCH_2D(G, NI, NL, ni, nl)) {
  int i, j, k;
  int ii, jj, kk;
  int block_size_i = 32;
  int block_size_j = 32;
  int block_size_k = 32;

  #pragma omp parallel for collapse(2) private(i, j, k, ii, jj, kk)
  for (ii = 0; ii < ni; ii += block_size_i) {
    for (jj = 0; jj < nj; jj += block_size_j) {
      for (kk = 0; kk < nk; kk += block_size_k) {
        for (i = ii; i < ii + block_size_i && i < ni; i++) {
          for (j = jj; j < jj + block_size_j && j < nj; j++) {
            DATA_TYPE sum = SCALAR_VAL(0.0);
            for (k = kk; k < kk + block_size_k && k < nk; k++) {
              sum += A[i][k] * B[k][j];
            }
            E[i][j] += sum;
          }
        }
      }
    }
  }

  #pragma omp parallel for collapse(2) private(i, j, k, ii, jj, kk)
  for (ii = 0; ii < nj; ii += block_size_i) {
    for (jj = 0; jj < nl; jj += block_size_j) {
      for (kk = 0; kk < nm; kk += block_size_k) {
        for (i = ii; i < ii + block_size_i && i < nj; i++) {
          for (j = jj; j < jj + block_size_j && j < nl; j++) {
            DATA_TYPE sum = SCALAR_VAL(0.0);
            for (k = kk; k < kk + block_size_k && k < nm; k++) {
              sum += C[i][k] * D[k][j];
            }
            F[i][j] += sum;
          }
        }
      }
    }
  }

  #pragma omp parallel for collapse(2) private(i, j, k, ii, jj, kk)
  for (ii = 0; ii < ni; ii += block_size_i) {
    for (jj = 0; jj < nl; jj += block_size_j) {
      for (kk = 0; kk < nj; kk += block_size_k) {
        for (i = ii; i < ii + block_size_i && i < ni; i++) {
          for (j = jj; j < jj + block_size_j && j < nl; j++) {
            DATA_TYPE sum = SCALAR_VAL(0.0);
            for (k = kk; k < kk + block_size_k && k < nj; k++) {
              sum += E[i][k] * F[k][j];
            }
            G[i][j] += sum;
          }
        }
      }
    }
  }
}

int main(int argc, char** argv) {
  int ni = NI;
  int nj = NJ;
  int nk = NK;
  int nl = NL;
  int nm = NM;

  POLYBENCH_2D_ARRAY_DECL(E, DATA_TYPE, NI, NJ, ni, nj);
  POLYBENCH_2D_ARRAY_DECL(A, DATA_TYPE, NI, NK, ni, nk);
  POLYBENCH_2D_ARRAY_DECL(B, DATA_TYPE, NK, NJ, nk, nj);
  POLYBENCH_2D_ARRAY_DECL(F, DATA_TYPE, NJ, NL, nj, nl);
  POLYBENCH_2D_ARRAY_DECL(C, DATA_TYPE, NJ, NM, nj, nm);
  POLYBENCH_2D_ARRAY_DECL(D, DATA_TYPE, NM, NL, nm, nl);
  POLYBENCH_2D_ARRAY_DECL(G, DATA_TYPE, NI, NL, ni, nl);

  init_array(ni, nj, nk, nl, nm, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(B), POLYBENCH_ARRAY(C), POLYBENCH_ARRAY(D));
  polybench_start_instruments;
  kernel_3mm(ni, nj, nk, nl, nm, POLYBENCH_ARRAY(E), POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(B), POLYBENCH_ARRAY(F), POLYBENCH_ARRAY(C), POLYBENCH_ARRAY(D), POLYBENCH_ARRAY(G));
  polybench_stop_instruments;
  polybench_print_instruments;
  polybench_prevent_dce(print_array(ni, nl, POLYBENCH_ARRAY(G)));

  POLYBENCH_FREE_ARRAY(E);
  POLYBENCH_FREE_ARRAY(A);
  POLYBENCH_FREE_ARRAY(B);
  POLYBENCH_FREE_ARRAY(F);
  POLYBENCH_FREE_ARRAY(C);
  POLYBENCH_FREE_ARRAY(D);
  POLYBENCH_FREE_ARRAY(G);

  return 0;
}