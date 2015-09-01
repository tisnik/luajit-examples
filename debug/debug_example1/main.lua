local tracer = require("tracer")
require("module1")
require("module2")

tracer.enable()

function f1()
    print("Hello world!")
end

function f2()
    f1()
end

function f3()
    f2()
end


f3()
module1_f3()
module2_f3()

