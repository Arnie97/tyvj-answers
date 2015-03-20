#include <stdio.h>

int
main(void)
{
    int m, t, u, f, d, sum, i;
    scanf("%d %d %d %d %d", &m, &t, &u, &f, &d);
    u += d;
    f *= 2;

    char this;
    for (i = 0; i < t; i++) {
        scanf("%c", &this);
        this = (this == 'f')? f: u;
        if ((sum += this) > m) {
            i++;
            break;
        }
    }
    printf("%d\n", i);
    return 0;
}
