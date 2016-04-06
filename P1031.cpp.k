#include <climits>
#include <iostream>
#include <vector>
#define imin(a, b) ((a) = (a) < (b)? (a): (b))
#define INFINITY (INT_MAX / 2)
using namespace std

int n, e
vector<vector<int>> graph


enum shortest_path:
    dijkstra,
    bellman_ford,
    spfa,
    floyd_warshall,
    johnson


template<shortest_path algorithm> int solve(int begin, int end):
    cout << "Not implemented." << endl


template<> int solve<dijkstra>(int begin, int end):
    vector<int> dist(n + 1, INT_MAX)
    dist[begin] = 0, dist[0] = INFINITY
    vector<bool> visited(n + 1, false)

    for ;;:
        // choose the nearest unexplored node
        int nearest = 0
        for int i = 1; i <= n; i++:
            if !visited[i] && dist[i] < dist[nearest]:
                nearest = i

        if nearest == end:
            return dist[end]

        visited[nearest] = true
        for int i = 1; i <= n; i++:
            imin(dist[i], dist[nearest] + graph[nearest][i])


template<> int solve<floyd_warshall>(int begin, int end):
    for int k = 1; k <= n; k++:
        for int i = 1; i <= n; i++:
            for int j = 1; j <= n; j++:
                imin(graph[i][j], graph[i][k] + graph[k][j])
    return graph[begin][end]


int main():
    int begin, end
    cin >> n >> e >> begin >> end
    graph.resize(n + 1, vector<int>(n + 1, INFINITY))
    for int i = 0, x, y, z; i < e; i++:
        cin >> x >> y >> z
        graph[x][y] = graph[y][x] = z
    cout << solve<dijkstra>(begin, end) << endl
