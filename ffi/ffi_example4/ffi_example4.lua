-- Ctvrty demonstracni priklad vyuzivajici knihovnu FFI

local ffi = require("ffi")

local lib = ffi.load("ffi_example4")

-- Definice ceckovskych funkci ze standardni knihovny

ffi.cdef[[
void function1(void);
void function2(int);
void function3(int, int);
void function4(float);
void function5(char);
]]

-- Zavolani ceckovskych funkci
lib.function1()
lib.function2(42)
lib.function3(1,2)
lib.function4(3)
lib.function5(97)

