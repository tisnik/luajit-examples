--
-- LuaJIT: demonstracni priklad cislo 46.
--
-- Test JITu.
--



local i,j,k
local sum = 0

for i = 1,100 do
    for j = 1,100 do
        for k = 1,100 do
            sum = sum + 1
        end
    end
end

print(sum)



--
-- Finito.
--

