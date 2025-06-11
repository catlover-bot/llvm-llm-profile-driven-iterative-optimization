#include <math.h>
#include "snipmath.h"

void SolveCubic(double a, double b, double c, double d, int *solutions, double *x) {
    long double a1 = b / a, a2 = c / a, a3 = d / a;
    long double a1_sq = a1 * a1;
    long double Q = (a1_sq - 3.0 * a2) / 9.0;
    long double R = (2.0 * a1_sq * a1 - 9.0 * a1 * a2 + 27.0 * a3) / 54.0;
    double R2_Q3 = R * R - Q * Q * Q;
    double sqrtQ = sqrt(Q);
    double a1_div_3 = a1 / 3.0;
    double theta;

    if (R2_Q3 <= 0) {
        *solutions = 3;
        theta = acos(R / (Q * sqrtQ));
        long double cos_theta_div_3 = cos(theta / 3.0);
        long double cos_theta_plus_2PI_div_3 = cos((theta + 2.0 * PI) / 3.0);
        long double cos_theta_plus_4PI_div_3 = cos((theta + 4.0 * PI) / 3.0);
        x[0] = -2.0 * sqrtQ * cos_theta_div_3 - a1_div_3;
        x[1] = -2.0 * sqrtQ * cos_theta_plus_2PI_div_3 - a1_div_3;
        x[2] = -2.0 * sqrtQ * cos_theta_plus_4PI_div_3 - a1_div_3;
    } else {
        *solutions = 1;
        double absR = fabs(R);
        double sqrt_R2_Q3 = sqrt(R2_Q3);
        x[0] = pow(sqrt_R2_Q3 + absR, 1 / 3.0);
        x[0] += Q / x[0];
        x[0] *= (R < 0.0) ? 1 : -1;
        x[0] -= a1_div_3;
    }
}

#ifdef TEST

int main(void) {
    double a1 = 1.0, b1 = -10.5, c1 = 32.0, d1 = -30.0;
    double a2 = 1.0, b2 = -4.5, c2 = 17.0, d2 = -30.0;
    double x[3];
    int solutions;

    SolveCubic(a1, b1, c1, d1, &solutions, x);
    SolveCubic(a2, b2, c2, d2, &solutions, x);

    return 0;
}

#endif /* TEST */