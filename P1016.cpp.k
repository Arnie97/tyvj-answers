#include <iostream>
#include <algorithm>
#include <vector>
using namespace std

int v, n
vector<int> size
vector<vector<int>> record

inline int dfs(int step, int space_left):
    #define r record[step][space_left]
    if r:
        return r
    elif step == n:
        return r = space_left
    elif size[step] > space_left:
        return r = dfs(step + 1, space_left)
    else:
        return r = min(
            dfs(step + 1, space_left),
            dfs(step + 1, space_left - size[step])
        )

int main():
    cin >> v >> n
    size.resize(n, 0)
    record.resize(n + 1, vector<int>(v + 1, 0))

    for int i = 0; i < n; i++:
        cin >> size[i]

    cout << dfs(0, v) << endl
