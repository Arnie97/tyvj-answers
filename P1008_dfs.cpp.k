#include <iostream>
using namespace std

int count = 0, n, m

void go(int steps, int diff):
    if diff == n || diff + n == 0:
        diff = 0

    if steps:
        go(steps - 1, diff + 1)
        go(steps - 1, diff - 1)
    elif !diff:
        count++

int main():
    cin >> n >> m
    go(m, 0)
    cout << count << endl
