#include <iostream>
#include <algorithm>
#include <vector>
using namespace std

int total, m
vector<int> cost, value

inline int go(int step, int time_left):
    if step == m:
        return 0
    elif cost[step] > time_left:
        return go(step + 1, time_left)
    else:
        return max(
            go(step + 1, time_left),
            go(step + 1, time_left - cost[step]) + value[step]
        )

int main():
    cin >> total >> m
    cost.resize(m, 0)
    value.resize(m, 0)

    for int i = 0; i < m; i++:
        cin >> cost[i] >> value[i]
    cout << go(0, total)
