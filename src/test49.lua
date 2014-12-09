--
-- LuaJIT: demonstracni priklad cislo 49.
--
-- Test JITu - programova smycka s rozvetvenim, zvyseni poctu iteraci.
--



-- deklarace a inicializace lokalnich promennych
local i
local x = 0
local y = 0



-- programova smycka s rozvetvenim
for i = 1,1000 do
    x = x + 1
    if i > 500 then
        y = y + 1
    end
end

print(x, y)



--
-- Finito.
--

