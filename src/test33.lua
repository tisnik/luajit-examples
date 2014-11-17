--
-- LuaJIT: demonstracni priklad cislo 33.
--
-- Programova smycka typu repeat-until s prikazem break.
--



-- pocitadlo smycky
local i = 10

-- programova smycka typu repeat-until
repeat
    print(i)
    i = i - 1
    if i == 0 then
        break
    end
until false



-- finito

