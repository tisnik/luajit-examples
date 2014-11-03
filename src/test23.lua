--
-- LuaJIT: demonstracni priklad cislo 23
--
-- Volani funkci v programovacim jazyce Lua
-- a vraceni hodnot z funkci.
--



--
-- Funkce nevracejici zadnou hodnotu.
--
function function1()
end



--
-- Funkce vracejici jednu hodnotu.
--
function function2()
    return 42
end



--
-- Funkce vracejici dve hodnoty
--
function function3()
    return 1,2
end



--
-- Dalsi funkce vracejici dve hodnoty
--
function function4()
    return 1,nil
end



--
-- Spusteni testu.
--
function main()
    print(function1());
    print(function2());
    print(function3());
    print(function4());
end



main()


-- finito

