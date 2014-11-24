--
-- LuaJIT: demonstracni priklad cislo 37
--
-- Vytvareni a nasledne pouziti uzaveru (closure).
--



-- Vytvoreni a vraceni uzaveru, tj. funkce na niz je navazana
-- externi lokalni promenna - upvalue.
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
    -- ziskame "instanci" anonymni funkce i na ni navazanou
    -- externi lokalni promennou "counter"
    -- -> closure
    local mycounter = createCounter()
    print(mycounter())
    print(mycounter())
    print(mycounter())
end



main()



--
-- Finito.
--

