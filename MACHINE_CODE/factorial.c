#include <stdio.h>

int main() {
    int s0 = 0;
    s0 = 5;
    int s1 = 0;
    s1 = 1;

    compare:
    if (s0 == 0) 
    {
        printf("s1 : %d\n", s1);
    }
    else
    {
        s1 = s1 * s0;
        s0 = s0 - 1;
        goto compare;
    }

    return 0;
}