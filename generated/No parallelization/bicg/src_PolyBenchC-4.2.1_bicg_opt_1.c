#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

/* Include polybench common header. */
#include <polybench.h>
#define POLYBENCH_DUMP_TARGET stdout

/* Include benchmark-specific header. */
#include "bicg.h"

/* Array initialization. */
static
void init_array (int m, int n,
                 DATA_TYPE POLYBENCH_2D(A,N,M,n,m),
                 DATA_TYPE POLYBENCH_1D(r,N,n),
                 DATA_TYPE POLYBENCH_1D(p,M,m))
{
  int i, j;

  for (i = 0; i < m; i++)
    p[i] = (DATA_TYPE)(i % m) / m;
  for (i = 0; i < n; i++) {
    r[i] = (DATA_TYPE)(i % n) / n;
    for (j = 0; j < m; j++)
      A[i][j] = (DATA_TYPE) (i*(j+1) % n)/n;
  }
}

/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static
void print_array(int m, int n,
                 DATA_TYPE POLYBENCH_1D(s,M,m),
                 DATA_TYPE POLYBENCH_1D(q,N,n))
{
  int i;

  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("s");
  for (i = 0; i < m; i++) {
    if (i % 20 == 0) fprintf (POLYBENCH_DUMP_TARGET, "\n");
    fprintf (POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, s[i]);
  }
  POLYBENCH_DUMP_END("s");
  POLYBENCH_DUMP_BEGIN("q");
  for (i = 0; i < n; i++) {
    if (i % 20 == 0) fprintf (POLYBENCH_DUMP_TARGET, "\n");
    fprintf (POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, q[i]);
  }
  POLYBENCH_DUMP_END("q");
  POLYBENCH_DUMP_FINISH;
}

/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static
void kernel_bicg(int m, int n,
                 DATA_TYPE POLYBENCH_2D(A,N,M,n,m),
                 DATA_TYPE POLYBENCH_1D(s,M,m),
                 DATA_TYPE POLYBENCH_1D(q,N,n),
                 DATA_TYPE POLYBENCH_1D(p,M,m),
                 DATA_TYPE POLYBENCH_1D(r,N,n))
{
  int i, j;

#pragma scop
  // Initialize s array to zero
  for (i = 0; i < _PB_M; i++)
    s[i] = 0;

  for (i = 0; i < _PB_N; i++)
    q[i] = SCALAR_VAL(0.0);

  // Loop fusion and unrolling
  for (i = 0; i < _PB_N; i++)
  {
    DATA_TYPE q_acc = SCALAR_VAL(0.0); // accumulator for q[i]
    for (j = 0; j < _PB_M; j+=4)
    {
      // Unroll the innermost loop by a factor of 4
      DATA_TYPE A_ij0 = A[i][j];
      DATA_TYPE A_ij1 = A[i][j+1];
      DATA_TYPE A_ij2 = A[i][j+2];
      DATA_TYPE A_ij3 = A[i][j+3];
      DATA_TYPE r_i = r[i];

      s[j] += r_i * A_ij0;
      s[j+1] += r_i * A_ij1;
      s[j+2] += r_i * A_ij2;
      s[j+3] += r_i * A_ij3;

      q_acc += A_ij0 * p[j];
      q_acc += A_ij1 * p[j+1];
      q_acc += A_ij2 * p[j+2];
      q_acc += A_ij3 * p[j+3];
    }
    q[i] = q_acc;
  }
#pragma endscop
}

int main(int argc, char** argv)
{
  /* Retrieve problem size. */
  int n = N;
  int m = M;

  /* Variable declaration/allocation. */
  POLYBENCH_2D_ARRAY_DECL(A, DATA_TYPE, N, M, n, m);
  POLYBENCH_1D_ARRAY_DECL(s, DATA_TYPE, M, m);
  POLYBENCH_1D_ARRAY_DECL(q, DATA_TYPE, N, n);
  POLYBENCH_1D_ARRAY_DECL(p, DATA_TYPE, M, m);
  POLYBENCH_1D_ARRAY_DECL(r, DATA_TYPE, N, n);

  /* Initialize array(s). */
  init_array (m, n,
              POLYBENCH_ARRAY(A),
              POLYBENCH_ARRAY(r),
              POLYBENCH_ARRAY(p));

  /* Start timer. */
  polybench_start_instruments;

  /* Run kernel. */
  kernel_bicg (m, n,
               POLYBENCH_ARRAY(A),
               POLYBENCH_ARRAY(s),
               POLYBENCH_ARRAY(q),
               POLYBENCH_ARRAY(p),
               POLYBENCH_ARRAY(r));

  /* Stop and print timer. */
  polybench_stop_instruments;
  polybench_print_instruments;

  /* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  polybench_prevent_dce(print_array(m, n, POLYBENCH_ARRAY(s), POLYBENCH_ARRAY(q)));

  /* Be clean. */
  POLYBENCH_FREE_ARRAY(A);
  POLYBENCH_FREE_ARRAY(s);
  POLYBENCH_FREE_ARRAY(q);
  POLYBENCH_FREE_ARRAY(p);
  POLYBENCH_FREE_ARRAY(r);

  return 0;
}