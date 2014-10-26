--
-- LuaJIT: demonstracni priklad cislo 15
--
-- Porovnavani promennych obsahujicich booleovske hodnoty s booleovskymi konstantami.
--



-- inicializace promenne booleovskou konstantou
local a = true



-- inicializace promennych s vyuzitim porovnani s booleovskou konstantou
local x1 = a == true
local x2 = a ~= true
local x3 = a == false
local x4 = a ~= false

-- tisk hodnot vsech promennych
print(a)

print()

print(x1)
print(x2)
print(x3)
print(x4)



-- finito

