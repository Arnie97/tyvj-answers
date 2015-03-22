#include <stdio.h>
#include <string.h>

int
main(void)
{
    char input[1501], this[1501], output[1501];
    memset(output, 0, 1501);

    scanf("%s", &input);
    int zero_pos = strlen(input);
    input[zero_pos++] = '+';
    input[zero_pos] = '\0';

    int max_pos = 0, sum = 0, carry = 0;
    for (char *p = input; *p != '\0'; p++) {
        if (*p == '+') {
            for (int i = 0; i <= max_pos + 1; i++) {
                carry += this[max_pos - i] + output[i];
                if (carry > 9) {
                    sum = carry % 10;
                    output[i] = sum;
                    carry /= 10;
                } else {
                    output[i] = carry;
                    carry = 0;
                }
            }
            max_pos = 0;
        } else {
            this[max_pos++] = *p - '0';
        }
    }

    zero_pos = 1;
    for (int i = 1500; i > 0; i--) {
        if (!zero_pos) {
            printf("%c", output[i] + '0');
        } else if (output[i]) {
            zero_pos = 0;
            i++;
        }
    }
    putchar('\n');

    return 0;
}
