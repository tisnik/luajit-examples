--
-- Lua tracer v.1
--
local tracer = {
}



--
-- Event handler
--
function tracer.eventHandler(event)
    local output = ""

    local debugInfo = debug.getinfo(3)

    local output = "→ → → "

    if debugInfo and debugInfo.currentline >= 0 then
        output = output .. debugInfo.short_src, ":" .. debugInfo.currentline .. " "
    end

    local debugInfo = debug.getinfo(2)

    -- 'what' attribute could have the following values:
    --    "Lua"  for regular Lua functions
    --    "C"    for C function
    --    "main" for the main part of a Lua chunk.
    if debugInfo.what == "main" then
        if event == "call" then
            output = output .. "begin " .. debugInfo.short_src
        else
            output = output .. "end " .. debugInfo.short_src
        end
    -- regular Lua function call
    elseif debugInfo.what == "Lua" then
        output = output .. " •" .. (debugInfo.name or "(unknown Lua code)") .. "•"
    -- C (native) function call
    elseif debugInfo.what == "C" then
        output = output .. " •" .. (debugInfo.name or "(unknown C code)") .. "•"
    -- should not happen :)
    else
        output = output .. " unknown!"
    end
    print(output)
end



--
-- Register event handler for the "call" and "return" events.
--
function tracer.enable()
    -- we want to call event handler for the following events:
    -- "call"
    -- "return"
    debug.sethook(tracer.eventHandler, "cr")
end


return tracer

