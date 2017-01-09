#include <iostream>
using namespace std

int m, n

int go(int steps, int diff):
    if diff == n || diff + n == 0:
        diff = 0
    return steps? go(steps - 1, diff + 1) + go(steps - 1, diff - 1): !diff

int main():
    cin >> n >> m
    cout << go(m, 0) << endl
