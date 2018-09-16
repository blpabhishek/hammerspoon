require "screen"
require "wifi"

hs.loadSpoon("Caffeine")
spoon.Caffeine:start()

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "c", function()
  spoon.Caffeine:start()
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "d", function()
  spoon.Caffeine:stop()
end)

hs.loadSpoon("ClipboardTool")

spoon.ClipboardTool:start()

spoon.ClipboardTool:bindHotkeys({
  toggle_clipboard = { { "ctrl","shift" }, "v" }
})
