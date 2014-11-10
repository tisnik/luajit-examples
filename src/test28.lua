--
-- LuaJIT: demonstracni priklad cislo 28
--
-- Prace s tabulkami:
--    * vytvoreni a inicializace prazdne tabulky
--    * pridani prvku do tabulky s pouzitim promennych namisto klicu
--    * tisk poctu prvku tabulky
--    * pristup k prvkum tabulky
--



-- vytvoreni prazdne tabulky
local tbl = {}

-- inicializace promennych pouzitych jako klice
local key1 = "first"
local key2 = 2
local key3 = "tenth"

-- nastavit hodnotu prvku tabulky
-- s vyuzitim indexu ci klice ulozeneho v promenne
tbl[key1] = 777

-- nastavit hodnotu prvku tabulky
-- s vyuzitim indexu ci klice ulozeneho v promenne
tbl[key2] = 999

-- nastavit hodnotu prvku tabulky
-- s vyuzitim indexu ci klice ulozeneho v promenne
tbl[key3] = 1000

-- tisk informace o tabulce (reference...)
print(tbl)

-- tisk poctu prvku v tabulce
print(#tbl)

-- tisk hodnoty prvku v tabulce
-- s vyuzitim indexu ci klice ulozeneho v promenne
print(tbl[key1])

-- tisk hodnoty prvku v tabulce
-- s vyuzitim indexu ci klice ulozeneho v promenne
print(tbl[key2])

-- tisk hodnoty prvku v tabulce
-- s vyuzitim indexu ci klice ulozeneho v promenne
print(tbl[key3])



-- finito

