local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

if playerGui:FindFirstChild("UpdateNotice") then
    playerGui.UpdateNotice:Destroy()
end

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "UpdateNotice"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.Parent = playerGui


local bg = Instance.new("Frame")
bg.Size = UDim2.new(1, 0, 1, 0)
bg.BackgroundColor3 = Color3.fromRGB(10, 10, 12)
bg.BackgroundTransparency = 0.2
bg.Parent = screenGui


local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 440, 0, 260)
frame.Position = UDim2.new(0.5, -220, 0.5, -130)
frame.BackgroundColor3 = Color3.fromRGB(18, 18, 24)
frame.BorderSizePixel = 0
frame.Parent = screenGui


local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 10)
corner.Parent = frame


local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 170, 255)
stroke.Thickness = 1.5
stroke.Parent = frame


local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 55)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundTransparency = 1
title.Text = "SCRIPT UNDER MAINTENANCE"
title.TextColor3 = Color3.fromRGB(0, 170, 255)
title.TextSize = 17
title.Font = Enum.Font.Code
title.Parent = frame


local divider = Instance.new("Frame")
divider.Size = UDim2.new(0.88, 0, 0, 1)
divider.Position = UDim2.new(0.06, 0, 0, 55)
divider.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
divider.BorderSizePixel = 0
divider.Parent = frame


local message = Instance.new("TextLabel")
message.Size = UDim2.new(0.86, 0, 0, 100)
message.Position = UDim2.new(0.07, 0, 0, 75)
message.BackgroundTransparency = 1
message.Text = "This script is currently being updated to a newer, better version.\n\nPlease check back soon for the latest release. Thank you for your patience!"
message.TextColor3 = Color3.fromRGB(190, 190, 200)
message.TextSize = 13
message.Font = Enum.Font.GothamMedium
message.TextWrapped = true
message.TextYAlignment = Enum.TextYAlignment.Top
message.Parent = frame


local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0.86, 0, 0, 42)
closeBtn.Position = UDim2.new(0.07, 0, 0, 190)
closeBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 200)
closeBtn.Text = "UNDERSTAND / DISMISS"
closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
closeBtn.TextSize = 13
closeBtn.Font = Enum.Font.GothamBold
closeBtn.Parent = frame

local btnCorner = Instance.new("UICorner")
btnCorner.CornerRadius = UDim.new(0, 8)
btnCorner.Parent = closeBtn


closeBtn.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)
