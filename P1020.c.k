#include <stdio.h>
#include <string.h>
#include <ctype.h>

#define LENGTH 20000
#define isprime(n) (map[n] == 0)


char* create_prime_map(char *buffer):
    for int i = 1; i <= LENGTH; i++:
        for int j = 2; j < i && j <= 139; j++:
            if buffer[j] == 0 && i % j == 0:
                buffer[i] = 1
    return buffer


int main(void):
    static char mem[LENGTH], *map = mem - 1  // works like an array with lower bound 1
    create_prime_map(map)

    int n
    scanf("%d", &n)

    int max_prime = -1, max_number = -1, data[n]
    for int i = 0; i < n; i++:
        scanf("%d", data + i)
        if isprime(data[i]):
            if data[i] > max_prime:
                max_number = max_prime = data[i]
        else:
            for int j = data[i]; j > max_prime; j--:
                if isprime(j) && data[i] % j == 0:
                    max_number = data[i]
                    max_prime = j

    printf("%d\n", max_number)
    return 0
