#include <stdio.h>

void function1(void)
{
    puts("Function1!");
}

void function2(int x)
{
    printf("Function2! %d\n", x);
}

void function3(int x, int y)
{
    printf("Function3! %d\n", x+y);
}

void function4(float x)
{
    printf("Function4! %7.5f\n", 1.f/x);
}

void function5(char c)
{
    printf("Function5! %c\n", c);
}

