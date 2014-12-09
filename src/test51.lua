--
-- LuaJIT: demonstracni priklad cislo 51.
--
-- Test JITu - programova smycka se slozitejsim rozvetvenim
--



-- deklarace a inicializace lokalnich promennych
local i
local x = 0
local y = 0
local z = 0



-- programova smycka s rozvetvenim
for i = 1,1000 do
    if i > 100 then
        x = x + 1
        if i > 200 then
            y = y + 1
            if i > 300 then
                z = z + 1
            end
        end
    end
end

print(x, y, z)



--
-- Finito.
--

