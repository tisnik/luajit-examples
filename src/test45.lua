--
-- LuaJIT: demonstracni priklad cislo 45.
--
-- Test JITu.
--



local i,j
local sum = 0

for i = 1,100 do
    for j = 1,100 do
        sum = sum + 1
    end
end

print(sum)



--
-- Finito.
--

