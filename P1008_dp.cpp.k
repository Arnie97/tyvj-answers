#include <iostream>
#include <vector>
using namespace std

int main():
    int m, n
    cin >> n >> m
    vector<vector<int>> matrix(m + 1, vector<int>(n))
    for int i = 0; i <= m; i++:
        for int j = n - 1; j >= 0; j--:
            matrix[i][j] = (!i? !j:
                matrix[i - 1][j - 1 + (j <=     0? n: 0)] +
                matrix[i - 1][j + 1 - (j >= n - 1? n: 0)])
    cout << matrix[m][0] << endl
