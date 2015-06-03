#include <stdio.h>
#include <string.h>
#define _(data_array, r, c) *(data_array + (r) * c_bound + (c))

int r_bound, c_bound, *data, *traveled


int dfs(int r, int c):
    int *ptr = &_(traveled, r, c), max = 0, temp
    if *ptr:
        return *ptr
    if r > 0 && _(data, r - 1, c) < _(data, r, c):
        if (temp = dfs(r - 1, c)) > max:
            max = temp
    if r < r_bound - 1 && _(data, r + 1, c) < _(data, r, c):
        if (temp = dfs(r + 1, c)) > max:
            max = temp
    if c > 0 && _(data, r, c - 1) < _(data, r, c):
        if (temp = dfs(r, c - 1)) > max:
            max = temp
    if c < c_bound - 1 && _(data, r, c + 1) < _(data, r, c):
        if (temp = dfs(r, c + 1)) > max:
            max = temp
    return *ptr = ++max


int main(void):
    scanf("%d %d", &r_bound, &c_bound)
    int     data_array[r_bound][c_bound]
    int traveled_array[r_bound][c_bound]
    data     = (int *)data_array
    traveled = (int *)traveled_array
    memset(traveled, 0, sizeof(traveled_array))

    int max = 0, r_max, c_max
    for int r = 0; r < r_bound; r++:
        for int c = 0; c < c_bound; c++:
            scanf("%d", &_(data, r, c))
            if _(data, r, c) > max:
                max = _(data, r_max = r, c_max = c)
    printf("%d\n", dfs(r_max, c_max))
    return 0
