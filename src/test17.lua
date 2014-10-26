--
-- LuaJIT: demonstracni priklad cislo 17
--
-- Porovnavani promennych s retezcem.
--



-- inicializace promennych konstantami ruznych typu
local a = true
local b = false
local c = nil
local d = 42
local e = "hello"



-- inicializace promennych s vyuzitim porovnani s konstantou nil.
local x1  = a == "hello"
local x2  = a ~= "hello"
local x3  = b == "hello"
local x4  = b ~= "hello"
local x5  = c == "hello"
local x6  = c ~= "hello"
local x7  = d == "hello"
local x8  = d ~= "hello"
local x9  = e == "hello"
local x10 = e ~= "hello"

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

