#include <iostream>
#include <vector>
using namespace std

int main():
    int t = 0, n, m, x, y
    cin >> n >> m
    vector<int> relations(m, -1)
    for int i = 0; i < n; i++:
        cin >> x >> y
        if x == y:
            continue
        while relations[x] != -1:
            x = relations[x]
        while relations[y] != -1:
            y = relations[y]
        if x != y:
            relations[x] = y
        else:
            t++
    cout << t << endl
    return 0
