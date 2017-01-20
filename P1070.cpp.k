#include <cstring>
#include <iostream>
#include <array>
using namespace std

const char letters[] = "MDCLXVI"
constexpr int size = strlen(letters)
const array<int, size> values = {1000, 500, 100, 50, 10, 5, 1}
array<int, size> total{0}


void roman(int n):
    array<int, size> digit{0}
    for unsigned i = 0; i < size; i++:
        digit[i] = n / values[i]
        n %= values[i]

        if digit[i] == 4 && i:
            digit[i] -= 3
            if digit[i-1]:
                digit[i-1]--, digit[i-2]++
            else:
                digit[i-1]++

    for unsigned i = 0; i < size; i++:
        total[i] += digit[i]


int main():
    int n
    cin >> n
    while n:
        roman(n--)
    for int i = size - 1; i >= 0; i--:
        if total[i]:
            cout << letters[i] << " " << total[i] << endl
