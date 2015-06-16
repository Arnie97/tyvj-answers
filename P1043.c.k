#include <stdio.h>
#include <string.h>
#include <ctype.h>

#define LENGTH 30
#define dprintf(x) printf x


int priority(char x):
    switch:
        x
    case '#', '(':
        return 0
    case '+', '-':
        return 1
    case '*', '/':
        return 2
    case '^':
        return 3
    default:
        return -1


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
    char negative = 0
    if str[head] == '-':
        negative = 1
        head++

    int magnitude = 1, sum = 0
    for int i = tail - 1; i >= head; i--:
        sum += (str[i] - '0') * magnitude
        magnitude *= 10
    dprintf(("mov \"%s\"[%d:%d] = %d\n", str, head, tail, sum))
    return negative? -sum: sum


int main(void):
    int head = 0, tail = 0, nested = 0
    int num[LENGTH], num_count = 0, sym_count = 0
    char sym[LENGTH] = "#", sym_n[LENGTH] = {0}, input[LENGTH]

    scanf("%s", input)
    int len = strlen(input)
    for int i = 0; i <= len; i++:
        if i == len && sym_count == 0:
            break
        elif isdigit(input[i]):
            tail++
            continue
        elif head < tail:
            num[num_count++] = substr_to_int(input, head, tail)
        head = tail = i + 1

        if input[i] == '(':
            nested++
        elif input[i] == ')':
            nested--
        elif input[i] == '-' && priority(input[i-1]) > 0:
            head--
        elif (i == len || sym_n[sym_count] == nested && priority(sym[sym_count]) >= priority(input[i]) || sym_n[sym_count] > nested):
            num_count--
            calculate(sym[sym_count--], num + num_count - 1, num + num_count)
            i--
        else:
            sym[++sym_count] = input[i]
            sym_n[sym_count] = nested
            dprintf(("push %c\n", input[i]))

    printf("%d\n", *num)
    return 0
