--
-- LuaJIT: demonstracni priklad cislo 38.
--
-- Vytvareni a nasledne pouziti uzaveru (closure).
--



-- Vytvoreni a vraceni uzaveru
function createCounter()
    -- lokalni promenna, jejiz "zivotnost" presahuje
    -- pouhe zavolani a provedeni bloku funkce createCounter()
    local counter = 0
    -- navratovou hodnotou funkce createCounter() je anonymni
    -- funkce pracujici s promennou cnt, ktera je na tuto
    -- anonymni funkci navazana
    return function()
        -- counter se oznacuje jako "externi lokalni promenna"
        -- popr. v terminologii jazyka Lua "upvalue"
        counter = counter + 1
        return counter
    end
end



--
-- Spusteni testu.
--
function main()
    -- ziskame dvojici uzaveru
    local counter1 = createCounter()
    local counter2 = createCounter()

    -- volani uzaveru
    for i = 1, 10 do
        print("iteration #" .. i)
        print("    counter1: " .. counter1())
        print("    counter2: " .. counter2())
        print("    counter1: " .. counter1())
        print()
    end
end



main()



--
-- Finito.
--

