#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <tgmath.h>

#define bubble(p) { temp = (p)[1]; (p)[1] = *(p); *(p)++ = temp; }


int
isprime(long number)
{
    if (number < 2) {
        return 0;
    }
    long max_factor = sqrt(number) + 1;

    for (long i = 2; i <= max_factor; i++) {
        if (number % i == 0) {
            return 0;
        }
    }
    return 1;
}


int
main(void)
{
    int n, k;
    scanf("%d %d", &n, &k);
    long *p1, *p2, temp;
    long *min = (long *)calloc(k + 1, sizeof(long));
    long *max = (long *)calloc(k + 1, sizeof(long));
    memset(min, 0x7F, (k + 1) * sizeof(long));

    for (int i = 0; i < n; i++) {
        scanf("%ld", max);
        *(p1 = min) = *(p2 = max);

        while (p1 < min + k && p1[0] < p1[1]) {
            bubble(p1);
        }

        while (p2 < max + k && p2[0] > p2[1]) {
            bubble(p2);
        }
    }

    temp = max[1] - min[1];
    printf("%s\n%d\n", isprime(temp)? "YES": "NO", temp);
    free(min);
    free(max);
    return 0;
}
