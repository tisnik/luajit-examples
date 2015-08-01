/*
 * Druhy demonstracni priklad - inicializace virtualniho stroje
 * ulozeni jeho stavu do lokalni promenne a nasledne ukonceni prace.
 */

#include <stdio.h>
#include <stdlib.h>

/* Zakladni a doplnkove funkce interpretu jazyka Lua */
#include <lualib.h>
#include <lauxlib.h>

/* Hlavni funkce konzolove aplikace */
int main(void)
{
    /* vytisteni hlavicky */
    puts(LUA_RELEASE);
    puts(LUA_COPYRIGHT);
    puts(LUA_AUTHORS);
    putchar('\n');

    /* vytvoreni objektu, do nejz se uklada stav virtualniho stroje */
    lua_State* L = luaL_newstate();
    printf("State: %p\n", L);

    /* odstraneni vsech objektu asociovanych se stavem "Lua" */
    lua_close(L);

    /* navratovy kod */
    return 0;
}

/* finito */

