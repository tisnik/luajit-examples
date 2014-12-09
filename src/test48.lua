--
-- LuaJIT: demonstracni priklad cislo 48.
--
-- Test JITu - programova smycka s rozvetvenim.
--



-- deklarace a inicializace lokalnich promennych
local i
local x = 0
local y = 0



-- programova smycka s rozvetvenim
for i = 1,100 do
    x = x + 1
    if i > 50 then
        y = y + 1
    end
end

print(x, y)



--
-- Finito.
--

