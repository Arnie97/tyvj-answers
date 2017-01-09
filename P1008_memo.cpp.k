#include <iostream>
#include <vector>
using namespace std

unsigned m, n
vector<vector<int>> matrix

int go(unsigned steps, unsigned diff):
    if diff >= n:
        diff -= n
    #define mem matrix[steps][diff]
    return mem != -1? mem: (mem =
        (steps? go(steps - 1, diff + 1) + go(steps - 1, diff + n - 1): !diff)
    )

int main():
    cin >> n >> m
    matrix.resize(m + 1, vector<int>(n, -1))
    cout << go(m, 0) << endl
