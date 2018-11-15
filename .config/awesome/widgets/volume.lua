local setmetatable = setmetatable
local wibox = require("wibox").widget
local timer = require("gears.timer")

local volumewidget = { mt = {} }

local function update(w)
    local volume = ''
    local volmax = 65536
    local f = io.popen("pacmd dump |grep set-sink-volume")
    local g = io.popen("pacmd dump |grep set-sink-mute")
    local v = f:read()
    local mute = g:read()
    if mute ~= nil and string.find(mute, "no") then
        volume = math.floor(tonumber(string.sub(v, string.find(v, 'x')-1)) * 100 / volmax).."% "
    end
    f:close()
    g:close()
    --w:set_text(" ".. volume)
    w:set_markup("VOL:"..volume)
end

--- Create a volume widget
function volumewidget.new()
    local w = wibox.textbox()
    local timeout = 20

    function w.update()
        update(w)
        return true -- Continue the timer
    end
    local t = timer.weak_start_new(timeout, w.update)
    t:emit_signal("timeout")
    return w
end

function volumewidget.mt:__call()
    return volumewidget.new()
end

return setmetatable(volumewidget, volumewidget.mt)
