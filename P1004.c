#include <stdio.h>
#include <limits.h>

#define ski(r, c) *(p_ski + (r) * c_max + (c))

static int r_max, c_max, **p_ski;

int
dfs(int row, int col)
{
    /*
    for (int r = 0; r < r_max; r++) {
        for (int c = 0; c < c_max; c++) {
            if (r == row && c == col) {
                printf("%3s", "x");
            } else {
                printf("%3d", ski(r, c));
            }
        }
        putchar('\n');
    }
    putchar('\n');
    */
    int len = 0, val = ski(row, col), temp;
    char r_stat[3], c_stat[3];
    r_stat[1] = c_stat[1] = 1;
    r_stat[0] = (row > 0);
    r_stat[2] = (row < r_max);
    c_stat[0] = (col > 0);
    c_stat[2] = (col < c_max);
    for (int dr = -1; dr <= 1; dr++) {
        for (int dc = -1; dc <= 1; dc++) {
            if (
                (dr || dc) &&
                r_stat[dr + 1] && c_stat[dc + 1] &&
                ski(row + dr, col + dc) > val
            ) {
                temp = dfs(row + dr, col + dc);
                if (len < temp) {
                    len = temp;
                }
            }
        }
    }
    return len + 1;
}

int
main(void)
{
    scanf("%d %d", &r_max, &c_max);
    int ski_resort[r_max][c_max], min = LONG_MAX, row, col;
    p_ski = (int *)ski_resort;
    for (int r = 0; r < r_max; r++) {
        for (int c = 0; c < c_max; c++) {
            scanf("%d", &ski(r, c));
            if (ski(r, c) < min) {
                min = ski(row = r, col = c);
            }
        }
    }
    printf("%d", dfs(row, col));
    return 0;
}
