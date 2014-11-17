--
-- LuaJIT: demonstracni priklad cislo 32.
--
-- Programova smycka typu while s prikazem break.
--



-- pocitadlo smycky
local i = 10

-- programova smycka typu while
while true do
    print(i)
    i = i - 1
    if i == 0 then
        break
    end
end



-- finito

