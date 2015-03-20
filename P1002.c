#include <stdio.h>
#include <string.h>

int
main(void)
{
    char name[21], max_name[21], cadre, west;
    int n, avg, rate, papers;
    int scholarship, max_scholarship = 0, total_scholarship = 0;

    scanf("%d", &n);
    for (int i = 0; i < n; i++) {
        scanf("%s %d %d %c %c %d", &name, &avg, &rate, &cadre, &west, &papers);
        scholarship = 0;

        if (cadre == 'Y')
            if (rate > 80)
                scholarship += 850;
        if (avg > 80) {
            if (papers >= 1)
                scholarship += 8000;
            if (avg > 85) {
                if (rate > 80)
                    scholarship += 4000;
                if (avg > 90)
                    scholarship += 2000;
                if (west == 'Y')
                    scholarship += 1000;
            }
        }

        if (scholarship > max_scholarship) {
            max_scholarship = scholarship;
            strcpy(max_name, name);
        }
        total_scholarship += scholarship;
    }

    printf("%s\n%d\n%d\n", max_name, max_scholarship, total_scholarship);
    return 0;
}
