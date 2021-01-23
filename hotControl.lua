function increaseAudioBy(level)
  local audioDevice = hs.audiodevice.defaultOutputDevice()
  audioDevice:setVolume(audioDevice:outputVolume() + level)
  hs.alert(math.floor(audioDevice:outputVolume()), {atScreenEdge = 1})
end

function increaseBrightnessBy(level)
  hs.brightness.set(hs.brightness.get() + level)
  hs.alert(hs.brightness.get(), {atScreenEdge = 2})
end

hs.hotkey.bind({"cmd","alt" ,"ctrl"}, "down", function()
  increaseAudioBy(-10)
end)

hs.hotkey.bind({"cmd","alt", "ctrl"}, "up", function()
  increaseAudioBy(10)
end)

hs.hotkey.bind({"cmd","alt", "ctrl"}, "left", function()
   increaseBrightnessBy(-8)
end)

hs.hotkey.bind({"cmd","alt", "ctrl"}, "right", function()
   increaseBrightnessBy(8)
end)