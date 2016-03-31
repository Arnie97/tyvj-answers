#include <algorithm>
#include <cstdlib>
#include <cctype>
#include <iostream>
#include <string>
using namespace std

int main():
    int p1, p2, p3
    string input
    cin >> p1 >> p2 >> p3 >> input
    p3 = p3 == 1? 1: -1

    for auto &c => input:
        auto l = *(&c - 1), r = *(&c + 1)
        if (
            c != '-' || &c == &input.front() || &c == &input.back() ||
            l == '-' || r == '-' || l >= r || isalpha(l) ^ isalpha(r)
        ):
            cout << c
        elif l + 1 != r:
            if p3 < 0:
                swap(l, r)
            for auto i = l + p3; i != r; i += p3:
                for auto j = 0; j < p2; j++:
                    cout << char(p1 == 3? '*': (p1 == 1? i: toupper(i)))
