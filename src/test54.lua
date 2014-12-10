--
-- LuaJIT: demonstracni priklad cislo 54.
--
-- Test JITu - prekladu do nativniho kodu.
--



local i
local geom = 0
local x = 1

for i = 1,1000 do
    geom = geom + 1/x
    x = x * 2
end

print(geom)



--
-- Finito.
--

