-- Druhy demonstracni priklad vyuzivajici knihovnu FFI

local ffi = require("ffi")

-- Definice ceckovske funkce ze standardni knihovny

ffi.cdef[[
int atoi(const char *);
]]

-- Zavolani ceckovske funkce
local value = ffi.C.atoi("42")

print(value)

