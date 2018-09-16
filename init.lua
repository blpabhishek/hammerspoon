require "screen"
require "wifi"

-- Load Caffeine

hs.loadSpoon("Caffeine")
spoon.Caffeine:start()
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "c", function()
  spoon.Caffeine:start()
end)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "d", function()
  spoon.Caffeine:stop()
end)

-- Clipboard shortcut

hs.loadSpoon("ClipboardTool")
spoon.ClipboardTool:start()
spoon.ClipboardTool:bindHotkeys({
  toggle_clipboard = { { "ctrl","shift" }, "v" }
})

-- Reload Hamerspoon 
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
end)
hs.notify.new({title="Hammerspoon", informativeText="Config Reloaded"}):send()