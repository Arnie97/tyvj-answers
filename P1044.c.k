#include <stdio.h>
#include <string.h>
#include <ctype.h>

#define addr(array, x, y) (array + x * (x + 1) / 2 + y)
#define LENGTH addr(0, 25, 0)

static int n, data[LENGTH], traveled[LENGTH]


int dfs(int row, int col):
    if row == n:
        return 0
    int *current = addr(traveled, row, col)
    if !*current:
        int tmp1 = dfs(row + 1, col), tmp2 = dfs(row + 1, col + 1)
        *current = (tmp1 > tmp2)? tmp1: tmp2
        *current += *addr(data, row, col)
    return *current


int main(void):
    scanf("%d", &n)
    for int *ptr = data; ptr < addr(data, n, 0); ptr++:
        scanf("%d", ptr)
    printf("%d\n", dfs(0, 0))
    return 0
