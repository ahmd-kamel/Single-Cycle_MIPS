#include <stdio.h>

int main() {
    unsigned int s0 = 0;
    s0 = 0xFFFF;
    unsigned int s1 = 0;
    s1 = 0;
    unsigned int s2 = 1;
    s2 = 1;
    unsigned int s3 = 0;
    s3 = s1 + s2;


    compare:
    if (s3 < s0) {
        printf("s3 = %d\n", s3);
        s1 = s2;
        s2 = s3;
        s3 = s1 + s2;
        goto compare;
    }

    return 0;
}

