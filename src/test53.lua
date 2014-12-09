--
-- LuaJIT: demonstracni priklad cislo 53.
--
-- Test JITu - volani funkce
--



-- deklarace a inicializace lokalnich promennych
local i
local x = 0
local y = 0



-- funkce, ktera se bude JITovat
function adder()
    x = x + 1
    y = y + 1
end



-- programova smycka, ktera se neJITuje
for i = 1,50 do
    adder()
end
print("1")

-- programova smycka, ktera se neJITuje
for i = 1,50 do
    adder()
end
print("2")

-- programova smycka, ktera se neJITuje
for i = 1,50 do
    adder()
end
print("3")

print(x,y)



--
-- Finito.
--

