#include <iostream>
#include <algorithm>
#include <vector>
using namespace std

int total, m
vector<int> cost, value
vector<vector<int>> record

inline int dfs(int step, int time_left):
    #define r record[step][time_left]
    // cout << "(" << step << "," << time_left << ")" << endl
    if r:
        return r
    elif step == m:
        return r = 0
    elif cost[step] > time_left:
        return r = dfs(step + 1, time_left)
    else:
        return r = max(
            dfs(step + 1, time_left),
            dfs(step + 1, time_left - cost[step]) + value[step]
        )

int main():
    cin >> total >> m
    cost.resize(m, 0)
    value.resize(m, 0)
    record.resize(m + 1, vector<int>(total + 1, 0))

    for int i = 0; i < m; i++:
        cin >> cost[i] >> value[i]

    cout << dfs(0, total) << endl
