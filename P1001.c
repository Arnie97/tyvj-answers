#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define bubble(p) { temp = (p)[1]; (p)[1] = *(p); *(p)++ = temp; }


void
show_status(long *min, long *max, int k)
{
    int s;

    for (s = 0; s <= k; s++) {
        printf("%d ", min[s]);
    }
    putchar('\n');

    for (s = 0; s <= k; s++) {
        printf("%d ", max[s]);
    }
    putchar('\n');
    putchar('\n');
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

    show_status(min, max, k);
    for (int i = 0; i < n; i++) {
        scanf("%ld", max);
        *(p1 = min) = *(p2 = max);
        show_status(min, max, k);

        while (p1 < min + k && p1[0] < p1[1]) {
            bubble(p1);
        }

        while (p2 < max + k && p2[0] > p2[1]) {
            bubble(p2);
        }
        show_status(min, max, k);
    }

    temp = max[1] - min[1];
    printf("%d", temp);
    free(min);
    free(max);
    return 0;
}
