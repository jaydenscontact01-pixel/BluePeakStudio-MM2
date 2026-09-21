-- Coded by DesiredPK / BluePeak Studios
if game.PlaceId == 142823291 thenlocal _0x9ACF = game:GetService("Players")
local _0x8FA1 = game:GetService("UserInputService")
local _0x19A6 = _0x9ACF.LocalPlayer
local _0x12BF = _0x19A6:WaitForChild("PlayerGui")
local _0xDE54 ="BluePeakAccess"local _0xAD84 ="https://discord.gg/GFUNArcatk"local _0x86BC = Instance.new("ScreenGui")
_0x86BC.Name ="BluePeakKeySystem"_0x86BC.ResetOnSpawn = false
_0x86BC.IgnoreGuiInset = true
_0x86BC.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
_0x86BC.Parent = _0x12BF
local _0x19E3 = Instance.new("Frame")
_0x19E3.Size = UDim2.fromScale(1, 1)
_0x19E3.BackgroundColor3 = Color3.fromRGB(7, 9, 14)
_0x19E3.BackgroundTransparency = 0.08
_0x19E3.BorderSizePixel = 0
_0x19E3.Parent = _0x86BC
local _0x62A4 = Instance.new("Frame")
_0x62A4.AnchorPoint = Vector2.new(0.5, 0.5)
_0x62A4.Position = UDim2.fromScale(0.5, 0.5)
_0x62A4.Size = UDim2.fromOffset(410, 300)
_0x62A4.BackgroundColor3 = Color3.fromRGB(17, 20, 29)
_0x62A4.BorderSizePixel = 0
_0x62A4.Parent = _0x19E3
local _0x7ED2 = Instance.new("UICorner")
_0x7ED2.CornerRadius = UDim.new(0, 16)
_0x7ED2.Parent = _0x62A4
local _0x2EAD = Instance.new("UIStroke")
_0x2EAD.Color = Color3.fromRGB(0, 155, 255)
_0x2EAD.Thickness = 1.5
_0x2EAD.Transparency = 0.15
_0x2EAD.Parent = _0x62A4
local _0x086C = Instance.new("UIPadding")
_0x086C.PaddingTop = UDim.new(0, 24)
_0x086C.PaddingBottom = UDim.new(0, 22)
_0x086C.PaddingLeft = UDim.new(0, 28)
_0x086C.PaddingRight = UDim.new(0, 28)
_0x086C.Parent = _0x62A4
local _0xC1A8 = Instance.new("TextLabel")
_0xC1A8.Size = UDim2.new(1, 0, 0, 34)
_0xC1A8.BackgroundTransparency = 1
_0xC1A8.Text ="BLUEPEAK STUDIOS"_0xC1A8.TextColor3 = Color3.fromRGB(55, 174, 255)
_0xC1A8.Font = Enum.Font.GothamBold
_0xC1A8.TextSize = 20
_0xC1A8.Parent = _0x62A4
local _0x3BDA = Instance.new("TextLabel")
_0x3BDA.Position = UDim2.new(0, 0, 0, 42)
_0x3BDA.Size = UDim2.new(1, 0, 0, 44)
_0x3BDA.BackgroundTransparency = 1
_0x3BDA.Text ="Join the Discord to get access, then enter your key below."_0x3BDA.TextColor3 = Color3.fromRGB(165, 173, 190)
_0x3BDA.Font = Enum.Font.Gotham
_0x3BDA.TextSize = 12
_0x3BDA.TextWrapped = true
_0x3BDA.Parent = _0x62A4
local _0xB2C2 = Instance.new("TextButton")
_0xB2C2.Position = UDim2.new(0, 0, 0, 94)
_0xB2C2.Size = UDim2.new(1, 0, 0, 38)
_0xB2C2.BackgroundColor3 = Color3.fromRGB(35, 39, 54)
_0xB2C2.BorderSizePixel = 0
_0xB2C2.Text ="Join Discord  •  discord.gg/GFUNArcatk"_0xB2C2.TextColor3 = Color3.fromRGB(225, 230, 240)
_0xB2C2.Font = Enum.Font.GothamSemibold
_0xB2C2.TextSize = 11
_0xB2C2.Parent = _0x62A4
local _0xCE7B = Instance.new("UICorner")
_0xCE7B.CornerRadius = UDim.new(0, 9)
_0xCE7B.Parent = _0xB2C2
local _0x228F = Instance.new("TextBox")
_0x228F.Position = UDim2.new(0, 0, 0, 144)
_0x228F.Size = UDim2.new(1, 0, 0, 42)
_0x228F.BackgroundColor3 = Color3.fromRGB(10, 13, 20)
_0x228F.BorderSizePixel = 0
_0x228F.PlaceholderText ="Enter key..."_0x228F.PlaceholderColor3 = Color3.fromRGB(100, 108, 125)
_0x228F.Text =""_0x228F.TextColor3 = Color3.fromRGB(240, 244, 250)
_0x228F.Font = Enum.Font.Gotham
_0x228F.TextSize = 13
_0x228F.ClearTextOnFocus = false
_0x228F.Parent = _0x62A4
local _0xC155 = Instance.new("UICorner")
_0xC155.CornerRadius = UDim.new(0, 9)
_0xC155.Parent = _0x228F
local _0x0C5D = Instance.new("UIStroke")
_0x0C5D.Color = Color3.fromRGB(52, 62, 82)
_0x0C5D.Thickness = 1
_0x0C5D.Parent = _0x228F
local _0xDA9B = Instance.new("TextButton")
_0xDA9B.Position = UDim2.new(0, 0, 0, 198)
_0xDA9B.Size = UDim2.new(1, 0, 0, 42)
_0xDA9B.BackgroundColor3 = Color3.fromRGB(0, 145, 235)
_0xDA9B.BorderSizePixel = 0
_0xDA9B.Text ="UNLOCK"_0xDA9B.TextColor3 = Color3.fromRGB(255, 255, 255)
_0xDA9B.Font = Enum.Font.GothamBold
_0xDA9B.TextSize = 12
_0xDA9B.Parent = _0x62A4
local _0x2201 = Instance.new("UICorner")
_0x2201.CornerRadius = UDim.new(0, 9)
_0x2201.Parent = _0xDA9B
local _0x00A9 = Instance.new("TextLabel")
_0x00A9.Position = UDim2.new(0, 0, 0, 248)
_0x00A9.Size = UDim2.new(1, 0, 0, 22)
_0x00A9.BackgroundTransparency = 1
_0x00A9.Text ="Key required to continue."_0x00A9.TextColor3 = Color3.fromRGB(105, 114, 133)
_0x00A9.Font = Enum.Font.Gotham
_0x00A9.TextSize = 10
_0x00A9.Parent = _0x62A4
local _0x6175 = false
local function _0x2B8D()
if _0x228F.Text == _0xDE54 then
_0x6175 = true
_0x00A9.Text ="Access granted."_0x00A9.TextColor3 = Color3.fromRGB(85, 220, 145)
task.wait(0.15)
_0x86BC:Destroy()
else
_0x00A9.Text ="Invalid key. Join the Discord to get the key."_0x00A9.TextColor3 = Color3.fromRGB(255, 92, 92)
_0x228F.Text =""_0x228F:CaptureFocus()
end
end
_0xDA9B.MouseButton1Click:Connect(_0x2B8D)
_0x228F.FocusLost:Connect(function(enterPressed)
if enterPressed then
_0x2B8D()
end
end)
_0xB2C2.MouseButton1Click:Connect(function()pcall(function()
if setclipboard then
setclipboard(_0xAD84)
_0x00A9.Text ="Discord invite copied to clipboard."_0x00A9.TextColor3 = Color3.fromRGB(85, 220, 145)
else
_0x00A9.Text = _0xAD84
_0x00A9.TextColor3 = Color3.fromRGB(165, 173, 190)
end
end)
end)
_0x228F:CaptureFocus()while not _0x6175 do
task.wait()
endlocal _0xF402 = truelocal _0x52D3 = truelocal _0xB09A ="m"local _0x94E3 ="q"local _0x865A ="b"local _0x4A2B ="f"local _0x152C ="r"local _0x04BE ="g"local _0x2699 ="x"local _0x9149 ="z"local _0x433A ="t"local _0xFBD2 ="p"local _0xCAAE = Instance.new("ScreenGui")
local _0x6476 = Instance.new("Frame")
local _0x0BE4 = Instance.new("TextLabel")
local _0x31CC = Instance.new("TextButton")
local _0x0C34 = Instance.new("TextButton")
local _0xDEB3 = Instance.new("TextLabel")
local _0x309C = Instance.new("TextButton")
local _0x26C2 = Instance.new("TextLabel")
local _0x5066 = Instance.new("TextButton")
local _0x2ABD = Instance.new("TextLabel")
local _0x0B5A = Instance.new("TextButton")
local _0x4D52 = Instance.new("TextLabel")
local _0x0D6D = Instance.new("TextButton")
local _0xB1D0 = Instance.new("TextLabel")
local _0xBC84 = Instance.new("TextButton")
local _0xBBB3 = Instance.new("TextLabel")
local _0x97B1 = Instance.new("TextButton")
local _0x2A5F = Instance.new("TextLabel")
local _0xBB39 = Instance.new("TextButton")
local _0x692C = Instance.new("TextLabel")
local _0xC75F = Instance.new("TextButton")
local _0xAABB = Instance.new("TextLabel")
local _0xEB2E = Instance.new("TextButton")
local _0x8963 = Instance.new("TextButton")
local _0xC430 = Instance.new("TextLabel")
local _0x3FB7 = Instance.new("TextButton")
local _0x78A2 = Instance.new("TextButton")local _0xE8D0 = false
local _0xE925 ="None"local _0xB53B ="None"local _0x80AF ="None"local _0xDCBC = game:GetService("Players").LocalPlayer
local _0xC614 = false
local _0x0A80
local _0xA4BC = false
local _0x2EF8 = false
local _0xC1B8 = game.Players.LocalPlayer.Character
local _0xC225 = game.workspace
local _0xC4F7=game.Players.LocalPlayer:GetMouse()
local _0xA867 = game:GetService("Players").LocalPlayer
local _0x2074 = false
local _0xFBBA = true
local _0x5456 = game:GetService("UserInputService")
local _0x1394 = false
local _0x99AF = false
local _0x2EF8 = false_0xCAAE.Name ="MM2"_0xCAAE.Parent = _0xA867:WaitForChild("PlayerGui")
_0xCAAE.ResetOnSpawn = false
_0x6476.Name ="Main"_0x6476.Parent = _0xCAAE
_0x6476.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
_0x6476.BorderColor3 = Color3.new(0, 0.607843, 1)
_0x6476.BorderSizePixel = 5
_0x6476.Draggable = true
_0x6476.Position = UDim2.new(0.574999988, 0, 0.349999994, 0)
_0x6476.Size = UDim2.new(0.2, 0, 0.4, 0)
_0x6476.Visible = true
_0x6476.Active = true
_0x0BE4.Name ="Title"_0x0BE4.Parent = _0x6476
_0x0BE4.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
_0x0BE4.BorderColor3 = Color3.new(0, 0.607843, 1)
_0x0BE4.BorderSizePixel = 5
_0x0BE4.Draggable = true
_0x0BE4.Size = UDim2.new(1.005, 0, 0.2, 0)
_0x0BE4.ZIndex = 3
_0x0BE4.Font = Enum.Font.SciFi
_0x0BE4.FontSize = Enum.FontSize.Size24
_0x0BE4.Text ="BluePeak Studios"_0x0BE4.TextColor3 = Color3.new(0, 0.607843, 1)
_0x0BE4.TextScaled = true
_0x0BE4.TextSize = 20
_0x0BE4.TextStrokeColor3 = Color3.new(0.129412, 0.54902, 1)
_0x0BE4.TextWrapped = truefunction Create(base, team, _0xC427, _0xE790, _0x14C4, _0xE925)local _0x28FC = Instance.new("BillboardGui",_0xDCBC.PlayerGui)
_0x28FC.Adornee = base
_0x28FC.ExtentsOffset = Vector3.new(0,1,0)
_0x28FC.AlwaysOnTop = true
_0x28FC.Size = UDim2.new(0,5,0,5)
_0x28FC.StudsOffset = Vector3.new(0,1,0)
_0x28FC.Name ="tracker"local _0x5F57 = Instance.new("Frame",_0x28FC)
_0x5F57.ZIndex = 10
_0x5F57.BackgroundTransparency = 0.3
_0x5F57.Size = UDim2.new(1,0,1,0)
local _0x98BC = Instance.new("TextLabel",_0x28FC)
_0x98BC.ZIndex = 10
_0x98BC.Text = _0xE925
_0x98BC.BackgroundTransparency = 1
_0x98BC.Position = UDim2.new(0,0,0,-35)
_0x98BC.Size = UDim2.new(1,0,10,0)
_0x98BC.Font ="ArialBold"_0x98BC.FontSize ="Size12"_0x98BC.TextStrokeTransparency = 0.5
if team then_0x98BC.TextColor3 = Color3.new(0,0,255)
_0x5F57.BackgroundColor3 = Color3.new(0,0,255)
else
_0x98BC.TextColor3 = Color3.new(_0xC427,_0xE790,_0x14C4)
_0x5F57.BackgroundColor3 = Color3.new(_0xC427,_0xE790,_0x14C4)
end
end
function findmurderer()local _0xC427 = 255
local _0xE790 = 0
local _0x14C4 = 0
for i, v in pairs(game:GetService("Players"):GetChildren()) do
if v ~= game:GetService("Players").LocalPlayer then
for i,v in pairs(v.Backpack:GetChildren()) doif v.Name =="Knife"then
if _0x52D3 == true then
local _0xE925 = v.Parent.Parent.Name
if v.Parent.Parent.Character.Head ~= nil then
Create(v.Parent.Parent.Character.Head, false, _0xC427 ,_0xE790, _0x14C4, _0xE925)
else
if _0xF402 == true then
print("Head missing from murderer!")
end
end
elseif _0x52D3 == false then
local _0xE925 ="Murderer"if v.Parent.Parent.Character.Head ~= nil then
Create(v.Parent.Parent.Character.Head, false, _0xC427 ,_0xE790, _0x14C4, _0xE925)
else
if _0xF402 == true then
print("Head missing from murderer!")
end
end
end
_0xB53B = v.Parent.Parent.Name
if _0xF402 == true then
print(_0xB53B.." is Murderer")
end
end
end
for i,v in pairs(v.Character:GetChildren()) doif v.Name =="Knife"then
if _0x52D3 == true then
local _0xE925 = v.Parent.Name
if v.Parent.Head ~= nil thenCreate(v.Parent.Head, false, _0xC427 ,_0xE790, _0x14C4, _0xE925)
else
if _0xF402 == true then
print("Head missing from murderer!")
end
end
elseif _0x52D3 == false then
local _0xE925 ="Murderer"if v.Parent.Head ~= nil then
Create(v.Parent.Head, false, _0xC427 ,_0xE790, _0x14C4, _0xE925)
else
if _0xF402 == true then
print("Head missing from murderer!")
end
end
end
_0xB53B = v.Parent.Name
if _0xF402 == true thenlocal _0xDA09 = tostring(v.Parent.Name)
print(_0xDA09.." is Murderer")
end
end
end
end
end
end
function findsheriff()local _0xC427 = 0
local _0xE790 = 0
local _0x14C4 = 255
for i, v in pairs(game:GetService("Players"):GetChildren()) do
if v ~= game:GetService("Players").LocalPlayer then
for i,v in pairs(v.Backpack:GetChildren()) do
if v.Name =="Revolver"or v.Name =="Gun"thenif _0x52D3 == true then
local _0xE925 = v.Parent.Parent.Name
if v.Parent.Parent.Character.Head ~= nil thenCreate(v.Parent.Parent.Character.Head, false, _0xC427 ,_0xE790, _0x14C4, _0xE925)
else
if _0xF402 == true then
print("Head missing from sheriff!")
end
end
elseif _0x52D3 == false then
local _0xE925 ="Sheriff"if v.Parent.Parent.Character.Head ~= nil thenCreate(v.Parent.Parent.Character.Head, false, _0xC427 ,_0xE790, _0x14C4, _0xE925)
else
if _0xF402 == true then
print("Head missing from sheriff!")
end
end
end
_0x80AF = v.Parent.Parent.Name
if _0xF402 == true then
local _0x8A78 = tostring(v.Parent.Parent.Name)
print(_0x8A78.." is Sheriff")
end
end
end
for i,v in pairs(v.Character:GetChildren()) do
if v.Name =="Revolver"or v.Name =="Gun"thenif _0x52D3 == true then
local _0xE925 = v.Parent.Name
if v.Parent.Head ~= nil thenCreate(v.Parent.Head, false, _0xC427 ,_0xE790, _0x14C4, _0xE925)
else
if _0xF402 == true then
print("Head missing from sheriff!")
end
end
elseif _0x52D3 == false then
local _0xE925 ="Sheriff"if v.Parent.Head ~= nil thenCreate(v.Parent.Head, false, _0xC427 ,_0xE790, _0x14C4, _0xE925)
else
if _0xF402 == true then
print("Head missing from sheriff!")
end
end
end
_0x80AF = v.Parent.Name
if _0xF402 == true then
local _0x8A78 = tostring(v.Parent.Name)
print(_0x8A78.." is Sheriff")
end
end
end
end
end
end
function findplayers()findmurderer()findsheriff()local _0xC427 = 0
local _0xE790 = 255
local _0x14C4 = 0
for i, v in pairs(game:GetService("Players"):GetChildren()) do
if v ~= game:GetService("Players").LocalPlayer thenif v.Name ~= _0xB53B thenif v.Name ~= _0x80AF thenif _0x52D3 == true then
local _0xE925 = v.Name
if v.Character.Head ~= nil thenCreate(v.Character.Head, false, _0xC427 ,_0xE790, _0x14C4, _0xE925)
else
if _0xF402 == true then
print("Head missing from sheriff!")
end
end
elseif _0x52D3 == false then
local _0xE925 ="Innocents"if v.Parent.Head ~= nil thenCreate(v.Character.Head, false, _0xC427 ,_0xE790, _0x14C4, _0xE925)
else
if _0xF402 == true then
print("Head missing from sheriff!")
end
end
end
end
end
end
end
end
function Clear()for _,v in pairs(_0xDCBC.PlayerGui:children()) do
if v.Name =="tracker"and v:isA("BillboardGui") then
v:Destroy()
end
end
end
function XrayOn(_0xC225)for _,v in pairs(_0xC225:GetChildren()) do
if (v:IsA("BasePart")) and not v.Parent:FindFirstChild("Humanoid") then
v.LocalTransparencyModifier = 0.75
end
XrayOn(v)
end
end
function XrayOff(_0xC225)for _,v in pairs(_0xC225:GetChildren()) do
if (v:IsA("BasePart")) and not v.Parent:FindFirstChild("Humanoid") then
v.LocalTransparencyModifier = 0
end XrayOff(v)
end
end
local _0xF7A0 = false
local _0x1BDA = nil
local _0xA179 = nil
local _0x336B = nil
local _0x6AF2 = nil
local _0x7F39 = {
W = false,
A = false,
S = false,
D = false,
E = false,
Q = false,
}
local function _0xAA9D()
local _0x41F2 = _0xA867.Character
if not _0x41F2 then
return nil, nil
end
local _0x2626 = _0x41F2:FindFirstChildOfClass("Humanoid")
local _0xE623 = _0x41F2:FindFirstChild("HumanoidRootPart") or _0x41F2:FindFirstChild("Torso")
return _0x2626, _0xE623
end
function sFLY()if _0xF7A0 then
return true
end
local _0x2626, _0xE623 = _0xAA9D()
if not _0x2626 or not _0xE623 then
return false
end
_0xF7A0 = true
_0x1BDA = Instance.new("BodyVelocity")
_0x1BDA.Name ="BluePeakFlyVelocity"_0x1BDA.MaxForce = Vector3.new(1e9, 1e9, 1e9)
_0x1BDA.P = 50000
_0x1BDA.Velocity = Vector3.zero
_0x1BDA.Parent = _0xE623
_0xA179 = Instance.new("BodyGyro")
_0xA179.Name ="BluePeakFlyGyro"_0xA179.MaxTorque = Vector3.new(1e9, 1e9, 1e9)
_0xA179.P = 50000
_0xA179.CFrame = _0xE623.CFrame
_0xA179.Parent = _0xE623
_0x2626.PlatformStand = true
_0x336B = _0x5456.InputBegan:Connect(function(input, processed)
if processed then
return
end
local _0xF477 = input.KeyCode
if _0xF477 == Enum.KeyCode.W then
_0x7F39.W = true
elseif _0xF477 == Enum.KeyCode.A then
_0x7F39.A = true
elseif _0xF477 == Enum.KeyCode.S then
_0x7F39.S = true
elseif _0xF477 == Enum.KeyCode.D then
_0x7F39.D = true
elseif _0xF477 == Enum.KeyCode.E then
_0x7F39.E = true
elseif _0xF477 == Enum.KeyCode.Q then
_0x7F39.Q = true
end
end)
_0x6AF2 = _0x5456.InputEnded:Connect(function(input)
local _0xF477 = input.KeyCode
if _0xF477 == Enum.KeyCode.W then
_0x7F39.W = false
elseif _0xF477 == Enum.KeyCode.A then
_0x7F39.A = false
elseif _0xF477 == Enum.KeyCode.S then
_0x7F39.S = false
elseif _0xF477 == Enum.KeyCode.D then
_0x7F39.D = false
elseif _0xF477 == Enum.KeyCode.E then
_0x7F39.E = false
elseif _0xF477 == Enum.KeyCode.Q then
_0x7F39.Q = false
end
end)
task.spawn(function()
local _0x3374 = 55
while _0xF7A0 do
local _0x38EC, _0xCB53 = _0xAA9D()
if not _0x38EC or not _0xCB53 or _0xCB53 ~= _0xE623 then
break
end
local _0x630A = workspace.CurrentCamera
if _0x630A thenlocal _0x2CFC = _0x630A.CFrame.LookVector
local _0x3A45 = _0x630A.CFrame.RightVector
local _0x3926 = Vector3.zero
if _0x2CFC.Magnitude > 0 then
_0x2CFC = _0x2CFC.Unit
end
if _0x3A45.Magnitude > 0 then
_0x3A45 = _0x3A45.Unit
end
if _0x7F39.W then _0x3926 += _0x2CFC end
if _0x7F39.S then _0x3926 -= _0x2CFC end
if _0x7F39.D then _0x3926 += _0x3A45 end
if _0x7F39.A then _0x3926 -= _0x3A45 end
if _0x7F39.E then _0x3926 += Vector3.yAxis end
if _0x7F39.Q then _0x3926 -= Vector3.yAxis end
if _0x3926.Magnitude > 0 then
_0x3926 = _0x3926.Unit * _0x3374
end
if _0x1BDA then
_0x1BDA.Velocity = _0x3926
end
if _0xA179 then
_0xA179.CFrame = _0x630A.CFrame
end
end
task.wait()
end
if _0x1BDA then
_0x1BDA:Destroy()
_0x1BDA = nil
end
if _0xA179 then
_0xA179:Destroy()
_0xA179 = nil
end
if _0x336B then
_0x336B:Disconnect()
_0x336B = nil
end
if _0x6AF2 then
_0x6AF2:Disconnect()
_0x6AF2 = nil
end
table.clear(_0x7F39)
_0x7F39.W = false
_0x7F39.A = false
_0x7F39.S = false
_0x7F39.D = false
_0x7F39.E = false
_0x7F39.Q = false
local _0x38EC = _0xA867.Character and _0xA867.Character:FindFirstChildOfClass("Humanoid")
if _0x38EC then
_0x38EC.PlatformStand = false
end
_0xF7A0 = false
end)
return true
end
function NOFLY()_0xF7A0 = false
if _0x1BDA then
_0x1BDA:Destroy()
_0x1BDA = nil
end
if _0xA179 then
_0xA179:Destroy()
_0xA179 = nil
end
if _0x336B then
_0x336B:Disconnect()
_0x336B = nil
end
if _0x6AF2 then
_0x6AF2:Disconnect()
_0x6AF2 = nil
end
for _0xF477 in pairs(_0x7F39) do
_0x7F39[_0xF477] = false
end
local _0x2626 = _0xA867.Character and _0xA867.Character:FindFirstChildOfClass("Humanoid")
if _0x2626 then
_0x2626.PlatformStand = false
end
end
local _0xE08D = coroutine.wrap(function()while true do
if _0x2EF8 == true then
if game.Players ~= nil then
if game.Players.LocalPlayer ~= nil then
if game.Players.LocalPlayer.Character ~= nil then
if game.Players.LocalPlayer.Character:FindFirstChild("Torso") ~= nil then
if game.Players.LocalPlayer.Character:FindFirstChild("Head") ~= nil then
game.Players.LocalPlayer.Character.Torso.CanCollide = false
game.Players.LocalPlayer.Character.Head.CanCollide = false
end
end
end
end
end
end
game:service("RunService").Stepped:wait()
end
end)
_0xE08D()game:GetService("Players").LocalPlayer.CharacterAdded:connect(function(_0x41F2)_0x2074 = false
_0xB1D0.Text ="Inactive"_0xB1D0.TextColor3 = Color3.new(1, 0, 1)
_0x1394 = false
_0x2A5F.Text ="Inactive"_0x2A5F.TextColor3 = Color3.new(1, 0, 1)
Clear()
_0xDEB3.Text ="Inactive"_0xDEB3.TextColor3 = Color3.new(1, 0, 1)
_0x26C2.Text ="Inactive"_0x26C2.TextColor3 = Color3.new(1, 0, 1)
_0x2ABD.Text ="Active"_0x2ABD.TextColor3 = Color3.new(0, 1, 0)
end)
_0xC4F7.KeyDown:connect(function(KeyDown)if KeyDown =="0"and _0xE8D0 == false and _0x99AF == false then
_0xE8D0 = true
_0xDCBC.Character.Humanoid.WalkSpeed = 32
_0x4D52.Text ="Active"_0x4D52.TextColor3 = Color3.new(0, 1, 0)
end
end)
_0xC4F7.KeyUp:connect(function(KeyUp)if KeyUp =="0"and _0xE8D0 == true and _0x99AF == false then
_0xE8D0 = false
_0xDCBC.Character.Humanoid.WalkSpeed = 16
_0x4D52.Text ="Inactive"_0x4D52.TextColor3 = Color3.new(1, 0, 1)
end
end)
local _0xECA2 = false
local _0xE07C = false
local _0xC6E2 = nil
local function _0x8D22()
_0xECA2 = false
if _0xC6E2 then
pcall(function()
_0xC6E2:Cancel()
end)
_0xC6E2 = nil
end
local _0x41F2 = _0xA867.Character
local _0xE623 = _0x41F2 and _0x41F2:FindFirstChild("HumanoidRootPart")
if _0xE623 then
_0xE623.AssemblyLinearVelocity = Vector3.zero
_0xE623.AssemblyAngularVelocity = Vector3.zero
end
end
function coingrabberfunc()if _0xE07C then
return
end
_0xE07C = true
local _0x732D = game:GetService("TweenService")
local _0x9ACF = game:GetService("Players")
local _0xDCBC = _0x9ACF.LocalPlayer
local _0xF6DE = {}
local _0xDCF7 = 500while _0xECA2 do
local _0x41F2 = _0xDCBC.Character
local _0xE623 = _0x41F2 and _0x41F2:FindFirstChild("HumanoidRootPart")
if not _0x41F2 or not _0x41F2.Parent or not _0xE623 or not _0xE623.Parent then
task.wait(0.25)
continue
end
local _0xA7E0 = nil
local _0x873A = math.huge
for _, _0xC225 in ipairs(workspace:GetDescendants()) do
if _0xC225:IsA("BasePart")
and (_0xC225.Name =="MainCoin"or _0xC225.Name =="Coin")
and _0xC225.Parent
and not _0xF6DE[_0xC225] then
local _0x320D = (_0xE623.Position - _0xC225.Position).Magnitude
if _0x320D <= _0xDCF7 and _0x320D < _0x873A then
_0x873A = _0x320D
_0xA7E0 = _0xC225
end
end
endif not _0xA7E0 then
table.clear(_0xF6DE)
task.wait(0.35)
continue
end
local _0xAB01 = _0xA7E0.Position + Vector3.new(0, 1.5, 0)
local _0xC2C6 = math.max(_0x873A / 22, 0.05)
local _0x8FEB = _0x732D:Create(
_0xE623,
TweenInfo.new(_0xC2C6, Enum.EasingStyle.Linear),
{CFrame = CFrame.new(_0xAB01)}
)
_0xC6E2 = _0x8FEB
_0x8FEB:Play()while _0xECA2 and _0x8FEB.PlaybackState == Enum.PlaybackState.Playing do
task.wait()
end
if not _0xECA2 then
pcall(function()
_0x8FEB:Cancel()
end)
break
end
pcall(function()
_0x8FEB:Cancel()
end)
_0xC6E2 = nil
_0xE623.AssemblyLinearVelocity = Vector3.zero
_0xE623.AssemblyAngularVelocity = Vector3.zero
_0xE623.CFrame = CFrame.new(_0xAB01)task.wait(0.12)
if _0xA7E0 and _0xA7E0.Parent then
_0xF6DE[_0xA7E0] = true
end
task.wait(0.05)
end
_0xC6E2 = nil
_0xE07C = false
end
function godmodefunc()local _0xDCBC = game.Players.LocalPlayer
if _0xDCBC.Character then
if _0xDCBC.Character:FindFirstChild("Humanoid") then
_0xDCBC.Character.Humanoid.Name ="1"end
local _0xF9F6 = _0xDCBC.Character["1"]:Clone()
_0xF9F6.Parent = _0xDCBC.Character
_0xF9F6.Name ="Humanoid"; wait(0.1)
_0xDCBC.Character["1"]:Destroy()
workspace.CurrentCamera.CameraSubject = _0xDCBC.Character.Humanoid
_0xDCBC.Character.Animate.Disabled = true; wait(0.1)
_0xDCBC.Character.Animate.Disabled = false
end
end_0x31CC.Name ="CoinGrabber"_0x31CC.Parent = _0x6476
_0x31CC.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
_0x31CC.BorderColor3 = Color3.new(0, 0.607843, 1)
_0x31CC.BorderSizePixel = 5
_0x31CC.Position = UDim2.new(0, 0, 0.215, 0)
_0x31CC.Size = UDim2.new(1.005, 0, 0.08, 0)
_0x31CC.ZIndex = 4
_0x31CC.Font = Enum.Font.SciFi
_0x31CC.FontSize = Enum.FontSize.Size24
_0x31CC.Text ="Coin Grabber"_0x31CC.TextColor3 = Color3.fromRGB(255, 255, 26)
_0x31CC.TextSize = 20
_0x31CC.TextWrapped = true
_0x31CC.Activated:Connect(function()
if _0xECA2 then
_0x8D22()
else
_0xECA2 = true
task.spawn(coingrabberfunc)
end
end)_0xDEB3.Name ="MSEspActive"_0xDEB3.Parent = _0x6476
_0xDEB3.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
_0xDEB3.BorderColor3 = Color3.new(0, 0.607843, 1)
_0xDEB3.BorderSizePixel = 5
_0xDEB3.Position = UDim2.new(0.755, 0, 0.315, 0)
_0xDEB3.Size = UDim2.new(0.25, 0, 0.08, 0)
_0xDEB3.ZIndex = 4
_0xDEB3.Font = Enum.Font.SciFi
_0xDEB3.FontSize = Enum.FontSize.Size24
_0xDEB3.Text ="Inactive"_0xDEB3.TextColor3 = Color3.new(1, 0, 1)
_0xDEB3.TextSize = 20
_0xDEB3.TextWrapped = true
_0x0C34.Name ="MSEsp"_0x0C34.Parent = _0x6476
_0x0C34.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
_0x0C34.BorderColor3 = Color3.new(0, 0.607843, 1)
_0x0C34.BorderSizePixel = 5
_0x0C34.Position = UDim2.new(0, 0, 0.315, 0)
_0x0C34.Size = UDim2.new(0.75, 0, 0.08, 0)
_0x0C34.ZIndex = 4
_0x0C34.Font = Enum.Font.SciFi
_0x0C34.FontSize = Enum.FontSize.Size24
_0x0C34.Text ="Murderer/Sheriff Esp ["..string.upper(_0xB09A).."]"_0x0C34.TextColor3 = Color3.fromRGB(255, 102, 255)
_0x0C34.TextSize = 20
_0x0C34.TextWrapped = true
_0x0C34.Activated:Connect(function(x, y)
_0xB53B ="None"_0x80AF ="None"Clear()
findmurderer()
findsheriff()
if _0xF402 == true then
print("Murderer/Sheriff")
end
_0xDEB3.Text ="Active"_0xDEB3.TextColor3 = Color3.new(0, 1, 0)
_0x26C2.Text ="Inactive"_0x26C2.TextColor3 = Color3.new(1, 0, 1)
_0x2ABD.Text ="Inactive"_0x2ABD.TextColor3 = Color3.new(1, 0, 1)
end)_0x26C2.Name ="PlayersEspActive"_0x26C2.Parent = _0x6476
_0x26C2.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
_0x26C2.BorderColor3 = Color3.new(0, 0.607843, 1)
_0x26C2.BorderSizePixel = 5
_0x26C2.Position = UDim2.new(0.755, 0, 0.415, 0)
_0x26C2.Size = UDim2.new(0.25, 0, 0.08, 0)
_0x26C2.ZIndex = 4
_0x26C2.Font = Enum.Font.SciFi
_0x26C2.FontSize = Enum.FontSize.Size24
_0x26C2.Text ="Inactive"_0x26C2.TextColor3 = Color3.new(1, 0, 1)
_0x26C2.TextSize = 20
_0x26C2.TextWrapped = true
_0x309C.Name ="PlayersEsp"_0x309C.Parent = _0x6476
_0x309C.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
_0x309C.BorderColor3 = Color3.new(0, 0.607843, 1)
_0x309C.BorderSizePixel = 5
_0x309C.Position = UDim2.new(0, 0, 0.415, 0)
_0x309C.Size = UDim2.new(0.75, 0, 0.08, 0)
_0x309C.ZIndex = 4
_0x309C.Font = Enum.Font.SciFi
_0x309C.FontSize = Enum.FontSize.Size24
_0x309C.Text ="All Players Esp ["..string.upper(_0x94E3).."]"_0x309C.TextColor3 = Color3.fromRGB(102, 255, 51)
_0x309C.TextSize = 20
_0x309C.TextWrapped = true
_0x309C.Activated:Connect(function(x, y)
Clear()
if _0xF402 == true then
print("Players Esp")
end
_0xDEB3.Text ="Inactive"_0xDEB3.TextColor3 = Color3.new(1, 0, 1)
_0x26C2.Text ="Active"_0x26C2.TextColor3 = Color3.new(0, 1, 0)
_0x2ABD.Text ="Inactive"_0x2ABD.TextColor3 = Color3.new(1, 0, 1)
findplayers()
end)_0x2ABD.Name ="EspOffActive"_0x2ABD.Parent = _0x6476
_0x2ABD.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
_0x2ABD.BorderColor3 = Color3.new(0, 0.607843, 1)
_0x2ABD.BorderSizePixel = 5
_0x2ABD.Position = UDim2.new(0.755, 0, 0.515, 0)
_0x2ABD.Size = UDim2.new(0.25, 0, 0.08, 0)
_0x2ABD.ZIndex = 4
_0x2ABD.Font = Enum.Font.SciFi
_0x2ABD.FontSize = Enum.FontSize.Size24
_0x2ABD.Text ="Active"_0x2ABD.TextColor3 = Color3.new(0, 1, 0)
_0x2ABD.TextSize = 20
_0x2ABD.TextWrapped = true
_0x5066.Name ="EspOff"_0x5066.Parent = _0x6476
_0x5066.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
_0x5066.BorderColor3 = Color3.new(0, 0.607843, 1)
_0x5066.BorderSizePixel = 5
_0x5066.Position = UDim2.new(0, 0, 0.515, 0)
_0x5066.Size = UDim2.new(0.75, 0, 0.08, 0)
_0x5066.ZIndex = 4
_0x5066.Font = Enum.Font.SciFi
_0x5066.FontSize = Enum.FontSize.Size24
_0x5066.Text ="Esp Off ["..string.upper(_0x865A).."]"_0x5066.TextColor3 = Color3.fromRGB(255, 255, 255)
_0x5066.TextSize = 20
_0x5066.TextWrapped = true
_0x5066.Activated:Connect(function(x, y)
Clear()
if _0xF402 == true then
print("Esp Off")
end
_0xDEB3.Text ="Inactive"_0xDEB3.TextColor3 = Color3.new(1, 0, 1)
_0x26C2.Text ="Inactive"_0x26C2.TextColor3 = Color3.new(1, 0, 1)
_0x2ABD.Text ="Active"_0x2ABD.TextColor3 = Color3.new(0, 1, 0)
end)_0x4D52.Name ="RunActiveGui"_0x4D52.Parent = _0x6476
_0x4D52.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
_0x4D52.BorderColor3 = Color3.new(0, 0.607843, 1)
_0x4D52.BorderSizePixel = 5
_0x4D52.Position = UDim2.new(0.755, 0, 0.615, 0)
_0x4D52.Size = UDim2.new(0.25, 0, 0.08, 0)
_0x4D52.ZIndex = 4
_0x4D52.Font = Enum.Font.SciFi
_0x4D52.FontSize = Enum.FontSize.Size24
_0x4D52.Text ="Inactive"_0x4D52.TextColor3 = Color3.new(1, 0, 1)
_0x4D52.TextSize = 20
_0x4D52.TextWrapped = true
_0x0B5A.Name ="Run"_0x0B5A.Parent = _0x6476
_0x0B5A.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
_0x0B5A.BorderColor3 = Color3.new(0, 0.607843, 1)
_0x0B5A.BorderSizePixel = 5
_0x0B5A.Position = UDim2.new(0, 0, 0.615, 0)
_0x0B5A.Size = UDim2.new(0.75, 0, 0.08, 0)
_0x0B5A.ZIndex = 4
_0x0B5A.Font = Enum.Font.SciFi
_0x0B5A.FontSize = Enum.FontSize.Size24
_0x0B5A.Text ="Run [Shift]"_0x0B5A.TextColor3 = Color3.fromRGB(255, 51, 0)
_0x0B5A.TextSize = 20
_0x0B5A.TextWrapped = true
_0x0B5A.Activated:Connect(function(x, y)
if _0xE8D0 == false then
_0xE8D0 = true
_0xDCBC.Character.Humanoid.WalkSpeed = 32
_0x4D52.Text ="Active"_0x4D52.TextColor3 = Color3.new(0, 1, 0)
elseif _0xE8D0 == true then
_0xE8D0 = false
_0xDCBC.Character.Humanoid.WalkSpeed = 16
_0x4D52.Text ="Inactive"_0x4D52.TextColor3 = Color3.new(1, 0, 1)
end
end)_0xB1D0.Name ="FlyActive"_0xB1D0.Parent = _0x6476
_0xB1D0.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
_0xB1D0.BorderColor3 = Color3.new(0, 0.607843, 1)
_0xB1D0.BorderSizePixel = 5
_0xB1D0.Position = UDim2.new(0.755, 0, 0.715, 0)
_0xB1D0.Size = UDim2.new(0.25, 0, 0.08, 0)
_0xB1D0.ZIndex = 4
_0xB1D0.Font = Enum.Font.SciFi
_0xB1D0.FontSize = Enum.FontSize.Size24
_0xB1D0.Text ="Inactive"_0xB1D0.TextColor3 = Color3.new(1, 0, 1)
_0xB1D0.TextSize = 20
_0xB1D0.TextWrapped = true
_0x0D6D.Name ="Fly"_0x0D6D.Parent = _0x6476
_0x0D6D.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
_0x0D6D.BorderColor3 = Color3.new(0, 0.607843, 1)
_0x0D6D.BorderSizePixel = 5
_0x0D6D.Position = UDim2.new(0, 0, 0.715, 0)
_0x0D6D.Size = UDim2.new(0.75, 0, 0.08, 0)
_0x0D6D.ZIndex = 4
_0x0D6D.Font = Enum.Font.SciFi
_0x0D6D.FontSize = Enum.FontSize.Size24
_0x0D6D.Text ="Fly ["..string.upper(_0x4A2B).."]"_0x0D6D.TextColor3 = Color3.fromRGB(204, 255, 255)
_0x0D6D.TextSize = 20
_0x0D6D.TextWrapped = true
_0x0D6D.Activated:Connect(function(x, y)
if _0x2074 == false then
sFLY()
_0x2074 = true
_0xB1D0.Text ="Active"_0xB1D0.TextColor3 = Color3.new(0, 1, 0)
elseif _0x2074 == true then
_0x2074 = false
NOFLY()
_0xB1D0.Text ="Inactive"_0xB1D0.TextColor3 = Color3.new(1, 0, 1)
end
end)_0xBBB3.Name ="NoclipActive"_0xBBB3.Parent = _0x6476
_0xBBB3.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
_0xBBB3.BorderColor3 = Color3.new(0, 0.607843, 1)
_0xBBB3.BorderSizePixel = 5
_0xBBB3.Position = UDim2.new(0.755, 0, 0.815, 0)
_0xBBB3.Size = UDim2.new(0.25, 0, 0.08, 0)
_0xBBB3.ZIndex = 4
_0xBBB3.Font = Enum.Font.SciFi
_0xBBB3.FontSize = Enum.FontSize.Size24
_0xBBB3.Text ="Inactive"_0xBBB3.TextColor3 = Color3.new(1, 0, 1)
_0xBBB3.TextSize = 20
_0xBBB3.TextWrapped = true
_0xBC84.Name ="Noclip"_0xBC84.Parent = _0x6476
_0xBC84.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
_0xBC84.BorderColor3 = Color3.new(0, 0.607843, 1)
_0xBC84.BorderSizePixel = 5
_0xBC84.Position = UDim2.new(0, 0, 0.815, 0)
_0xBC84.Size = UDim2.new(0.75, 0, 0.08, 0)
_0xBC84.ZIndex = 4
_0xBC84.Font = Enum.Font.SciFi
_0xBC84.FontSize = Enum.FontSize.Size24
_0xBC84.Text ="Noclip ["..string.upper(_0x152C).."]"_0xBC84.TextColor3 = Color3.fromRGB(0, 102, 255)
_0xBC84.TextSize = 20
_0xBC84.TextWrapped = true
_0xBC84.Activated:Connect(function(x, y)
if _0x2EF8 == false then
_0x2EF8 = true
if _0xF402 == true then
print("Noclip Enabled")
end
_0xBBB3.Text ="Active"_0xBBB3.TextColor3 = Color3.new(0, 1, 0)
elseif _0x2EF8 == true then
_0x2EF8 = false
if _0xF402 == true then
print("Noclip Disabled")
end
_0xBBB3.Text ="Inactive"_0xBBB3.TextColor3 = Color3.new(1, 0, 1)
end
end)_0x2A5F.Name ="GodModeActive"_0x2A5F.Parent = _0x6476
_0x2A5F.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
_0x2A5F.BorderColor3 = Color3.new(0, 0.607843, 1)
_0x2A5F.BorderSizePixel = 5
_0x2A5F.Position = UDim2.new(0.755, 0, 0.915, 0)
_0x2A5F.Size = UDim2.new(0.25, 0, 0.08, 0)
_0x2A5F.ZIndex = 4
_0x2A5F.Font = Enum.Font.SciFi
_0x2A5F.FontSize = Enum.FontSize.Size24
_0x2A5F.Text ="Inactive"_0x2A5F.TextColor3 = Color3.new(1, 0, 1)
_0x2A5F.TextSize = 20
_0x2A5F.TextWrapped = true
_0x97B1.Name ="GodMode"_0x97B1.Parent = _0x6476
_0x97B1.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
_0x97B1.BorderColor3 = Color3.new(0, 0.607843, 1)
_0x97B1.BorderSizePixel = 5
_0x97B1.Position = UDim2.new(0, 0, 0.915, 0)
_0x97B1.Size = UDim2.new(0.75, 0, 0.08, 0)
_0x97B1.ZIndex = 4
_0x97B1.Font = Enum.Font.SciFi
_0x97B1.FontSize = Enum.FontSize.Size24
_0x97B1.Text ="God Mode ["..string.upper(_0x04BE).."]"_0x97B1.TextColor3 = Color3.fromRGB(255, 255, 255)
_0x97B1.TextSize = 20
_0x97B1.TextWrapped = true
_0x97B1.Activated:Connect(function(x, y)
if _0x1394 == false then
_0x2A5F.Text ="Active"_0x2A5F.TextColor3 = Color3.new(0, 1, 0)
_0x1394 = true
godmodefunc()
end
end)_0x692C.Name ="GuiXrayOnActive"_0x692C.Parent = _0x6476
_0x692C.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
_0x692C.BorderColor3 = Color3.new(0, 0.607843, 1)
_0x692C.BorderSizePixel = 5
_0x692C.Position = UDim2.new(0.755, 0, 1.015, 0)
_0x692C.Size = UDim2.new(0.25, 0, 0.08, 0)
_0x692C.ZIndex = 4
_0x692C.Font = Enum.Font.SciFi
_0x692C.FontSize = Enum.FontSize.Size24
_0x692C.Text ="Inactive"_0x692C.TextColor3 = Color3.new(1, 0, 1)
_0x692C.TextSize = 20
_0x692C.TextWrapped = true
_0xBB39.Name ="XrayOn"_0xBB39.Parent = _0x6476
_0xBB39.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
_0xBB39.BorderColor3 = Color3.new(0, 0.607843, 1)
_0xBB39.BorderSizePixel = 5
_0xBB39.Position = UDim2.new(0, 0, 1.015, 0)
_0xBB39.Size = UDim2.new(0.75, 0, 0.08, 0)
_0xBB39.ZIndex = 4
_0xBB39.Font = Enum.Font.SciFi
_0xBB39.FontSize = Enum.FontSize.Size24
_0xBB39.Text ="Xray On ["..string.upper(_0x2699).."]"_0xBB39.TextColor3 = Color3.fromRGB(255, 204, 102)
_0xBB39.TextSize = 20
_0xBB39.TextWrapped = true
_0xBB39.Activated:Connect(function(x, y)
_0x692C.Text ="Active"_0x692C.TextColor3 = Color3.new(0, 1, 0)
_0xAABB.Text ="Inactive"_0xAABB.TextColor3 = Color3.new(1, 0, 1)
XrayOn(_0xC225)
end)_0xAABB.Name ="GuiXrayOffActive"_0xAABB.Parent = _0x6476
_0xAABB.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
_0xAABB.BorderColor3 = Color3.new(0, 0.607843, 1)
_0xAABB.BorderSizePixel = 5
_0xAABB.Position = UDim2.new(0.755, 0, 1.115, 0)
_0xAABB.Size = UDim2.new(0.25, 0, 0.08, 0)
_0xAABB.ZIndex = 4
_0xAABB.Font = Enum.Font.SciFi
_0xAABB.FontSize = Enum.FontSize.Size24
_0xAABB.Text ="Active"_0xAABB.TextColor3 = Color3.new(0, 1, 0)
_0xAABB.TextSize = 20
_0xAABB.TextWrapped = true
_0xC75F.Name ="XrayOff"_0xC75F.Parent = _0x6476
_0xC75F.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
_0xC75F.BorderColor3 = Color3.new(0, 0.607843, 1)
_0xC75F.BorderSizePixel = 5
_0xC75F.Position = UDim2.new(0, 0, 1.115, 0)
_0xC75F.Size = UDim2.new(0.75, 0, 0.08, 0)
_0xC75F.ZIndex = 4
_0xC75F.Font = Enum.Font.SciFi
_0xC75F.FontSize = Enum.FontSize.Size24
_0xC75F.Text ="Xray Off ["..string.upper(_0x9149).."]"_0xC75F.TextColor3 = Color3.fromRGB(255, 153, 51)
_0xC75F.TextSize = 20
_0xC75F.TextWrapped = true
_0xC75F.Activated:Connect(function(x, y)
_0x692C.Text ="Inactive"_0x692C.TextColor3 = Color3.new(1, 0, 1)
_0xAABB.Text ="Active"_0xAABB.TextColor3 = Color3.new(0, 1, 0)
XrayOff(_0xC225)
end)_0xEB2E.Name ="BringGun"_0xEB2E.Parent = _0x6476
_0xEB2E.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
_0xEB2E.BorderColor3 = Color3.new(0, 0.607843, 1)
_0xEB2E.BorderSizePixel = 5
_0xEB2E.Position = UDim2.new(0, 0, 1.215, 0)
_0xEB2E.Size = UDim2.new(1.005, 0, 0.08, 0)
_0xEB2E.ZIndex = 4
_0xEB2E.Font = Enum.Font.SciFi
_0xEB2E.FontSize = Enum.FontSize.Size24
_0xEB2E.Text ="Teleport Gun ["..string.upper(_0x433A).."]"_0xEB2E.TextColor3 = Color3.fromRGB(0, 255, 0)
_0xEB2E.TextSize = 20
_0xEB2E.TextWrapped = true
_0xEB2E.Activated:Connect(function(x, y)
if game.Workspace.GunDrop.CFrame ~= nil then
game.Workspace.GunDrop.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
else
if _0xF402 == true then
print("Gun not currently dropped")
end
end
end)_0xC430.Name ="KeybindsActive"_0xC430.Parent = _0x6476
_0xC430.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
_0xC430.BorderColor3 = Color3.new(0, 0.607843, 1)
_0xC430.BorderSizePixel = 5
_0xC430.Position = UDim2.new(0.755, 0, 1.315, 0)
_0xC430.Size = UDim2.new(0.25, 0, 0.08, 0)
_0xC430.ZIndex = 4
_0xC430.Font = Enum.Font.SciFi
_0xC430.FontSize = Enum.FontSize.Size24
_0xC430.Text ="Active"_0xC430.TextColor3 = Color3.new(0, 1, 0)
_0xC430.TextSize = 20
_0xC430.TextWrapped = true
_0x8963.Name ="Keybinds"_0x8963.Parent = _0x6476
_0x8963.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
_0x8963.BorderColor3 = Color3.new(0, 0.607843, 1)
_0x8963.BorderSizePixel = 5
_0x8963.Position = UDim2.new(0, 0, 1.315, 0)
_0x8963.Size = UDim2.new(0.75, 0, 0.08, 0)
_0x8963.ZIndex = 4
_0x8963.Font = Enum.Font.SciFi
_0x8963.FontSize = Enum.FontSize.Size24
_0x8963.Text ="Keybinds [Ctrl]"_0x8963.TextColor3 = Color3.fromRGB(255, 255, 255)
_0x8963.TextSize = 20
_0x8963.TextWrapped = true
_0x8963.Activated:Connect(function(x, y)
if _0x99AF == true then
_0x99AF = false
_0xC430.Text ="Active"_0xC430.TextColor3 = Color3.new(0, 1, 0)
elseif _0x99AF == false then
_0x99AF = true
_0xC430.Text ="Inactive"_0xC430.TextColor3 = Color3.new(1, 0, 1)
end
end)
_0x78A2.Name ="Show"_0x78A2.Parent = _0xCAAE
_0x78A2.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
_0x78A2.BorderColor3 = Color3.new(0, 0.607843, 1)
_0x78A2.BorderSizePixel = 5
_0x78A2.Position = UDim2.new(0, 0, 0.85799998, 0)
_0x78A2.Size = UDim2.new(0.08, 0, 0.04, 0)
_0x78A2.ZIndex = 4
_0x78A2.Font = Enum.Font.SciFi
_0x78A2.FontSize = Enum.FontSize.Size24
_0x78A2.Text ="Show ["..string.upper(_0xFBD2).."]"_0x78A2.TextColor3 = Color3.new(0, 0.333333, 1)
_0x78A2.TextSize = 20
_0x78A2.TextWrapped = true
_0x78A2.Visible = false
_0x3FB7.Name ="Hide"_0x3FB7.Parent = _0x6476
_0x3FB7.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
_0x3FB7.BorderColor3 = Color3.new(0, 0.607843, 1)
_0x3FB7.BorderSizePixel = 5
_0x3FB7.Position = UDim2.new(0, 0, 1.415, 0)
_0x3FB7.Size = UDim2.new(1.005, 0, 0.08, 0)
_0x3FB7.ZIndex = 4
_0x3FB7.Font = Enum.Font.SciFi
_0x3FB7.FontSize = Enum.FontSize.Size24
_0x3FB7.Text ="Hide ["..string.upper(_0xFBD2).."]"_0x3FB7.TextColor3 = Color3.new(0, 0.333333, 1)
_0x3FB7.TextSize = 20
_0x3FB7.TextWrapped = true
_0x3FB7.Activated:Connect(function(x, y)
if _0xFBBA == true then
_0xFBBA = false
_0x6476.Visible = false
_0x78A2.Visible = true
if _0xF402 == true then
print("Hidden")
end
end
end)
_0x78A2.Activated:Connect(function(x, y)
if _0xFBBA == false then
_0xFBBA = true
_0x78A2.Visible = false
_0x6476.Visible = true
if _0xF402 == true then
print("Shown")
end
end
end)_0x99AF = true
_0xC4F7.keyDown:connect(function(_0xF477)
if _0x99AF == false then
if _0xF477 == _0xB09A then_0xB53B ="None"_0x80AF ="None"Clear()
findmurderer()
findsheriff()
if _0xF402 == true then
print("Murderer/Sheriff")
end
_0xDEB3.Text ="Active"_0xDEB3.TextColor3 = Color3.new(0, 1, 0)
_0x26C2.Text ="Inactive"_0x26C2.TextColor3 = Color3.new(1, 0, 1)
_0x2ABD.Text ="Inactive"_0x2ABD.TextColor3 = Color3.new(1, 0, 1)
elseif _0xF477 == _0x94E3 thenClear()
_0xDEB3.Text ="Inactive"_0xDEB3.TextColor3 = Color3.new(1, 0, 1)
_0x26C2.Text ="Active"_0x26C2.TextColor3 = Color3.new(0, 1, 0)
_0x2ABD.Text ="Inactive"_0x2ABD.TextColor3 = Color3.new(1, 0, 1)
findplayers()
if _0xF402 == true then
print("Players")
end
elseif _0xF477 == _0x865A thenClear()
if _0xF402 == true then
print("Esp Disabled")
end
_0xDEB3.Text ="Inactive"_0xDEB3.TextColor3 = Color3.new(1, 0, 1)
_0x26C2.Text ="Inactive"_0x26C2.TextColor3 = Color3.new(1, 0, 1)
_0x2ABD.Text ="Active"_0x2ABD.TextColor3 = Color3.new(0, 1, 0)
elseif _0xF477 == _0x4A2B thenif _0x2074 == false then
sFLY()
_0x2074 = true
_0xB1D0.Text ="Active"_0xB1D0.TextColor3 = Color3.new(0, 1, 0)
elseif _0x2074 == true then
_0x2074 = false
NOFLY()
_0xB1D0.Text ="Inactive"_0xB1D0.TextColor3 = Color3.new(1, 0, 1)
end
elseif _0xF477 == _0x152C thenif _0x2EF8 == false then
_0x2EF8 = true
if _0xF402 == true then
print("Noclip Enabled")
end
_0xBBB3.Text ="Active"_0xBBB3.TextColor3 = Color3.new(0, 1, 0)
elseif _0x2EF8 == true then
_0x2EF8 = false
if _0xF402 == true then
print("Noclip Disabled")
end
_0xBBB3.Text ="Inactive"_0xBBB3.TextColor3 = Color3.new(1, 0, 1)
end
elseif _0xF477 == _0x04BE thenif _0x1394 == false then
_0x1394 = true
godmodefunc()
_0x2A5F.Text ="Active"_0x2A5F.TextColor3 = Color3.new(0, 1, 0)
end
elseif _0xF477 == _0x2699 then_0x692C.Text ="Active"_0x692C.TextColor3 = Color3.new(0, 1, 0)
_0xAABB.Text ="Inactive"_0xAABB.TextColor3 = Color3.new(1, 0, 1)
XrayOn(_0xC225)
elseif _0xF477 == _0x9149 then_0x692C.Text ="Inactive"_0x692C.TextColor3 = Color3.new(1, 0, 1)
_0xAABB.Text ="Active"_0xAABB.TextColor3 = Color3.new(0, 1, 0)
XrayOff(_0xC225)
elseif _0xF477 == _0x433A thenif game.Workspace.GunDrop.CFrame ~= nil then
game.Workspace.GunDrop.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
else
if _0xF402 == true then
print("Gun not currently dropped")
end
end
elseif _0xF477 == _0xFBD2 thenif _0xFBBA == false then
_0xFBBA = true
_0x78A2.Visible = false
_0x6476.Visible = true
if _0xF402 == true then
print("Shown")
end
elseif _0xFBBA == true then
_0xFBBA = false
_0x6476.Visible = false
_0x78A2.Visible = true
if _0xF402 == true then
print("Hidden")
end
end
end
end
end)local _0x015E = Instance.new("ScreenGui")
_0x015E.Name ="BluePeakModernUI"_0x015E.ResetOnSpawn = false
_0x015E.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
_0x015E.Parent = _0xA867:WaitForChild("PlayerGui")_0x6476.Visible = false
_0x78A2.Visible = false
local _0x9A01 = game:GetService("UserInputService")
local _0x732D = game:GetService("TweenService")
local _0x79CB = Color3.fromRGB(74, 144, 255)
local _0xD9C5 = Color3.fromRGB(36, 78, 140)
local _0xC54C = Color3.fromRGB(12, 15, 22)
local _0x79A3 = Color3.fromRGB(19, 23, 32)
local _0x2E9D = Color3.fromRGB(25, 30, 41)
local _0xF4DC = Color3.fromRGB(31, 37, 50)
local _0x1C25 = Color3.fromRGB(240, 244, 252)
local _0xC9DB = Color3.fromRGB(145, 155, 173)
local _0x8804 = Color3.fromRGB(66, 211, 135)
local _0x6D2A = Color3.fromRGB(235, 91, 106)
local _0xBF1F = Color3.fromRGB(255, 195, 76)
local _0xE11D = Instance.new("Frame")
_0xE11D.Name ="Root"_0xE11D.Parent = _0x015E
_0xE11D.AnchorPoint = Vector2.new(0.5, 0.5)
_0xE11D.Position = UDim2.fromScale(0.5, 0.5)
_0xE11D.Size = UDim2.fromOffset(430, 570)
_0xE11D.BackgroundColor3 = _0xC54C
_0xE11D.BorderSizePixel = 0
local _0x794F = Instance.new("UICorner")
_0x794F.CornerRadius = UDim.new(0, 16)
_0x794F.Parent = _0xE11D
local _0x0158 = Instance.new("UIStroke")
_0x0158.Color = Color3.fromRGB(44, 53, 69)
_0x0158.Thickness = 1
_0x0158.Transparency = 0.15
_0x0158.Parent = _0xE11D
local _0x1DBC = Instance.new("ImageLabel")
_0x1DBC.Name ="Shadow"_0x1DBC.Parent = _0xE11D
_0x1DBC.AnchorPoint = Vector2.new(0.5, 0.5)
_0x1DBC.Position = UDim2.fromScale(0.5, 0.5)
_0x1DBC.Size = UDim2.new(1, 45, 1, 45)
_0x1DBC.BackgroundTransparency = 1
_0x1DBC.Image ="rbxassetid://6014261993"_0x1DBC.ImageColor3 = Color3.new(0, 0, 0)
_0x1DBC.ImageTransparency = 0.55
_0x1DBC.ScaleType = Enum.ScaleType.Slice
_0x1DBC.SliceCenter = Rect.new(49, 49, 450, 450)
_0x1DBC.ZIndex = -1
local _0x4976 = Instance.new("Frame")
_0x4976.Parent = _0xE11D
_0x4976.Size = UDim2.new(1, 0, 0, 78)
_0x4976.BackgroundTransparency = 1
local _0x5A79 = Instance.new("Frame")
_0x5A79.Parent = _0x4976
_0x5A79.Position = UDim2.fromOffset(20, 23)
_0x5A79.Size = UDim2.fromOffset(4, 32)
_0x5A79.BackgroundColor3 = _0x79CB
_0x5A79.BorderSizePixel = 0
Instance.new("UICorner", _0x5A79).CornerRadius = UDim.new(1, 0)
local _0xCBC4 = Instance.new("TextLabel")
_0xCBC4.Parent = _0x4976
_0xCBC4.Position = UDim2.fromOffset(34, 16)
_0xCBC4.Size = UDim2.new(1, -95, 0, 30)
_0xCBC4.BackgroundTransparency = 1
_0xCBC4.Text ="BLUEPEAK STUDIOS"_0xCBC4.TextColor3 = _0x1C25
_0xCBC4.Font = Enum.Font.GothamBold
_0xCBC4.TextSize = 19
_0xCBC4.TextXAlignment = Enum.TextXAlignment.Left
local _0x1932 = Instance.new("TextLabel")
_0x1932.Parent = _0x4976
_0x1932.Position = UDim2.fromOffset(34, 43)
_0x1932.Size = UDim2.new(1, -95, 0, 20)
_0x1932.BackgroundTransparency = 1
_0x1932.Text ="MM2  •  Utility Panel"_0x1932.TextColor3 = _0xC9DB
_0x1932.Font = Enum.Font.Gotham
_0x1932.TextSize = 12
_0x1932.TextXAlignment = Enum.TextXAlignment.Left
local _0xBE78 = Instance.new("TextButton")
_0xBE78.Parent = _0x4976
_0xBE78.Position = UDim2.new(1, -55, 0, 22)
_0xBE78.Size = UDim2.fromOffset(34, 34)
_0xBE78.BackgroundColor3 = _0x2E9D
_0xBE78.BorderSizePixel = 0
_0xBE78.Text ="—"_0xBE78.TextColor3 = _0xC9DB
_0xBE78.Font = Enum.Font.GothamBold
_0xBE78.TextSize = 18
Instance.new("UICorner", _0xBE78).CornerRadius = UDim.new(0, 9)
local _0x8C78 = Instance.new("Frame")
_0x8C78.Parent = _0xE11D
_0x8C78.Position = UDim2.fromOffset(18, 77)
_0x8C78.Size = UDim2.new(1, -36, 0, 1)
_0x8C78.BackgroundColor3 = Color3.fromRGB(42, 48, 61)
_0x8C78.BorderSizePixel = 0
local _0xCB2B = Instance.new("ScrollingFrame")
_0xCB2B.Parent = _0xE11D
_0xCB2B.Position = UDim2.fromOffset(14, 89)
_0xCB2B.Size = UDim2.new(1, -28, 1, -103)
_0xCB2B.BackgroundTransparency = 1
_0xCB2B.BorderSizePixel = 0
_0xCB2B.ScrollBarThickness = 4
_0xCB2B.ScrollBarImageColor3 = Color3.fromRGB(63, 73, 92)
_0xCB2B.CanvasSize = UDim2.new()
_0xCB2B.AutomaticCanvasSize = Enum.AutomaticSize.Y
local _0xFE42 = Instance.new("UIPadding")
_0xFE42.Parent = _0xCB2B
_0xFE42.PaddingLeft = UDim.new(0, 5)
_0xFE42.PaddingRight = UDim.new(0, 5)
_0xFE42.PaddingBottom = UDim.new(0, 12)
local _0x8CE8 = Instance.new("UIListLayout")
_0x8CE8.Parent = _0xCB2B
_0x8CE8.Padding = UDim.new(0, 8)
_0x8CE8.SortOrder = Enum.SortOrder.LayoutOrder
local _0x4618 = 0
local _0x665C = {}
local function _0x6CFE(text)
_0x4618 += 1
local _0x011D = Instance.new("TextLabel")
_0x011D.Parent = _0xCB2B
_0x011D.LayoutOrder = _0x4618
_0x011D.Size = UDim2.new(1, -4, 0, 22)
_0x011D.BackgroundTransparency = 1
_0x011D.Text ="  ".. text
_0x011D.TextColor3 = _0x79CB
_0x011D.Font = Enum.Font.GothamBold
_0x011D.TextSize = 11
_0x011D.TextXAlignment = Enum.TextXAlignment.Left
return _0x011D
end
local function _0x9199()
if _0xDEB3.Text =="Active"then
Clear()
_0xDEB3.Text ="Inactive"_0xDEB3.TextColor3 = Color3.new(1, 0, 1)
else
_0xB53B ="None"_0x80AF ="None"Clear()
findmurderer()
findsheriff()
_0xDEB3.Text ="Active"_0xDEB3.TextColor3 = Color3.new(0, 1, 0)
_0x26C2.Text ="Inactive"_0x26C2.TextColor3 = Color3.new(1, 0, 1)
_0x2ABD.Text ="Inactive"_0x2ABD.TextColor3 = Color3.new(1, 0, 1)
end
end
local function _0xDC7C()
if _0x26C2.Text =="Active"then
Clear()
_0x26C2.Text ="Inactive"_0x26C2.TextColor3 = Color3.new(1, 0, 1)
else
Clear()
findplayers()
_0xDEB3.Text ="Inactive"_0xDEB3.TextColor3 = Color3.new(1, 0, 1)
_0x26C2.Text ="Active"_0x26C2.TextColor3 = Color3.new(0, 1, 0)
_0x2ABD.Text ="Inactive"_0x2ABD.TextColor3 = Color3.new(1, 0, 1)
end
end
local function _0x7531()
local _0x41F2 = _0xDCBC.Character
local _0x2626 = _0x41F2 and _0x41F2:FindFirstChildOfClass("Humanoid")
if _0xE8D0 then
_0xE8D0 = false
if _0x2626 then _0x2626.WalkSpeed = 16 end
_0x4D52.Text ="Inactive"_0x4D52.TextColor3 = Color3.new(1, 0, 1)
else
_0xE8D0 = true
if _0x2626 then _0x2626.WalkSpeed = 32 end
_0x4D52.Text ="Active"_0x4D52.TextColor3 = Color3.new(0, 1, 0)
end
end
local function _0x145D()
if _0x2074 then
_0x2074 = false
NOFLY()
_0xB1D0.Text ="Inactive"_0xB1D0.TextColor3 = Color3.new(1, 0, 1)
else
local _0x95C3 = sFLY()
if _0x95C3 then
_0x2074 = true
_0xB1D0.Text ="Active"_0xB1D0.TextColor3 = Color3.new(0, 1, 0)
end
end
end
local function _0xD6AF()
_0x2EF8 = not _0x2EF8
if _0x2EF8 then
_0xBBB3.Text ="Active"_0xBBB3.TextColor3 = Color3.new(0, 1, 0)
else
_0xBBB3.Text ="Inactive"_0xBBB3.TextColor3 = Color3.new(1, 0, 1)
end
end
local function _0xA2C2()
if _0x692C.Text =="Active"then
_0x692C.Text ="Inactive"_0x692C.TextColor3 = Color3.new(1, 0, 1)
_0xAABB.Text ="Active"_0xAABB.TextColor3 = Color3.new(0, 1, 0)
XrayOff(_0xC225)
else
_0x692C.Text ="Active"_0x692C.TextColor3 = Color3.new(0, 1, 0)
_0xAABB.Text ="Inactive"_0xAABB.TextColor3 = Color3.new(1, 0, 1)
XrayOn(_0xC225)
end
end
local function _0x25B2()
local _0x8123 = workspace:FindFirstChild("GunDrop")
local _0x41F2 = _0xA867.Character
local _0xE623 = _0x41F2 and _0x41F2:FindFirstChild("HumanoidRootPart")
if _0x8123 and _0xE623 and _0x8123:IsA("BasePart") then
_0x8123.CFrame = _0xE623.CFrame
end
end
local function _0x6CE3()
if _0x1394 then
return
end
_0x1394 = true
_0x2A5F.Text ="Active"_0x2A5F.TextColor3 = Color3.new(0, 1, 0)
godmodefunc()
end
local function _0xA7AB(name, description, _0xF477, oldButton, statusGetter, icon, action)
_0x4618 += 1
local _0xCDE3 = Instance.new("TextButton")
_0xCDE3.Name = name:gsub("%W","") .."Card"_0xCDE3.Parent = _0xCB2B
_0xCDE3.LayoutOrder = _0x4618
_0xCDE3.Size = UDim2.new(1, -4, 0, 58)
_0xCDE3.BackgroundColor3 = _0x2E9D
_0xCDE3.BorderSizePixel = 0
_0xCDE3.AutoButtonColor = false
_0xCDE3.Text =""local _0x55E7 = Instance.new("UICorner")
_0x55E7.CornerRadius = UDim.new(0, 11)
_0x55E7.Parent = _0xCDE3
local _0x5CAA = Instance.new("UIStroke")
_0x5CAA.Color = Color3.fromRGB(42, 49, 63)
_0x5CAA.Thickness = 1
_0x5CAA.Transparency = 0.35
_0x5CAA.Parent = _0xCDE3
local _0x1643 = Instance.new("TextLabel")
_0x1643.Parent = _0xCDE3
_0x1643.Position = UDim2.fromOffset(13, 12)
_0x1643.Size = UDim2.fromOffset(34, 34)
_0x1643.BackgroundColor3 = Color3.fromRGB(31, 39, 53)
_0x1643.BorderSizePixel = 0
_0x1643.Text = icon or"•"_0x1643.TextColor3 = _0x79CB
_0x1643.Font = Enum.Font.GothamBold
_0x1643.TextSize = 15
Instance.new("UICorner", _0x1643).CornerRadius = UDim.new(0, 9)
local _0x16F6 = Instance.new("TextLabel")
_0x16F6.Parent = _0xCDE3
_0x16F6.Position = UDim2.fromOffset(58, 9)
_0x16F6.Size = UDim2.new(1, -175, 0, 22)
_0x16F6.BackgroundTransparency = 1
_0x16F6.Text = name
_0x16F6.TextColor3 = _0x1C25
_0x16F6.Font = Enum.Font.GothamSemibold
_0x16F6.TextSize = 13
_0x16F6.TextXAlignment = Enum.TextXAlignment.Left
local _0x5E4F = Instance.new("TextLabel")
_0x5E4F.Parent = _0xCDE3
_0x5E4F.Position = UDim2.fromOffset(58, 30)
_0x5E4F.Size = UDim2.new(1, -175, 0, 18)
_0x5E4F.BackgroundTransparency = 1
_0x5E4F.Text = description
_0x5E4F.TextColor3 = _0xC9DB
_0x5E4F.Font = Enum.Font.Gotham
_0x5E4F.TextSize = 10
_0x5E4F.TextXAlignment = Enum.TextXAlignment.Left
_0x5E4F.TextTruncate = Enum.TextTruncate.AtEnd
local _0x8EF4 = Instance.new("TextLabel")
_0x8EF4.Parent = _0xCDE3
_0x8EF4.AnchorPoint = Vector2.new(1, 0.5)
_0x8EF4.Position = UDim2.new(1, -12, 0.5, 0)
_0x8EF4.Size = UDim2.fromOffset(74, 28)
_0x8EF4.BackgroundColor3 = Color3.fromRGB(42, 47, 58)
_0x8EF4.BorderSizePixel = 0
_0x8EF4.Font = Enum.Font.GothamBold
_0x8EF4.TextSize = 10
_0x8EF4.Text ="READY"_0x8EF4.TextColor3 = _0xC9DB
Instance.new("UICorner", _0x8EF4).CornerRadius = UDim.new(0, 8)
local _0xB786 = Instance.new("TextLabel")
_0xB786.Parent = _0xCDE3
_0xB786.AnchorPoint = Vector2.new(1, 0)
_0xB786.Position = UDim2.new(1, -93, 0, 7)
_0xB786.Size = UDim2.fromOffset(40, 15)
_0xB786.BackgroundTransparency = 1
_0xB786.Text = _0xF477 and ("[".. string.upper(_0xF477) .."]") or""_0xB786.TextColor3 = Color3.fromRGB(105, 116, 137)
_0xB786.Font = Enum.Font.GothamMedium
_0xB786.TextSize = 9
_0xB786.TextXAlignment = Enum.TextXAlignment.Right
local function _0xD2F1()
local _0x43BE = statusGetter and statusGetter() or nil
if _0x43BE == true then
_0x8EF4.Text ="ON"_0x8EF4.TextColor3 = _0x8804
_0x8EF4.BackgroundColor3 = Color3.fromRGB(24, 63, 48)
elseif _0x43BE == false then
_0x8EF4.Text ="OFF"_0x8EF4.TextColor3 = _0x6D2A
_0x8EF4.BackgroundColor3 = Color3.fromRGB(63, 35, 42)
else
_0x8EF4.Text ="READY"_0x8EF4.TextColor3 = _0xC9DB
_0x8EF4.BackgroundColor3 = Color3.fromRGB(42, 47, 58)
end
end
_0xCDE3.MouseEnter:Connect(function()
_0x732D:Create(_0xCDE3, TweenInfo.new(0.12), {BackgroundColor3 = _0xF4DC}):Play()
_0x732D:Create(_0x5CAA, TweenInfo.new(0.12), {Color = _0x79CB, Transparency = 0.15}):Play()
end)
_0xCDE3.MouseLeave:Connect(function()
_0x732D:Create(_0xCDE3, TweenInfo.new(0.12), {BackgroundColor3 = _0x2E9D}):Play()
_0x732D:Create(_0x5CAA, TweenInfo.new(0.12), {Color = Color3.fromRGB(42, 49, 63), Transparency = 0.35}):Play()
end)
_0xCDE3.Active = true
_0xCDE3.Activated:Connect(function()
local _0x5785, _0xEC41 = true, nil
if action then
_0x5785, _0xEC41 = pcall(action)
elseif oldButton then
_0x5785, _0xEC41 = pcall(function()oldButton.Activated:Wait()
end)
end
if not _0x5785 then
warn("[BluePeak] Feature action failed for ".. tostring(name) ..": ".. tostring(_0xEC41))
end
task.wait()
_0xD2F1()
end)
_0x665C[#_0x665C + 1] = _0xD2F1
_0xD2F1()
return _0xCDE3
end
_0x6CFE("ESP")
_0xA7AB("Murderer / Sheriff","Toggle role ESP", nil, nil, function()
return _0xDEB3.Text =="Active"end,"⚔", _0x9199)
_0xA7AB("All Players","Toggle player ESP", nil, nil, function()
return _0x26C2.Text =="Active"end,"◎", _0xDC7C)
_0x6CFE("MOVEMENT")
_0xA7AB("WalkSpeed","Toggle increased movement speed", nil, nil, function() return _0xE8D0 end,"»", _0x7531)
_0xA7AB("Fly","Toggle free-flight movement", nil, nil, function() return _0x2074 end,"↑", _0x145D)
_0xA7AB("Noclip","Toggle walking through solid parts", nil, nil, function() return _0x2EF8 end,"◇", _0xD6AF)
_0x6CFE("WORLD")
_0xA7AB("God Mode","Enable character protection", nil, nil, function() return _0x1394 end,"✦", _0x6CE3)
_0xA7AB("X-Ray","Toggle map transparency", nil, nil, function()
return _0x692C.Text =="Active"end,"◈", _0xA2C2)
_0x6CFE("UTILITY")
_0xA7AB("Coin Grabber","Toggle looping coin autofarm", nil, nil, function()
return _0xECA2
end,"●", function()
if _0xECA2 then
_0x8D22()
else
_0xECA2 = true
task.spawn(coingrabberfunc)
end
end)
_0xA7AB("Teleport Gun","Move the dropped gun to you", nil, nil, nil,"↗", _0x25B2)
local function _0xC269()
local _0x41F2 = _0xA867.Character
if _0x41F2 then
local _0xEDFF = _0x41F2:FindFirstChild("Knife")
if _0xEDFF and _0xEDFF:IsA("Tool") then
return _0xEDFF
end
end
local _0xCABE = _0xA867:FindFirstChildOfClass("Backpack")
if _0xCABE then
local _0xEDFF = _0xCABE:FindFirstChild("Knife")
if _0xEDFF and _0xEDFF:IsA("Tool") then
return _0xEDFF
end
end
return nil
end
local function _0xEA22()
return _0xC269() ~= nil
end
local _0x6F6F = false
local _0x0FDD = false
local function _0x255E()
if _0x0FDD then
return
end
_0x0FDD = true
while _0x6F6F do
if not _0xEA22() then
task.wait(0.35)
continue
end
local _0x41F2 = _0xA867.Character
local _0x2626 = _0x41F2 and _0x41F2:FindFirstChildOfClass("Humanoid")
local _0xE623 = _0x41F2 and (_0x41F2:FindFirstChild("HumanoidRootPart") or _0x41F2:FindFirstChild("Torso"))
local _0xEDFF = _0xC269()
if not _0x2626 or not _0xE623 or not _0xEDFF then
task.wait(0.25)
continue
end
if _0xEDFF.Parent ~= _0x41F2 then
pcall(function()
_0x2626:EquipTool(_0xEDFF)
end)
task.wait(0.15)
_0xEDFF = _0xC269()
end
if not _0xEDFF then
task.wait(0.2)
continue
end
local _0x9A9C = _0xE623.CFrame
for _, target in ipairs(_0x9ACF:GetPlayers()) do
if not _0x6F6F or not _0xEA22() then
break
end
if target ~= _0xA867 then
local _0x0F7E = target.Character
local _0x7BB8 = _0x0F7E and _0x0F7E:FindFirstChildOfClass("Humanoid")
local _0x8433 = _0x0F7E and (_0x0F7E:FindFirstChild("HumanoidRootPart") or _0x0F7E:FindFirstChild("Torso"))
if _0x7BB8 and _0x7BB8.Health > 0 and _0x8433 then
for _ = 1, 3 do
if not _0x6F6F or not _0xEA22() then
break
end
_0xE623.CFrame = _0x8433.CFrame * CFrame.new(0, 0, 2.5)
pcall(function()
_0xEDFF:Activate()
end)
task.wait(0.12)
end
end
end
end
if _0x6F6F and _0xE623 and _0xE623.Parent then
_0xE623.CFrame = _0x9A9C
end
task.wait(0.35)
end
_0x0FDD = false
end
local function _0x92BE()
if _0x6F6F then
_0x6F6F = false
else
_0x6F6F = true
task.spawn(_0x255E)
end
end
local function _0xDDA9()
local _0xCBFA
if _0x80AF and _0x80AF ~="None"then
_0xCBFA = _0x9ACF:FindFirstChild(_0x80AF)
end
if not _0xCBFA then
for _, plr in ipairs(_0x9ACF:GetPlayers()) do
if plr ~= _0xA867 then
local _0xCABE = plr:FindFirstChildOfClass("Backpack")
local _0x41F2 = plr.Character
local _0xEFAE = (_0xCABE and (_0xCABE:FindFirstChild("Gun") or _0xCABE:FindFirstChild("Revolver")))
or (_0x41F2 and (_0x41F2:FindFirstChild("Gun") or _0x41F2:FindFirstChild("Revolver")))
if _0xEFAE then
_0xCBFA = plr
break
end
end
end
end
if not _0xCBFA or not _0xCBFA.Character then
return
end
local _0x8433 = _0xCBFA.Character:FindFirstChild("HumanoidRootPart")
or _0xCBFA.Character:FindFirstChild("Torso")
local _0x8958 = _0xA867.Character
local _0x6429 = _0x8958 and (_0x8958:FindFirstChild("HumanoidRootPart")
or _0x8958:FindFirstChild("Torso"))
if _0x8433 and _0x6429 then
_0x6429.CFrame = _0x8433.CFrame * CFrame.new(0, 0, 3)
end
end
_0xA7AB("Teleport to Sheriff","Teleport next to the current Sheriff", nil, nil, nil,"★", _0xDDA9)
_0xA7AB("Kill All","Loop kills while you are the Murderer", nil, nil, function() return _0x6F6F end,"☠", _0x92BE)
local _0x64E6 = Instance.new("TextLabel")
_0x64E6.Parent = _0xCB2B
_0x64E6.LayoutOrder = _0x4618 + 1
_0x64E6.Size = UDim2.new(1, -4, 0, 26)
_0x64E6.BackgroundTransparency = 1
_0x64E6.Text ="Click features to toggle them on or off"_0x64E6.TextColor3 = Color3.fromRGB(92, 103, 123)
_0x64E6.Font = Enum.Font.Gotham
_0x64E6.TextSize = 10
_0x64E6.TextXAlignment = Enum.TextXAlignment.Centerlocal _0x2900 = false
local _0xE8DC
local _0x7457
_0x4976.InputBegan:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
_0x2900 = true
_0xE8DC = input.Position
_0x7457 = _0xE11D.Position
end
end)
_0x9A01.InputChanged:Connect(function(input)
if _0x2900 and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
local _0xB233 = input.Position - _0xE8DC
_0xE11D.Position = UDim2.new(
_0x7457.X.Scale, _0x7457.X.Offset + _0xB233.X,
_0x7457.Y.Scale, _0x7457.Y.Offset + _0xB233.Y
)
end
end)
_0x9A01.InputEnded:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
_0x2900 = false
end
end)local _0x52CA = true
local function _0x145F(value)
_0x52CA = value
_0xE11D.Visible = value
end
_0xBE78.MouseButton1Click:Connect(function()
_0x145F(false)
end)
local _0x100F = Instance.new("TextButton")
_0x100F.Parent = _0x015E
_0x100F.AnchorPoint = Vector2.new(0, 1)
_0x100F.Position = UDim2.new(0, 18, 1, -18)
_0x100F.Size = UDim2.fromOffset(118, 38)
_0x100F.BackgroundColor3 = _0x79A3
_0x100F.BorderSizePixel = 0
_0x100F.Text ="◆  BluePeak"_0x100F.TextColor3 = _0x1C25
_0x100F.Font = Enum.Font.GothamBold
_0x100F.TextSize = 11
_0x100F.Visible = false
Instance.new("UICorner", _0x100F).CornerRadius = UDim.new(0, 10)
local _0x7025 = Instance.new("UIStroke")
_0x7025.Parent = _0x100F
_0x7025.Color = _0x79CB
_0x7025.Transparency = 0.25
_0xBE78.MouseButton1Click:Connect(function()
_0x100F.Visible = true
end)
_0x100F.MouseButton1Click:Connect(function()
_0x145F(true)
_0x100F.Visible = false
end)
_0x9A01.InputBegan:Connect(function(input, processed)
if processed then return end
local _0xCFBE = string.upper(_0xFBD2)
local _0xA12A = Enum.KeyCode[_0xCFBE]
if _0xA12A and input.KeyCode == _0xA12A then
_0x145F(not _0x52CA)
_0x100F.Visible = not _0x52CA
end
end)task.spawn(function()
while _0x015E.Parent do
for _, _0xD2F1 in ipairs(_0x665C) do
pcall(_0xD2F1)
end
task.wait(0.25)
end
end)
end
