#include <stdio.h>

const char *HELLO_MSG = "Hello World!";

void function1(const char *str)
{
    printf("Function1! %s\n", str);
}

const char* function2(void)
{
    return HELLO_MSG;
}

