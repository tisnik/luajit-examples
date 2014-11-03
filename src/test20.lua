--
-- LuaJIT: demonstracni priklad cislo 20
--
-- Volani funkci v programovacim jazyce Lua.
--



--
-- Funkce bez parametru.
--
function function1()
end



--
-- Funkce s jednim parametrem.
--
function function2(x)
    return x
end



--
-- Funkce se dvema parametry.
--
function function3(x, y)
    if x and y then
        return x+y
    else
        return nil
    end
end



--
-- Volani funkce function1().
--
function callFunction1()
    function1()
    function1(nil)
    function1(42)
    function1(1, 2)
    function1("xyzzy")
end



--
-- Volani funkce function2().
--
function callFunction2()
    function2()
    function2(nil)
    function2(42)
    function2(1, 2)
    function2("xyzzy")
end



--
-- Volani funkce function3().
--
function callFunction3()
    function3()
    function3(nil)
    function3(42)
    function3(1, 2)
    function3("xyzzy")
end



--
-- Spusteni testu.
--
function main()
    callFunction1()
    callFunction2()
    callFunction3()
end



main()


-- finito

