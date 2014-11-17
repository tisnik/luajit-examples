--
-- LuaJIT: demonstracni priklad cislo 34
--
-- Prace s tabulkami:
--    * vytvoreni a inicializace neprazdne tabulky
--    * programova smycka typu while vyuzivajici
--      funkci next.
--



-- vytvoreni desetiprvkove tabulky
local tbl = {10, 9, 8, 7, 6, 5, 4, 3, 2, 1}

-- inicializace - ziskani prvniho prvku a jeho indexu z tabulky
local index,val = next(tbl, nil)

-- programova smycka typu while
while index do
    print(index,val)
    index,val = next(tbl, index)
end



-- finito

