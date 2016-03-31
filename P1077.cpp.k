#include <iostream>
#include <cmath>
using namespace std

int main():
    int p, n, li = 0, lj = 0, ri = 0, rj = 0
    cin >> p >> n
    double s = sqrt(p), l = -p, r = p
    for int j = 1; j <= n / s + 1; j++:
        for int i = s * j - 1; i <= s * j + 1 && i <= n; i++:
            auto delta = (double)i / j - s
            if l < delta && delta < 0:
                l = delta, li = i, lj = j
            elif 0 < delta && delta < r:
                r = delta, ri = i, rj = j
    cout << li << '/' << lj << ' ' << ri << '/' << rj << endl
