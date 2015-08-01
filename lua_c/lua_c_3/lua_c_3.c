/*
 * Treti demonstracni priklad - spusteni skriptu napsaneho
 * v programovacim jazyce Lua, ktery je ulozeny v Ceckovem
 * retezcovem literalu.
 */

#include <stdio.h>
#include <stdlib.h>

/* Zakladni a doplnkove funkce interpretu jazyka Lua */
#include <lualib.h>
#include <lauxlib.h>

/* Skript napsany v programovacim jazyce Lua */
const char * SCRIPT =
"-- Demonstracni priklad: pouziti uzaveru\n"\
"\n"\
"-- pomocna funkce vracejici uzaver\n"\
"function defPosloupnosti(n)\n"\
    "-- pamatovana hodnota, ktera vsak\n"\
    "-- neni z okolniho programu dostupna\n"\
    "local y = 1\n"\
    "-- pocitadlo volani = exponent\n"\
    "local index = 0\n"\
    "-- anonymni funkce vytiskne pamatovanou\n"\
    "-- hodnotu a nakonec ji vynasobi zvolenou konstantou\n"\
    "return function()\n"\
        "print(index, y)\n"\
        "y = y * n\n"\
        "index = index + 1\n"\
    "end\n"\
"end\n"\
"\n"\
"print('mocniny cisla 2')\n"\
"-- ziskani uzaveru\n"\
"generator = defPosloupnosti(2)\n"\
"\n"\
"-- postupne se budou tisknout\n"\
"-- mocniny cisla 2\n"\
"for i=0, 16 do\n"\
    "generator()\n"\
"end\n"\
"\n"\
"print()\n"\
"\n"\
"print('mocniny cisla 3')\n"\
"-- ziskani uzaveru\n"\
"generator = defPosloupnosti(3)\n"\
"\n"\
"-- postupne se budou tisknout\n"\
"-- mocniny cisla 3\n"\
"for i=0, 16 do\n"\
    "generator()\n"\
"end\n"\
"\n"\
"print()\n"\
"\n"\
"print('mocniny cisla 10')\n"\
"-- ziskani uzaveru\n"\
"generator = defPosloupnosti(10)\n"\
"\n"\
"-- postupne se budou tisknout\n"\
"-- mocniny cisla 3\n"\
"for i=0, 16 do\n"\
    "generator()\n"\
"end\n";

/* Hlavni funkce konzolove aplikace */
int main(void)
{
    /* navratova hodnota ziskana po zavolani skriptu */
    int result;

    /* vytisteni hlavicky */
    puts(LUA_RELEASE);
    puts(LUA_COPYRIGHT);
    puts(LUA_AUTHORS);
    putchar('\n');

    /* vytvoreni objektu, do nejz se uklada stav virtualniho stroje */
    lua_State* L = luaL_newstate();
    /* nacteme zakladni knihovnu obsahujici mj. i funkci print() */
    luaopen_base(L);
    /* nacteni retezce interpretem, jeho preklad a nasledne spusteni */
    result = luaL_dostring(L, SCRIPT);
    /* odstraneni vsech objektu asociovanych se stavem "Lua" */
    lua_close(L);
    if (result != 0)
    {
        printf("Error # %d\n", result);
    }
    /* vypocet navratoveho kodu */
    return (result != 0);
}

/* finito */

