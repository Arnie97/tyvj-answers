#include <stdio.h>

int
main(void)
{
    char input[14], isbn[10], prev;
    scanf("%s", input);
    sscanf(input, "%c-%3c-%5c-%c", isbn, isbn + 1, isbn + 4, &prev);

    int sum = 0;
    for (int i = 0; i < 9; i++) {
        sum += (i + 1) * (isbn[i] - '0');
    }
    char now = sum % 11;
    now = (now == 10)? 'X': now + '0';

    if (now == prev) {
        puts("Right");
    } else {
        input[12] = '\0';
        printf("%s%c\n", input, now);
    }
    return 0;
}
