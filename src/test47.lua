--
-- LuaJIT: demonstracni priklad cislo 47.
--
-- Test JITu.
--



local i,j,k
local sum = 0

for i = 1,100 do
    for j = 1,100 do
        if j >= 50 then
            for k = 1,100 do
                sum = sum + 1
            end
        else
            sum = sum / 100
        end
    end
end

print(sum)



--
-- Finito.
--

