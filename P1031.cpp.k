#include <climits>
#include <iostream>
#include <vector>
#define imin(a, b) ((a) = (a) < (b)? (a): (b))
using namespace std

int main():
    int n, e, start, end
    cin >> n >> e >> start >> end
    vector<vector<int>> graph(n + 1, vector<int>(n + 1, INT_MAX / 2))
    for int i = 0, x, y, z; i < e; i++:
        cin >> x >> y >> z
        graph[x][y] = graph[y][x] = z

    for int k = 1; k <= n; k++:
        for int i = 1; i <= n; i++:
            for int j = 1; j <= n; j++:
                imin(graph[i][j], graph[i][k] + graph[k][j])

    cout << graph[start][end] << endl
