--
-- Demonstracni priklad cislo 21.
--
-- Volani "statickych metod" v programovacim jazyce Lua.
--



testClass = {}

--
-- Funkce/staticka metoda bez parametru.
--
function testClass.function1()
end



--
-- Funkce/staticka metoda s jednim parametrem.
--
function testClass.function2(x)
    return x
end



--
-- Funkce/staticka metoda se dvema parametry.
--
function testClass.function3(x, y)
    if x and y then
        return x+y
    else
        return nil
    end
end



--
-- Volani funkci/statickych metod.
--
function callFunction1()
    testClass.function1()
    testClass.function1(nil)
    testClass.function1(42)
    testClass.function1(1, 2)
    testClass.function1("xyzzy")
end



--
-- Volani funkce function2().
--
function callFunction2()
    testClass.function2()
    testClass.function2(nil)
    testClass.function2(42)
    testClass.function2(1, 2)
    testClass.function2("xyzzy")
end



--
-- Volani funkce function3().
--
function callFunction3()
    testClass.function3()
    testClass.function3(nil)
    testClass.function3(42)
    testClass.function3(1, 2)
    testClass.function3("xyzzy")
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



--
-- Finito.
--

