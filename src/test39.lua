--
-- LuaJIT: demonstracni priklad cislo 39.
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
    return function(delta)
        -- counter se oznacuje jako "externi lokalni promenna"
        -- popr. v terminologii jazyka Lua "upvalue"
        counter = counter + delta
        return counter
    end
end



--
-- Spusteni testu.
--
function main()
    -- ziskame "instanci" anonymni funkce i na ni navazanou
    -- externi lokalni promennou "counter"
    -- -> closure
    local mycounter = createCounter()

    -- volani uzaveru
    for i = 1, 10 do
        print("iteration #" .. i)
        print("    mycounter(1):  " .. mycounter(1))
        print("    mycounter(10): " .. mycounter(10))
        print("    mycounter(-2): " .. mycounter(-2))
        print()
    end
end



main()



--
-- Finito.
--

