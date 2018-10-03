local wibox = require("wibox")
local awful = require("awful")

spotify_widget = wibox.widget.textbox()

function updateSpotifyWidget(widget)
  local current = awful.util.pread('/home/fahmed/bin/sp current-oneline')
  widget:set_text(current)
end

function myupdateSpotifyWidget(widget)
  awful.spawn.easy_async('/home/fahmed/bin/sp current-oneline', function(stdout) widget:set_text(stdout) end)
end

spotify_timer = timer ({timeout = 10})
spotify_timer:connect_signal ("timeout", function() myupdateSpotifyWidget(spotify_widget) end)
spotify_timer:start()

spotify_timer:emit_signal("timeout")
