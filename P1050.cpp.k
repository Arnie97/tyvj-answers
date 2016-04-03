#include <iostream>
#include <algorithm>
#include <string>
using namespace std

string s1, s2
vector<vector<int>> record

int dfs(int p1, int p2):
    #define rec record[p1][p2]
    if p1 < 0 || p2 < 0:
        return 0
    elif rec:
        return rec
    elif s1[p1] == s2[p2]:
        return rec = dfs(p1 - 1, p2 - 1) + 1
    else:
        return rec = max(dfs(p1 - 1, p2), dfs(p1, p2 - 1))

int main():
    cin >> s1 >> s2
    record.resize(s1.length() + 1, vector<int>(s2.length() + 1))
    cout << dfs(s1.length(), s2.length()) - 1 << endl
    return 0
