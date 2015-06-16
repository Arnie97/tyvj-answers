#include <stdio.h>
#include <string.h>


int isprime(int n):
    if n < 2:
        return 0
    char factors[5] = {2, 3, 5, 7, 0}
    for char *ptr = factors; *ptr; ptr++:
        if n == *ptr:
            return 1
        elif n % *ptr == 0:
            return 0
    return 1


int main(void):
    static char input[100], alphabet[26]
    scanf("%s", input)
    for int len = strlen(input), i = 0; i < len; i++:
        alphabet[input[i] - 'a']++

    int max_n = -1, min_n = 100
    for int i = 0; i < 26; i++:
        if alphabet[i] > max_n:
            max_n = alphabet[i]
        if alphabet[i] && alphabet[i] < min_n:
            min_n = alphabet[i]

    if isprime(max_n -= min_n):
        printf("Lucky Word\n%d\n", max_n)
    else:
        printf("No Answer\n%d\n", 0)
