#include <iostream>
#include <algorithm>
#include <string>
#include <vector>
using namespace std

int main():
    string s1, s2
    cin >> s1 >> s2
    vector<vector<int>> dp(s1.length() + 2, vector<int>(s2.length() + 2))
    for int i = 0; i <= s1.length(); i++:
        for int j = 0; j <= s2.length(); j++:
            dp[i + 1][j + 1] = s1[i] == s2[j]? \
                dp[i][j] + 1: max(dp[i + 1][j], dp[i][j + 1])
    cout << dp[s1.length() + 1][s2.length() + 1] - 1 << endl
