local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local player = Players.LocalPlayer
local mouse = player:GetMouse()
local character = script.Parent


UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    
    if input.KeyCode == Enum.KeyCode.R then
        
        mouse.Target = character.HumanoidRootPart
        
    
        wait(0.1)
        mouse.Button1Down:Fire()
        wait(0.1)
        mouse.Button1Up:Fire()
    end
end)
