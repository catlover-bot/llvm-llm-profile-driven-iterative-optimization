#include <math.h>
#include "snipmath.h"

#undef rad2deg
#undef deg2rad

static const double deg_to_rad_factor = PI / 180.0;
static const double rad_to_deg_factor = 180.0 / PI;

double rad2deg(double rad) {
    return rad * rad_to_deg_factor;
}

double deg2rad(double deg) {
    return deg * deg_to_rad_factor;
}

#ifdef TEST

#include <stdio.h>

int main() {
    double X;
    double rad_values[9];
    double deg_values[14];
    
    // Precompute radian values
    for (int i = 0; i < 9; i += 3) {
        double X0 = i * 45.0;
        double X1 = (i + 1) * 45.0;
        double X2 = (i + 2) * 45.0;
        rad_values[i] = X0 * deg_to_rad_factor;
        rad_values[i + 1] = X1 * deg_to_rad_factor;
        rad_values[i + 2] = X2 * deg_to_rad_factor;
    }
    
    // Output precomputed radian values
    for (int i = 0; i < 9; i += 3) {
        printf("%3.0f degrees = %.12f radians\n", i * 45.0, rad_values[i]);
        printf("%3.0f degrees = %.12f radians\n", (i + 1) * 45.0, rad_values[i + 1]);
        printf("%3.0f degrees = %.12f radians\n", (i + 2) * 45.0, rad_values[i + 2]);
    }
    puts("");
    
    // Precompute degree values
    double increment = PI / 6;
    for (int i = 0; i < 14; i += 2) {
        double X0 = i * increment;
        double X1 = (i + 1) * increment;
        deg_values[i] = X0 * rad_to_deg_factor;
        deg_values[i + 1] = X1 * rad_to_deg_factor;
    }
    
    // Output precomputed degree values
    for (int i = 0; i < 14; i += 2) {
        printf("%.12f radians = %3.0f degrees\n", i * increment, deg_values[i]);
        printf("%.12f radians = %3.0f degrees\n", (i + 1) * increment, deg_values[i + 1]);
    }
    
    return 0;
}

#endif /* TEST */