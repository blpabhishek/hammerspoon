require "screen"
require "wifi"
require "reload"
require "volumeControl"

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
-- Automattic Watcher
luaFileWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
 -- Mannual Reload
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
end)