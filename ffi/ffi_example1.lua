-- Prvni demonstracni priklad vyuzivajici knihovnu FFI

local ffi = require("ffi")

-- Definice ceckovske funkce ze standardni knihovny

ffi.cdef[[
int rand(void);
]]

for i=0,10 do
    -- Zavolani ceckovske funkce
    local random = ffi.C.rand()
    print(random)
end

