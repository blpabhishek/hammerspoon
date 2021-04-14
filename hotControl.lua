function increaseAudioBy(level)
  local audioDevice = hs.audiodevice.defaultOutputDevice()
  audioDevice:setVolume(audioDevice:outputVolume() + level)
  hs.alert(math.floor(audioDevice:outputVolume()), {atScreenEdge = 1})
end

function increaseBrightnessBy(level)
  hs.brightness.set(hs.brightness.get() + level)
  hs.alert(hs.brightness.get(), {atScreenEdge = 2})
end

hs.hotkey.bind({"cmd","alt" ,"shift"}, "down", function()
  increaseAudioBy(-10)
end)

hs.hotkey.bind({"cmd","alt", "shift"}, "up", function()
  increaseAudioBy(10)
end)

hs.hotkey.bind({"cmd","alt", "shift"}, "left", function()
   increaseBrightnessBy(-8)
end)

hs.hotkey.bind({"cmd","alt", "shift"}, "right", function()
   increaseBrightnessBy(8)
end)