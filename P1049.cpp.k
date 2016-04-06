#include <iostream>
#include <algorithm>
#include <vector>
#define imax(a, b) ((a) = (a) > (b)? (a): (b))
using namespace std

int main():
    int m = 1, n
    cin >> n
    vector<int> data(n), dp(n, 1)

    for int i = 0; i < n; i++:
        cin >> data[i]
        for int j = 0; j < i; j++:
            if data[j] <= data[i]:
                imax(dp[i], dp[j] + 1)
        imax(m, dp[i])

    cout << m << endl
    return 0
