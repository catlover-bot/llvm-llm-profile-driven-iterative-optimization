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
    
    for (X = 0.0; X <= 360.0; X += 45.0) {
        double rad = X * deg_to_rad_factor;
        printf("%3.0f degrees = %.12f radians\n", X, rad);
    }
    puts("");
    
    double limit = 2 * PI + 1e-6;
    for (X = 0.0; X <= limit; X += (PI / 6)) {
        double deg = X * rad_to_deg_factor;
        printf("%.12f radians = %3.0f degrees\n", X, deg);
    }
    
    return 0;
}

#endif /* TEST */