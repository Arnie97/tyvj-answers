#include <iostream>
#include <map>
using namespace std

int main():
    int n, t
    cin >> n
    map<int, unsigned> numbers
    for int i = 0; i < n; i++:
        cin >> t
        if !numbers.count(t):
            numbers[t] = 0
        numbers[t]++
    for auto &pair => numbers:
        cout << pair.first << ' ' << pair.second << endl
