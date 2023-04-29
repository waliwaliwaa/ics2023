#include "poly.h"
#include <time.h>

void poly_optim(const double a[], double x, long degree, double *result)  
{
    double x_pow[11]; 
    x_pow[0] = 1;
    x_pow[1] = x; 
    x_pow[2] = x_pow[1] * x; 
    x_pow[3] = x_pow[2] * x;
    x_pow[4] = x_pow[3] * x;
    x_pow[5] = x_pow[4] * x;  
    x_pow[6] = x_pow[5] * x;
    x_pow[7] = x_pow[6] * x;
    x_pow[8] = x_pow[7] * x;
    x_pow[9] = x_pow[8] * x;
    x_pow[10] = x_pow[9] * x;
    double x0 = x_pow[10] = x_pow[9] * x;   

    double r1 = a[degree];
    double r2 = a[degree-1]; 
    double r3 = a[degree-2];
    double r4 = a[degree-3];
    double r5 = a[degree-4];
    double r6 = a[degree-5];
    double r7 = a[degree-6];
    double r8 = a[degree-7];
    double r9= a[degree-8];
    double r10 = a[degree-9];

    int i;
    for (i = degree - 10; i >= 10; i -= 10) {
        r1 = r1 * x0;
        r2 = r2 * x0;
        r3 = r3 * x0;
        r4 = r4 * x0;
        r5 = r5 * x0;
        r6 = r6 * x0;
        r7 = r7 * x0;
        r8 = r8 * x0;
        r9 = r9 * x0;
        r10 = r10 * x0;
        
        r1 += a[i];
        r2 += a[i-1];
        r3 += a[i-2]; 
        r4 += a[i-3];
        r5 += a[i-4];
        r6 += a[i-5];
        r7 += a[i-6];
        r8 += a[i-7]; 
        r9 += a[i-8];
        r10 += a[i-9];
    }
    double r0 = 0;
    for(int k = 0; k <= i; ++k)
    {
	r0 += a[k] * x_pow[k];	
    }
    int rest = degree % 10;
    *result =   r1 * x_pow[10] * x_pow[rest] + r2 * x_pow[9] * x_pow[rest]  
               + r3 * x_pow[8] * x_pow[rest] + r4 * x_pow[7] * x_pow[rest]
               + r5 * x_pow[6] * x_pow[rest] + r6 * x_pow[5] * x_pow[rest]
               + r7 * x_pow[4] * x_pow[rest] + r8 * x_pow[3] * x_pow[rest]
               + r9 * x_pow[2] * x_pow[rest] + r10 * x_pow[1] * x_pow[rest] + r0;
}

void measure_time(poly_func_t poly, const double a[], double x, long degree,
                  double *time) {
    double result = 0;
    // 预热
    poly_optim(a, x, degree, &result);
    struct timespec time1 = {0, 0};
    struct timespec time2 = {0, 0};
    double tmp = 0;
    for(int i = 0; i < 100; ++i)
    {
        clock_gettime(CLOCK_REALTIME, &time1);
        poly(a, x, degree, &result);
        clock_gettime(CLOCK_REALTIME, &time2);
        tmp += (time2.tv_nsec - time1.tv_nsec);
    }
    *time = (tmp / 100);
}

