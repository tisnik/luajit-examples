--
-- LuaJIT: demonstracni priklad cislo 55.
--
-- Test JITu - prekladu do nativniho kodu.
--



local i = 0
local x = 1
local y = 1

while i < 100 do
    i = i + 1
    x = x * 3
    y = y * 5
end

print(i)
print(x)
print(y)



--
-- Finito.
--

