#include <stdio.h>

int main(void)
{
    int n, k, k10 = 1, f = 1;
    scanf("%d %d", &n, &k);

    for (int i = 0; i < k; i++) {
        k10 *= 10;
    }

    for (int i = 1; i <= n; i++) {
        f *= i;
        if (f % 10 == 0) {
            f /= 10;
        }
        if (f > k10) {
            f %= k10;
        }
    }

    printf("%0*d\n", k, f);
    return 0;
}
