local UIS = game:GetService("UserInputService")
local MacroKeybind = Enum.KeyCode.Q

UIS.InputBegan:Connect(function(input)
    if input.KeyCode == MacroKeybind then
        CameraZoom = game:GetService("RunService").Heartbeat:Connect(function()
            --Zoom In
            game.Players.LocalPlayer.CameraMode = 1
            game.Players.LocalPlayer.CameraMinZoomDistance = 0.5
            wait(0.07)
            --Zoom Out
            game.Players.LocalPlayer.CameraMode = 0
            game.Players.LocalPlayer.CameraMinZoomDistance = 1
        end)
    end
end)

UIS.InputEnded:Connect(function(input)
    if input.KeyCode == MacroKeybind then
        CameraZoom:Disconnect()
        game.Players.LocalPlayer.CameraMinZoomDistance = 0.5
    end
end)
