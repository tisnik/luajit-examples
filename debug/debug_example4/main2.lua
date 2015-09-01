local tracer = require("tracer")
require("module1")
require("module2")

tracer.enable()

function x()
    error("error")
end

function pcall_x()
    pcall(x)
end

for i=1,10 do
    pcall_x()
end

