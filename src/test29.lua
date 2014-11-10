--
-- LuaJIT: demonstracni priklad cislo 29
--
-- Prace s tabulkami:
--    * vytvoreni a inicializace dvourozmerne tabulky
--    * vlozeni poddatulek do "hlavni" tabulky
--    * pristup k prvkum matice
--



-- vytvoreni a inicializace dvourozmerne
local tbl = {
    { 1,  2,  3,  4},
    { 5,  6,  7,  8},
    { 9, 10, 11, 12}
}

-- tisk informace o tabulce (reference...)
print(tbl)

-- tisk poctu prvku v tabulce (nejvyssi dimenze)
print(#tbl)

-- tisk poctu prvku v prvnim radku tabulky (nizsi dimenze)
print(#tbl[1])

-- tisk poctu prvku ve druhem radku tabulky (nizsi dimenze)
print(#tbl[2])

-- tisk poctu prvku ve tretim radku tabulky (nizsi dimenze)
print(#tbl[3])

-- tisk hodnoty vybraneho prvku v dvourozmerne tabulce
print(tbl[1][1])

-- tisk hodnoty vybraneho prvku v dvourozmerne tabulce
print(tbl[3][4])

-- finito

