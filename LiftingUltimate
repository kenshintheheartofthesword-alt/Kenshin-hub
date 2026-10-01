local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- إزالة أي واجهة قديمة لنفس الرسالة منعاً للتكرار
if PlayerGui:FindFirstChild("ScriptUpdateGUI") then
    PlayerGui.ScriptUpdateGUI:Destroy()
end
if CoreGui:FindFirstChild("ScriptUpdateGUI") then
    CoreGui.ScriptUpdateGUI:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ScriptUpdateGUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true

local successParent = pcall(function()
    ScreenGui.Parent = CoreGui
end)
if not successParent then
    ScreenGui.Parent = PlayerGui
end

local MainFrame = Instance.new("Frame")
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
MainFrame.BackgroundTransparency = 0.15
MainFrame.Position = UDim2.new(0.5, -225, 0.5, -90)
MainFrame.Size = UDim2.new(0, 450, 0, 180)

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 10)
corner.Parent = MainFrame

local stroke = Instance.new("UIStroke")
stroke.Parent = MainFrame
stroke.Color = Color3.fromRGB(255, 60, 60)
stroke.Thickness = 2

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Parent = MainFrame
TitleLabel.BackgroundTransparency = 1
TitleLabel.Position = UDim2.new(0, 0, 0, 15)
TitleLabel.Size = UDim2.new(1, 0, 0, 30)
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.Text = "⚠️ SYSTEM NOTICE ⚠️"
TitleLabel.TextColor3 = Color3.fromRGB(255, 60, 60)
TitleLabel.TextSize = 18

local TextLabel = Instance.new("TextLabel")
TextLabel.Parent = MainFrame
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.05, 0, 0.35, 0)
TextLabel.Size = UDim2.new(0.9, 0, 0, 80)
TextLabel.Font = Enum.Font.GothamMedium
TextLabel.Text = "The script has been stopped because it is currently under update."
TextLabel.TextColor3 = Color3.fromRGB(240, 240, 240)
TextLabel.TextSize = 15
TextLabel.TextWrapped = true

local FooterLabel = Instance.new("TextLabel")
FooterLabel.Parent = MainFrame
FooterLabel.BackgroundTransparency = 1
FooterLabel.Position = UDim2.new(0, 0, 0.8, 0)
FooterLabel.Size = UDim2.new(1, 0, 0, 25)
FooterLabel.Font = Enum.Font.Gotham
FooterLabel.Text = "Please wait for the new update."
FooterLabel.TextColor3 = Color3.fromRGB(160, 160, 170)
FooterLabel.TextSize = 12
