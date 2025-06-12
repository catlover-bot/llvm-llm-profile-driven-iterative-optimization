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
    int j;

    for(j = 0; j < runs; j++) {

      double  a1, b1, c1, d1;
      double  x[3];
      double X;
      int     solutions;
      int i;
      unsigned long l;
      struct int_sqrt q;

      printf("********* CUBIC FUNCTIONS ***********\n");
      
      a1 = 1.0; b1 = -10.5; c1 = 32.0; d1 = -30.0;
      SolveCubic(a1, b1, c1, d1, &solutions, x);  
      printf("Solutions:");
      for(i=0; i < solutions; i++)
        printf(" %f", x[i]);
      printf("\n");

      a1 = 1.0; b1 = -4.5; c1 = 17.0; d1 = -30.0;
      SolveCubic(a1, b1, c1, d1, &solutions, x);  
      printf("Solutions:");
      for(i=0; i < solutions; i++)
        printf(" %f", x[i]);
      printf("\n");

      a1 = 1.0; b1 = -3.5; c1 = 22.0; d1 = -31.0;
      SolveCubic(a1, b1, c1, d1, &solutions, x);
      printf("Solutions:");
      for(i=0; i < solutions; i++)
        printf(" %f", x[i]);
      printf("\n");

      a1 = 1.0; b1 = -13.7; c1 = 1.0; d1 = -35.0;
      SolveCubic(a1, b1, c1, d1, &solutions, x);
      printf("Solutions:");
      for(i=0; i < solutions; i++)
        printf(" %f", x[i]);
      printf("\n");

      a1 = 3.0; b1 = 12.34; c1 = 5.0; d1 = 12.0;
      SolveCubic(a1, b1, c1, d1, &solutions, x);
      printf("Solutions:");
      for(i=0; i < solutions; i++)
        printf(" %f", x[i]);
      printf("\n");

      a1 = -8.0; b1 = -67.89; c1 = 6.0; d1 = -23.6;
      SolveCubic(a1, b1, c1, d1, &solutions, x);
      printf("Solutions:");
      for(i=0; i < solutions; i++)
        printf(" %f", x[i]);
      printf("\n");

      a1 = 45.0; b1 = 8.67; c1 = 7.5; d1 = 34.0;
      SolveCubic(a1, b1, c1, d1, &solutions, x);
      printf("Solutions:");
      for(i=0; i < solutions; i++)
        printf(" %f", x[i]);
      printf("\n");

      a1 = -12.0; b1 = -1.7; c1 = 5.3; d1 = 16.0;
      SolveCubic(a1, b1, c1, d1, &solutions, x);
      printf("Solutions:");
      for(i=0; i < solutions; i++)
        printf(" %f", x[i]);
      printf("\n");

      for(a1=1.0; a1<10.0; a1+=1.0) {
        for(b1=10.0; b1>0.0; b1-=0.25) {
          for(c1=5.0; c1<15.0; c1+=0.61) {
            for(d1=-1.0; d1>-5.0; d1-=0.451) {
              SolveCubic(a1, b1, c1, d1, &solutions, x);  
              printf("Solutions:");
              for(i=0; i < solutions; i++)
                printf(" %f", x[i]);
              printf("\n");
            }
          }
        }
      }

      printf("********* INTEGER SQR ROOTS ***********\n");

      for (i = 0; i < 100000; i+=2) {
          usqrt(i, &q);
          printf("sqrt(%3d) = %2d\n", i, q.sqrt);
      }
      printf("\n");

      for (l = 0x3fed0169L; l < 0x3fed4169L; l++) {
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