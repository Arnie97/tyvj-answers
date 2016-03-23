#include <cstdlib>
#include <iostream>
using namespace std

int *rows, n

void print(int count):
    cerr << '[' << count << ']' << endl
    for int i = 0; i < n; i++:
        for int j = 0; j < n; j++:
            cerr << (rows[i] == j? '#': '.')
        cerr << endl

    if count <= 3:
        for int i = 0; i < n; i++:
            cout << rows[i] + 1 << ' '
        cout << endl

int valid(int k):
    for int i = 0; i < k; i++:      // 检查[0, k)行中已有的皇后
        if (                        // 数据结构保证了皇后不会共行，无需检查
            rows[k] == rows[i] ||   // 有皇后与(rows[k], k)处的皇后共列
            abs(rows[k] - rows[i]) == k - i
        ):                          // 有皇后与(rows[k], k)在同一对角线上
            return 0
    return 1

int main():
    cin >> n
    rows = new int[n + 2]() + 1     // 包括[-1]和[n]两个元素，避免溢出

    int k = 0, count = 0
    while k >= 0:
        cerr << "(" << k << ", " << rows[k] << ") "
        if k < n && rows[k] < n:
            if valid(k):            // 当前位置可以放置
                rows[++k] = 0       // 递归进入下一行第0列
                cerr << "push" << endl << string(2 * k, ' ')
            else:                   // 否则
                rows[k]++           // 继续探测当前行的下一列
        else:
            cerr << "pop" << endl
            if k == n:              // 得到一个解
                print(++count)
            rows[--k]++             // 回溯，继续探测上一行接下来的一列
            cerr << string(k >= 0? 2 * k: 0, ' ')

    cout << count << endl
    delete[] rows
