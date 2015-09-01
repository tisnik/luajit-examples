--
-- Lua tracer v.4
--
local tracer = {
    level=0,
    pcall_level=0
}



--
-- Update trace level (for a bit nicer output).
--
function tracer.updateTraceLevel(debugInfo, event)
    -- decision between calling a function or returning from the function
    if event == "call" then
        tracer.level = tracer.level + 1
    else
        tracer.level = tracer.level - 1
        if tracer.level < 0 then
            tracer.level = 0
        end
    end
end



--
-- Call of pcall() function needs special handling, because
-- error() would break normal call-return flow.
-- (even better would be to use a user-defined stack instead of pcall_level)
--
function tracer.handlePcall(debugInfo, event)
    if debugInfo.what == "C" and debugInfo.name == "pcall" then
        if event == "call" then
            tracer.pcall_level = tracer.level
        else
            tracer.level = tracer.pcall_level+1
        end
    end
end



--
-- Format information about the Lua function call.
--
function tracer.formatLuaCall(event, debugInfo)
    return event .. " •" .. (debugInfo.name or "(unknown Lua)")
           .. "•"
           .. "  <" .. debugInfo.short_src .. ":" .. debugInfo.linedefined .. ">"
end



--
-- Format information about C function call.
--
function tracer.formatCCall(event, debugInfo)
    return event .. " •" .. (debugInfo.name or "(unknown C)")
           .. "•"
           .. "  [" .. debugInfo.what .. "]"
end



--
-- Event handler
--
function tracer.eventHandler(event)
    local output = ""

    local debugInfo = debug.getinfo(3)

    local output = tracer.level .. " → → → " .. string.rep("    ", tracer.level)

    if debugInfo and debugInfo.currentline >= 0 then
        output = output .. debugInfo.short_src, ":" .. debugInfo.currentline .. " "
    end

    local debugInfo = debug.getinfo(2)

    tracer.handlePcall(debugInfo, event)
    tracer.updateTraceLevel(debugInfo, event)

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
        output = output .. tracer.formatLuaCall(event, debugInfo)
    -- C (native) function call
    elseif debugInfo.what == "C" then
        output = output .. tracer.formatCCall(event, debugInfo)
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

