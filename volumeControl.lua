
hs.hotkey.bind({"cmd","alt" ,"ctrl"}, "down", function()
  local volume = hs.audiodevice.defaultOutputDevice():outputVolume() -10 
  hs.audiodevice.defaultOutputDevice():setVolume(volume)
end)

hs.hotkey.bind({"cmd","alt", "ctrl"}, "up", function()
  local volume = hs.audiodevice.defaultOutputDevice():outputVolume()  + 10
  hs.audiodevice.defaultOutputDevice():setVolume(volume)
end)