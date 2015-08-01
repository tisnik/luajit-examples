/*
 * Prvni demonstracni priklad ukazujici zpusob propojeni
 * skriptu v Lue a kodu v C. Zde se pouze vytisknou informace
 * o verzi interpretru i o jeho autorech. Zadne dalsi operace
 * se s virtualnim strojem neprovadi.
 */

#include <stdio.h>
#include <stdlib.h>

/* Zakladni a doplnkove funkce interpretu jazyka Lua */
#include <lualib.h>

/* Hlavni funkce konzolove aplikace */
int main(void)
{
    /* vytisteni hlavicky */
    puts(LUA_VERSION);
    puts(LUA_RELEASE);
    puts(LUA_COPYRIGHT);
    puts(LUA_AUTHORS);
    putchar('\n');

    /* navratovy kod */
    return 0;
}

/* finito */

