#include <iostream>

int main():
    int         m,   t,   u,   f,   d
    std::cin >> m >> t >> u >> f >> d
    u += d
    f *= 2

    char c
    for d = 0; d < t; d++:
        std::cin >> c
        if (m -= (c == 'f')? f: u) < 0:
            break
    std::cout << d
