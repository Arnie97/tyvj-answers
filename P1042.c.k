#include <stdio.h>
#include <string.h>
#include <ctype.h>

#define LENGTH 20
#define dprintf(x) printf x


int priority(char x):
    switch:
        x
    case '#':
        return 0
    case '+', '-':
        return 1
    case '*', '/':
        return 2
    case '^':
        return 3


int *calculate(char op_type, int *op1, int *op2):
    dprintf(("pop %c %d %d\n", op_type, *op1, *op2))
    switch:
        op_type
    case '+':
        *op1 += *op2
    case '-':
        *op1 -= *op2
    case '*':
        *op1 *= *op2
    case '/':
        *op1 /= *op2
    case '^':
        pass  // MAGIC. DON'T TOUCH.
        int result = 1
        for int i = 0; i < *op2; i++:
            result *= *op1
        *op1 = result
    return op1


int substr_to_int(char *str, int head, int tail):
    if head >= tail:
        return -1

    int magnitude = 1, sum = 0
    for int i = tail - 1; i >= head; i--:
        sum += (str[i] - '0') * magnitude
        magnitude *= 10
    dprintf(("mov \"%s\"[%d:%d] = %d\n", str, head, tail, sum))
    return sum


int main(void):
    int head = 0, tail = 0
    int num[LENGTH], num_count = 0, sym_count = 0
    char sym[LENGTH] = "#", input[LENGTH]

    scanf("%s", input)
    int len = strlen(input)
    for int i = 0; i <= len; i++:
        if i == len && sym_count == 0:
            break
        elif isdigit(input[i]):
            tail++
        else:
            int n = substr_to_int(input, head, tail)
            if n >= 0:
                num[num_count++] = n
            head = tail = i + 1
            if i == len || priority(sym[sym_count]) >= priority(input[i]):
                num_count--
                calculate(sym[sym_count--], num + num_count - 1, num + num_count)
                i--
            else:
                sym[++sym_count] = input[i]
                dprintf(("push %c\n", input[i]))

    printf("%d\n", *num)
    return 0
