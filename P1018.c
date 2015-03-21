#include <stdio.h>

int main(void)
{
    int n, k;
    unsigned long long k10 = 1, f = 1;
    scanf("%d %d", &n, &k);

    for (int i = 0; i <= k; i++) {
        k10 *= 10;
    }

    char truncated = 0;
    for (int i = 2; i <= n; i++) {
        f *= i;
        if (i % 5 == 0) {
            f /= 10;
        }
        if (f > k10) {
            f %= k10;
            truncated++;
        }
    }

    f %= (k10 / 10);
    if (truncated) {
        printf("%0*lld\n", k, f);
    } else {
        printf("%lld", f);
    }
    return 0;
}
