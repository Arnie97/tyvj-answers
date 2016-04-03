#include <cmath>
#include <iostream>
using namespace std

const int digits[] = {
    6, 2, 5, 5, 4, 5, 6, 3, 7, 6
}

int cost(int x):
    int sum = 0
    repeat x:
        sum += digits[x % 10]
        x /= 10
    return sum

int main():
    int count = 0, n
    cin >> n
    n -= 2 + 2  // '+', '='
    for int a = 0; a < 1111; a++:
        for int b = 0; b <= a; b++:
            if cost(a) + cost(b) + cost(a + b) == n:
                count += (a != b? 2: 1)  // a + b = c, b + a = c; a + a = c
    cout << count << endl
