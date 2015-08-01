/*
 * Sedmy demonstracni priklad - zavolani funkce ze standardni
 * knihovny Lua z jazyka C a precteni navratove hodnoty.
 */

#include <stdio.h>
#include <stdlib.h>

/* Zakladni a doplnkove funkce interpretu jazyka Lua */
#include <lualib.h>
#include <lauxlib.h>

/* Hlavni funkce konzolove aplikace */
int main(void)
{
    int result;

    /* vytisteni hlavicky */
    puts(LUA_RELEASE);
    puts(LUA_COPYRIGHT);
    puts(LUA_AUTHORS);
    putchar('\n');

    /* vytvoreni objektu, do nejz se uklada stav virtualniho stroje */
    lua_State* L = luaL_newstate();
    printf("State: %p\n", L);

    /* nacteni vsech knihoven */
    luaL_openlibs(L);

    /* bude se volat funkce pojmenovana "tonumber" */
    lua_getglobal(L, "tonumber");
    /* ulozit parametr volane funkce na zasobnik */
    lua_pushstring(L, "42");
    /* zavolani funkce print a predani parametru */
    result = lua_pcall(L, 1, 1, 0);
    /* kontrola volani funkce */
    if (result) {
        lua_error(L);
        puts("Chyba pri volani funkce print()!");
    }
    /* ziskani vysledku */
    printf("Result is: %d\n", (int)lua_tointeger(L, 0));
    lua_pop(L, 1);

    /* odstraneni vsech objektu asociovanych se stavem "Lua" */
    lua_close(L);

    /* navratovy kod */
    return 0;
}

/* finito */

