--
-- LuaJIT: demonstracni priklad cislo 16
--
-- Porovnavani promennych obsahujicich libovolnou hodnoty s konstantou nil.
--



-- inicializace promennych konstantami ruznych typu
local a = true
local b = false
local c = nil
local d = 42
local e = {1,2}



-- inicializace promennych s vyuzitim porovnani s konstantou nil.
local x1  = a == nil
local x2  = a ~= nil
local x3  = b == nil
local x4  = b ~= nil
local x5  = c == nil
local x6  = c ~= nil
local x7  = d == nil
local x8  = d ~= nil
local x9  = e == nil
local x10 = e ~= nil

-- tisk hodnot vsech promennych
print(a)

print()

print(x1)
print(x2)
print(x3)
print(x4)
print(x5)
print(x6)
print(x7)
print(x8)
print(x9)
print(x10)



-- finito

