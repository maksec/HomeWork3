#include <stdio.h>
#include <math.h>

int main() {
    double a;
    scanf("%lf", &a);
    double ans = 1000.0;
    while (fabs((ans * ans) / a - 1) >= 0.00000025) {
        ans = ans / 2 + (a / ans / 2);
    }
    printf("%lf", ans);
    return 0;
}
  
