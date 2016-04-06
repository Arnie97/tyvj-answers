#include <cctype>
#include <iostream>
#include <vector>
#define imax(a, b) ((a) = (a) > (b)? (a): (b))
using namespace std

int main():
    string str
    cin >> str
    int s = 0, *alphabet = new int[26] - 'a'
    for auto c => str:
        alphabet[c] = s++

    while !(cin >> str).eof() && isalpha(str[0]):
        int m = 1
        vector<int> dp(s = str.size(), 1)
        for int i = 0; i < s; i++:
            for int j = 0; j < i; j++:
                if alphabet[str[j]] <= alphabet[str[i]]:
                    imax(dp[i], dp[j] + 1)
                imax(m, dp[i])
        cout << m
    cout << endl
