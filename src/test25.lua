--
-- LuaJIT: demonstracni priklad cislo 25
--
-- Prace s tabulkami:
--    * vytvoreni a inicializace neprazdne tabulky
--    * tisk poctu prvku tabulky
--    * pristup k prvkum tabulky
--



-- vytvoreni desetiprvkove tabulky
local tbl = {10, 9, 8, 7, 6, 5, 4, 3, 2, 1}

-- tisk informace o tabulce (reference...)
print(tbl)

-- tisk poctu prvku v tabulce
print(#tbl)

-- tisk hodnoty prvniho prvku v tabulce
print(tbl[1])

-- tisk hodnoty desateho prvku v tabulce
print(tbl[10])



-- finito

