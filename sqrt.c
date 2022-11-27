#include <stdio.h>

int main() {
    double a;
    scanf("%lf", &a);
    double ans = 1000.0;
    for (int i = 0; i < 52; ++i) {
        ans = ans / 2 + (a / ans / 2);
    }
    printf("%lf", ans);
    return 0;
}
  
