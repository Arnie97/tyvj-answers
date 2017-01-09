#include <iostream>
using namespace std

unsigned m, n

int go(unsigned steps, unsigned diff):
    if diff >= n:
        diff -= n
    return steps? go(steps - 1, diff + 1) + go(steps - 1, diff + n - 1): !diff

int main():
    cin >> n >> m
    cout << go(m, 0) << endl
