#include <algorithm>
#include <iostream>
#include <vector>


template <typename type> bool isprime(type n):
    if n < 2:
        return false
    else:
        type max_factor = sqrt(n) + 1
        for type i = 2; i <= max_factor; i++:
            if n % i == 0:
                return false
        return true


int main():
    using namespace std

    int n, k
    cin >> n >> k

    vector<long> numbers(n)
    for auto &i => numbers:
        cin >> i

    sort(numbers.begin(), numbers.end())

    long m = numbers[n-k] - numbers[k-1]
    cout << (isprime(m)? "YES": "NO") << endl
    cout << m << endl
