/*
 * Sesty demonstracni priklad - zavolani funkce ze standardni
 * knihovny Lua z jazyka C.
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

    /* bude se volat funkce pojmenovana "print" */
    lua_getglobal(L, "print");
    /* ulozit prvni parametr volane funkce na zasobnik */
    lua_pushinteger(L, 42);
    /* ulozit druhy parametr volane funkce na zasobnik */
    lua_pushstring(L, "Hello world!");
    /* zavolani funkce print a predani dvou parametru */
    /* neocekavame pritom zadne vysledne hodnoty */
    result = lua_pcall(L, 2, 0, 0);
    /* kontrola volani funkce */
    if (result) {
        lua_error(L);
        puts("Chyba pri volani funkce print()!");
    }

    /* odstraneni vsech objektu asociovanych se stavem "Lua" */
    lua_close(L);

    /* navratovy kod */
    return 0;
}

/* finito */

