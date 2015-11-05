#include <iostream>
#include <string>
using namespace std

int main():
    int n
    cin >> n
    string s
    for int i = 0; i < n; i++:
        cin >> s
        if s[s.size() - 1] - '0' & 0x1:
            cout << "odd"  << endl
        else:
            cout << "even" << endl
