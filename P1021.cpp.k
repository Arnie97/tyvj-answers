#include <iostream>
#include <vector>
#include <cstdlib>
using namespace std

int main():
    int n
    cin >> n
    vector<int> points(n, 0)

    unsigned long long sum = 0
    for int i = 0; i < n; i++:
        cin >> points[i]
        for int j = 0; j < i; j++:
            sum += abs(points[i] - points[j])
    cout << sum * 2 << endl
