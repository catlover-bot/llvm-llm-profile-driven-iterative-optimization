#include "snipmath.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv)
{
    if(argc < 2) {
        fprintf(stderr, "ERROR: number of runs not provided!\n");
        fprintf(stderr, "USAGE: ./basicmath [RUNS]\n");
        return 1;
    }

    int runs = atoi(argv[1]);

    for(int j = 0; j < runs; j++) {

      double x[3];
      double X;
      int solutions;
      struct int_sqrt q;

      printf("********* CUBIC FUNCTIONS ***********\n");

      double cubic_cases[8][4] = {
          {1.0, -10.5, 32.0, -30.0},
          {1.0, -4.5, 17.0, -30.0},
          {1.0, -3.5, 22.0, -31.0},
          {1.0, -13.7, 1.0, -35.0},
          {3.0, 12.34, 5.0, 12.0},
          {-8.0, -67.89, 6.0, -23.6},
          {45.0, 8.67, 7.5, 34.0},
          {-12.0, -1.7, 5.3, 16.0}
      };

      for (int k = 0; k < 8; ++k) {
          SolveCubic(cubic_cases[k][0], cubic_cases[k][1], cubic_cases[k][2], cubic_cases[k][3], &solutions, x);
          printf("Solutions:");
          for(int i = 0; i < solutions; i++)
              printf(" %f", x[i]);
          printf("\n");
      }

      for(double a1 = 1.0; a1 < 10.0; a1 += 1.0) {
        for(double b1 = 10.0; b1 > 0.0; b1 -= 0.25) {
          for(double c1 = 5.0; c1 < 15.0; c1 += 0.61) {
            for(double d1 = -1.0; d1 > -5.0; d1 -= 0.451) {
              SolveCubic(a1, b1, c1, d1, &solutions, x);
              printf("Solutions:");
              for(int i = 0; i < solutions; i++)
                printf(" %f", x[i]);
              printf("\n");
            }
          }
        }
      }

      printf("********* INTEGER SQR ROOTS ***********\n");

      for (int i = 0; i < 100000; i += 2) {
          usqrt(i, &q);
          printf("sqrt(%3d) = %2d\n", i, q.sqrt);
      }
      printf("\n");

      for (unsigned long l = 0x3fed0169L; l < 0x3fed4169L; l++) {
         usqrt(l, &q);
         printf("sqrt(%lX) = %X\n", l, q.sqrt);
      }

      printf("********* ANGLE CONVERSION ***********\n");

      for (X = 0.0; X <= 360.0; X += .001)
        printf("%3.0f degrees = %.12f radians\n", X, deg2rad(X));
      puts("");

      for (X = 0.0; X <= (2 * PI + 1e-6); X += (PI / 5760))
        printf("%.12f radians = %3.0f degrees\n", X, rad2deg(X));
    }

    return 0;
}