wifiWatcher = nil
homeSSID = "D-Link_DIR-816_5G"

function ssidChangedCallback()
    newSSID = hs.wifi.currentNetwork()

    if newSSID == homeSSID and lastSSID ~= homeSSID then
        -- We just joined our home WiFi network
        hs.audiodevice.defaultOutputDevice():setVolume(70)
        hs.notify.new({title="Hammerspoon", informativeText="Connected to Home WIFI"}):send()
    elseif newSSID ~= homeSSID and lastSSID == homeSSID then
        -- We just departed our home WiFi network
        hs.audiodevice.defaultOutputDevice():setVolume(10)
        hs.notify.new({title="Hammerspoon", informativeText="Connected to Public WIFI"}):send()
    end

    lastSSID = newSSID
end

wifiWatcher = hs.wifi.watcher.new(ssidChangedCallback)
wifiWatcher:start()