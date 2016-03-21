#include <iostream>
#include <queue>
using namespace std

int main():
    int sum = 0, n, t
    cin >> n
    priority_queue<int> data
    for int i = 0; i < n; i++:
        cin >> t
        data.push(-t)

    while data.size() > 1:
        t = data.top()
        data.pop()
        t += data.top()
        data.pop()
        sum += t
        data.push(t)

    cout << -sum << endl
