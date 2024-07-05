// write code as simple as possible
// I can write this code with less one reg
#include <stdio.h>

int main() {
    int num_1 = 0;
    num_1 = 120;

    int num_2 = 0;
    num_2 = 60;

    int result = 0;

    compare:
    if (num_1 == num_2) 
    {
        result = num_1;
    }
    else 
    {
        if (num_1 < num_2) 
        {
            num_2 = num_2 - num_1;
            goto compare;

        }
        else
        {
            num_1 = num_1 - num_2;
            goto compare;

        } 
    }

    printf("GCD: %d\n", result);
    return 0;
}