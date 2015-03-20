#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define bubble(x) temp = (x)[m+1]; (x)[m+1] = (x)[m]; (x)[m] = temp;


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
    int m, n, k;
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

        for (m = 0; m < k && min[m] < min[m+1]; m++) {
            bubble(min);
        }

        for (m=0; m < k && max[m] > max[m+1]; m++) {
            bubble(max);
        }
        show_status(min, max, k);
    }

    temp = max[1] - min[1];
    printf("%d", temp);
    free(min);
    free(max);
    return 0;
}
