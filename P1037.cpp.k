#include <iostream>
#include <iomanip>
#include <cstdint>
using namespace std

uint64_t pow(int base, int exp):
    uint64_t s = 1
    for int i = 0; i < exp; i++:
        s *= base
    return s

int main(void):
    int n, k
    cin >> n >> k
    uint64_t s = 1, e12 = pow(10, 12)

    for int i = 1, j; i <= n; i++:
        for j = i; j % 5 == 0; j /= 5:
            s /= 2
        s *= j
        s %= e12

    s %= pow(10, k)
    cout << setw(k) << setfill('0') << s << endl
