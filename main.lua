if game.PlaceId == 142823291 then -- Run this as a LocalScript in StarterPlayerScripts

--// BluePeak Studios Key System
--// The key gate appears before the main UI and the rest of the script only
--// continues after the correct key is entered.
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local BLUEPEAK_KEY = "BluePeakAccess"
local BLUEPEAK_DISCORD = "https://discord.gg/GFUNArcatk"

local KeyGui = Instance.new("ScreenGui")
KeyGui.Name = "BluePeakKeySystem"
KeyGui.ResetOnSpawn = false
KeyGui.IgnoreGuiInset = true
KeyGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
KeyGui.Parent = PlayerGui

local KeyOverlay = Instance.new("Frame")
KeyOverlay.Size = UDim2.fromScale(1, 1)
KeyOverlay.BackgroundColor3 = Color3.fromRGB(7, 9, 14)
KeyOverlay.BackgroundTransparency = 0.08
KeyOverlay.BorderSizePixel = 0
KeyOverlay.Parent = KeyGui

local KeyCard = Instance.new("Frame")
KeyCard.AnchorPoint = Vector2.new(0.5, 0.5)
KeyCard.Position = UDim2.fromScale(0.5, 0.5)
KeyCard.Size = UDim2.fromOffset(410, 300)
KeyCard.BackgroundColor3 = Color3.fromRGB(17, 20, 29)
KeyCard.BorderSizePixel = 0
KeyCard.Parent = KeyOverlay

local KeyCorner = Instance.new("UICorner")
KeyCorner.CornerRadius = UDim.new(0, 16)
KeyCorner.Parent = KeyCard

local KeyStroke = Instance.new("UIStroke")
KeyStroke.Color = Color3.fromRGB(0, 155, 255)
KeyStroke.Thickness = 1.5
KeyStroke.Transparency = 0.15
KeyStroke.Parent = KeyCard

local KeyPadding = Instance.new("UIPadding")
KeyPadding.PaddingTop = UDim.new(0, 24)
KeyPadding.PaddingBottom = UDim.new(0, 22)
KeyPadding.PaddingLeft = UDim.new(0, 28)
KeyPadding.PaddingRight = UDim.new(0, 28)
KeyPadding.Parent = KeyCard

local KeyTitle = Instance.new("TextLabel")
KeyTitle.Size = UDim2.new(1, 0, 0, 34)
KeyTitle.BackgroundTransparency = 1
KeyTitle.Text = "BLUEPEAK STUDIOS"
KeyTitle.TextColor3 = Color3.fromRGB(55, 174, 255)
KeyTitle.Font = Enum.Font.GothamBold
KeyTitle.TextSize = 20
KeyTitle.Parent = KeyCard

local KeySubtitle = Instance.new("TextLabel")
KeySubtitle.Position = UDim2.new(0, 0, 0, 42)
KeySubtitle.Size = UDim2.new(1, 0, 0, 44)
KeySubtitle.BackgroundTransparency = 1
KeySubtitle.Text = "Join the Discord to get access, then enter your key below."
KeySubtitle.TextColor3 = Color3.fromRGB(165, 173, 190)
KeySubtitle.Font = Enum.Font.Gotham
KeySubtitle.TextSize = 12
KeySubtitle.TextWrapped = true
KeySubtitle.Parent = KeyCard

local DiscordButton = Instance.new("TextButton")
DiscordButton.Position = UDim2.new(0, 0, 0, 94)
DiscordButton.Size = UDim2.new(1, 0, 0, 38)
DiscordButton.BackgroundColor3 = Color3.fromRGB(35, 39, 54)
DiscordButton.BorderSizePixel = 0
DiscordButton.Text = "Join Discord  •  discord.gg/GFUNArcatk"
DiscordButton.TextColor3 = Color3.fromRGB(225, 230, 240)
DiscordButton.Font = Enum.Font.GothamSemibold
DiscordButton.TextSize = 11
DiscordButton.Parent = KeyCard

local DiscordCorner = Instance.new("UICorner")
DiscordCorner.CornerRadius = UDim.new(0, 9)
DiscordCorner.Parent = DiscordButton

local KeyBox = Instance.new("TextBox")
KeyBox.Position = UDim2.new(0, 0, 0, 144)
KeyBox.Size = UDim2.new(1, 0, 0, 42)
KeyBox.BackgroundColor3 = Color3.fromRGB(10, 13, 20)
KeyBox.BorderSizePixel = 0
KeyBox.PlaceholderText = "Enter key..."
KeyBox.PlaceholderColor3 = Color3.fromRGB(100, 108, 125)
KeyBox.Text = ""
KeyBox.TextColor3 = Color3.fromRGB(240, 244, 250)
KeyBox.Font = Enum.Font.Gotham
KeyBox.TextSize = 13
KeyBox.ClearTextOnFocus = false
KeyBox.Parent = KeyCard

local KeyBoxCorner = Instance.new("UICorner")
KeyBoxCorner.CornerRadius = UDim.new(0, 9)
KeyBoxCorner.Parent = KeyBox

local KeyBoxStroke = Instance.new("UIStroke")
KeyBoxStroke.Color = Color3.fromRGB(52, 62, 82)
KeyBoxStroke.Thickness = 1
KeyBoxStroke.Parent = KeyBox

local UnlockButton = Instance.new("TextButton")
UnlockButton.Position = UDim2.new(0, 0, 0, 198)
UnlockButton.Size = UDim2.new(1, 0, 0, 42)
UnlockButton.BackgroundColor3 = Color3.fromRGB(0, 145, 235)
UnlockButton.BorderSizePixel = 0
UnlockButton.Text = "UNLOCK"
UnlockButton.TextColor3 = Color3.fromRGB(255, 255, 255)
UnlockButton.Font = Enum.Font.GothamBold
UnlockButton.TextSize = 12
UnlockButton.Parent = KeyCard

local UnlockCorner = Instance.new("UICorner")
UnlockCorner.CornerRadius = UDim.new(0, 9)
UnlockCorner.Parent = UnlockButton

local KeyStatus = Instance.new("TextLabel")
KeyStatus.Position = UDim2.new(0, 0, 0, 248)
KeyStatus.Size = UDim2.new(1, 0, 0, 22)
KeyStatus.BackgroundTransparency = 1
KeyStatus.Text = "Key required to continue."
KeyStatus.TextColor3 = Color3.fromRGB(105, 114, 133)
KeyStatus.Font = Enum.Font.Gotham
KeyStatus.TextSize = 10
KeyStatus.Parent = KeyCard

local unlocked = false

local function tryUnlock()
    if KeyBox.Text == BLUEPEAK_KEY then
        unlocked = true
        KeyStatus.Text = "Access granted."
        KeyStatus.TextColor3 = Color3.fromRGB(85, 220, 145)
        task.wait(0.15)
        KeyGui:Destroy()
    else
        KeyStatus.Text = "Invalid key. Join the Discord to get the key."
        KeyStatus.TextColor3 = Color3.fromRGB(255, 92, 92)
        KeyBox.Text = ""
        KeyBox:CaptureFocus()
    end
end

UnlockButton.MouseButton1Click:Connect(tryUnlock)

KeyBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        tryUnlock()
    end
end)

DiscordButton.MouseButton1Click:Connect(function()
    -- setclipboard is available in some script environments.
    -- In normal Roblox, the Discord URL remains visible for manual copying.
    pcall(function()
        if setclipboard then
            setclipboard(BLUEPEAK_DISCORD)
            KeyStatus.Text = "Discord invite copied to clipboard."
            KeyStatus.TextColor3 = Color3.fromRGB(85, 220, 145)
        else
            KeyStatus.Text = BLUEPEAK_DISCORD
            KeyStatus.TextColor3 = Color3.fromRGB(165, 173, 190)
        end
    end)
end)

KeyBox:CaptureFocus()

-- Stop the original script here until the key is entered.
while not unlocked do
    task.wait()
end


--Note: Don't reset with godmode on or you will be stuck on a black screen for a reasonable amount of time*

--Change to false if you dont like printing to console*

local printvar = true

--Change to true if you want to see names instead of murderer, sheriff, and innocents with esp*

local espnames = true

--Change keybinds to your liking*

local coinkey = "c" --Coin grabber keybind*

local MSkey = "m" --Murderer/Sheriff esp keybind*

local playerskey = "q" --All players esp keybind*

local espoffkey = "b" --Turn esp off keybind*

local flykey = "f" --Fly keybind*

local noclipkey = "r" --Noclip keybind*

local godmodekey = "g" --Godmode keybind*

local xrayonkey = "x" --Xray on keybind*

local xrayoffkey = "z" --Xray off keybind*

local bringgunkey = "t" --Teleport to gun keybind*

local hideshowguikey = "p" --Show/Hide gui keybind*

--End of easy customization options*

--Gui Buttons and Status

local MM2 = Instance.new("ScreenGui")

local Main = Instance.new("Frame")

local Title = Instance.new("TextLabel")

local Coin = Instance.new("TextButton")

local MSEsp = Instance.new("TextButton")

local MSESPActive = Instance.new("TextLabel")

local PlayersEsp = Instance.new("TextButton")

local PlayersEspActive = Instance.new("TextLabel")

local EspOff = Instance.new("TextButton")

local EspOffActive = Instance.new("TextLabel")

local Run = Instance.new("TextButton")

local RunActiveGui = Instance.new("TextLabel")

local Fly = Instance.new("TextButton")

local FlyActive = Instance.new("TextLabel")

local Noclip = Instance.new("TextButton")

local NoclipActive = Instance.new("TextLabel")

local GodMode = Instance.new("TextButton")

local GodModeActive = Instance.new("TextLabel")

local GuiXrayOn = Instance.new("TextButton")

local GuiXrayOnActive = Instance.new("TextLabel")

local GuiXrayOff = Instance.new("TextButton")

local GuiXrayOffActive = Instance.new("TextLabel")

local BringGun = Instance.new("TextButton")

local Keybinds = Instance.new("TextButton")

local KeybindsActive = Instance.new("TextLabel")

local Hide = Instance.new("TextButton")

local Show = Instance.new("TextButton")

--Other Variables*

local runActive = false

local teamname = "None"

local murderer = "None"

local sheriff = "None"

local player = game:GetService("Players").LocalPlayer

local esp = false

local plresp

local track = false

local NClip = false

local char = game.Players.LocalPlayer.Character

local obj = game.workspace

local mouse=game.Players.LocalPlayer:GetMouse()

local LP = game:GetService("Players").LocalPlayer

local flyvar = false

local showvar = true

local inputcode = game:GetService("UserInputService")

local godmodevar = false

local keyOff = false

local NClip = false

--Start of Gui

MM2.Name = "MM2"

MM2.Parent = LP:WaitForChild("PlayerGui")

MM2.ResetOnSpawn = false

Main.Name = "Main"

Main.Parent = MM2

Main.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)

Main.BorderColor3 = Color3.new(0, 0.607843, 1)

Main.BorderSizePixel = 5

Main.Draggable = true

Main.Position = UDim2.new(0.574999988, 0, 0.349999994, 0)

Main.Size = UDim2.new(0.2, 0, 0.4, 0)

Main.Visible = true

Main.Active = true

Title.Name = "Title"

Title.Parent = Main

Title.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)

Title.BorderColor3 = Color3.new(0, 0.607843, 1) 

Title.BorderSizePixel = 5

Title.Draggable = true

Title.Size = UDim2.new(1.005, 0, 0.2, 0)

Title.ZIndex = 3

Title.Font = Enum.Font.SciFi

Title.FontSize = Enum.FontSize.Size24

Title.Text = "BluePeak Studios"

Title.TextColor3 = Color3.new(0, 0.607843, 1)

Title.TextScaled = true

Title.TextSize = 20

Title.TextStrokeColor3 = Color3.new(0.129412, 0.54902, 1)

Title.TextWrapped = true

--Start of functions for buttons

function Create(base, team, colors1, colors2, colors3, teamname) --For all esps*

    local bb = Instance.new("BillboardGui",player.PlayerGui)

    bb.Adornee = base

    bb.ExtentsOffset = Vector3.new(0,1,0)

    bb.AlwaysOnTop = true

    bb.Size = UDim2.new(0,5,0,5)

    bb.StudsOffset = Vector3.new(0,1,0)

    bb.Name = "tracker"

    local frame = Instance.new("Frame",bb)

    frame.ZIndex = 10

    frame.BackgroundTransparency = 0.3

    frame.Size = UDim2.new(1,0,1,0)

    local txtlbl = Instance.new("TextLabel",bb)

    txtlbl.ZIndex = 10

    txtlbl.Text = teamname

    txtlbl.BackgroundTransparency = 1

    txtlbl.Position = UDim2.new(0,0,0,-35)

    txtlbl.Size = UDim2.new(1,0,10,0)

    txtlbl.Font = "ArialBold"

    txtlbl.FontSize = "Size12"

    txtlbl.TextStrokeTransparency = 0.5

    if team then --For teams, left over from origianl but never removed*

        txtlbl.TextColor3 = Color3.new(0,0,255)

        frame.BackgroundColor3 = Color3.new(0,0,255)

    else

        txtlbl.TextColor3 = Color3.new(colors1,colors2,colors3)

        frame.BackgroundColor3 = Color3.new(colors1,colors2,colors3)

    end

end

function findmurderer() --Find who the murderer is*

    local colors1 = 255

    local colors2 = 0

    local colors3 = 0

    for i, v in pairs(game:GetService("Players"):GetChildren()) do

        if v ~= game:GetService("Players").LocalPlayer then

            for i,v in pairs(v.Backpack:GetChildren()) do --Checks backpack for knife*

                if v.Name == "Knife" then

                    if espnames == true then

                        local teamname = v.Parent.Parent.Name

                        if v.Parent.Parent.Character.Head ~= nil then

                            Create(v.Parent.Parent.Character.Head, false, colors1 ,colors2, colors3, teamname)

                        else

                            if printvar == true then

                                print("Head missing from murderer!")

                            end

                        end

                    elseif espnames == false then

                        local teamname = "Murderer"

                        if v.Parent.Parent.Character.Head ~= nil then

                            Create(v.Parent.Parent.Character.Head, false, colors1 ,colors2, colors3, teamname)

                        else

                            if printvar == true then

                                print("Head missing from murderer!")

                            end

                        end

                    end

                    murderer = v.Parent.Parent.Name

                    if printvar == true then

                        print(murderer.." is Murderer")

                    end

                end

            end

            for i,v in pairs(v.Character:GetChildren()) do --Checks workspace player for knife (holding it)*

                if v.Name == "Knife" then

                    if espnames == true then

                        local teamname = v.Parent.Name

                        if v.Parent.Head ~= nil then --Tried to failproof to stop printing nil*

                            Create(v.Parent.Head, false, colors1 ,colors2, colors3, teamname)

                        else

                            if printvar == true then

                                print("Head missing from murderer!")

                            end

                        end

                    elseif espnames == false then

                        local teamname = "Murderer"

                        if v.Parent.Head ~= nil then

                            Create(v.Parent.Head, false, colors1 ,colors2, colors3, teamname)

                        else

                            if printvar == true then

                                print("Head missing from murderer!")

                            end

                        end

                    end

                    murderer = v.Parent.Name

                    if printvar == true then --Tried to failproof to stop printing nil*

                        local murderer1 = tostring(v.Parent.Name)

                        print(murderer1.." is Murderer")

                    end

                end

            end

        end

    end

end

function findsheriff() --Find who the sheriff is*

    local colors1 = 0

    local colors2 = 0

    local colors3 = 255

    for i, v in pairs(game:GetService("Players"):GetChildren()) do

        if v ~= game:GetService("Players").LocalPlayer then

            for i,v in pairs(v.Backpack:GetChildren()) do

                if v.Name == "Revolver" or v.Name == "Gun" then --Lazy to check if its revolver or gun and checks backpack for gun*

                    if espnames == true then

                        local teamname = v.Parent.Parent.Name

                        if v.Parent.Parent.Character.Head ~= nil then --Tried to failproof to stop printing nil*

                            Create(v.Parent.Parent.Character.Head, false, colors1 ,colors2, colors3, teamname)

                        else

                            if printvar == true then

                                print("Head missing from sheriff!")

                            end

                        end

                    elseif espnames == false then

                        local teamname = "Sheriff"

                        if v.Parent.Parent.Character.Head ~= nil then --Tried to failproof to stop printing nil*

                            Create(v.Parent.Parent.Character.Head, false, colors1 ,colors2, colors3, teamname)

                        else

                            if printvar == true then

                                print("Head missing from sheriff!")

                            end

                        end

                    end

                    sheriff = v.Parent.Parent.Name

                    if printvar == true then

                        local sheriff1 = tostring(v.Parent.Parent.Name)

                        print(sheriff1.." is Sheriff")

                    end

                end

            end

            for i,v in pairs(v.Character:GetChildren()) do

                if v.Name == "Revolver" or v.Name == "Gun" then --Lazy to check if its revolver or gun and checks workspace player for gun (holding it)*

                    if espnames == true then

                        local teamname = v.Parent.Name

                        if v.Parent.Head ~= nil then --Tried to failproof to stop printing nil*

                            Create(v.Parent.Head, false, colors1 ,colors2, colors3, teamname)

                        else

                            if printvar == true then

                                print("Head missing from sheriff!")

                            end

                        end

                    elseif espnames == false then

                        local teamname = "Sheriff"

                        if v.Parent.Head ~= nil then --Tried to failproof to stop printing nil*

                            Create(v.Parent.Head, false, colors1 ,colors2, colors3, teamname)

                        else

                            if printvar == true then

                                print("Head missing from sheriff!")

                            end

                        end

                    end

                    sheriff = v.Parent.Name

                    if printvar == true then

                        local sheriff1 = tostring(v.Parent.Name)

                        print(sheriff1.." is Sheriff")

                    end

                end

            end

        end

    end

end

function findplayers() --Find all players but local player*

    findmurderer() --Finds murderer*

    findsheriff() --Finds sheriff*

    local colors1 = 0

    local colors2 = 255

    local colors3 = 0

    for i, v in pairs(game:GetService("Players"):GetChildren()) do

        if v ~= game:GetService("Players").LocalPlayer then --If not local player*

            if v.Name ~= murderer then --If not murderer*

                if v.Name ~= sheriff then --If not sheriff*

                    if espnames == true then

                        local teamname = v.Name

                        if v.Character.Head ~= nil then --Tried to failproof to stop printing nil*

                            Create(v.Character.Head, false, colors1 ,colors2, colors3, teamname)

                        else

                            if printvar == true then

                                print("Head missing from sheriff!")

                            end

                        end

                    elseif espnames == false then

                        local teamname = "Innocents"

                        if v.Parent.Head ~= nil then --Tried to failproof to stop printing nil*

                            Create(v.Character.Head, false, colors1 ,colors2, colors3, teamname)

                        else

                            if printvar == true then

                                print("Head missing from sheriff!")

                            end

                        end

                    end

                end

            end

        end

    end

end

function Clear() --Clears all the esps*

    for _,v in pairs(player.PlayerGui:children()) do

        if v.Name == "tracker" and v:isA("BillboardGui") then

            v:Destroy()

        end

    end

end

function XrayOn(obj) --Enables xray*

    for _,v in pairs(obj:GetChildren()) do 

        if (v:IsA("BasePart")) and not v.Parent:FindFirstChild("Humanoid") then

            v.LocalTransparencyModifier = 0.75

        end

    XrayOn(v) 

    end

end 

function XrayOff(obj) --Disables xray*

    for _,v in pairs(obj:GetChildren()) do

        if (v:IsA("BasePart")) and not v.Parent:FindFirstChild("Humanoid") then

            v.LocalTransparencyModifier = 0

        end XrayOff(v)

    end

end

function sFLY() --Fly function*

    repeat wait() until LP and LP.Character and LP.Character:FindFirstChild('Torso') and LP.Character:FindFirstChild('Humanoid')

    repeat wait() until mouse

    local T = LP.Character.Torso

    local CONTROL = {F = 0, B = 0, L = 0, R = 0}

    local lCONTROL = {F = 0, B = 0, L = 0, R = 0}

    local SPEED = 0

    local function FLY()

        FLYING = true

        local BG = Instance.new('BodyGyro', T)

        local BV = Instance.new('BodyVelocity', T)

        BG.P = 9e4

        BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)

        BG.cframe = T.CFrame

        BV.velocity = Vector3.new(0, 0.1, 0)

        BV.maxForce = Vector3.new(9e9, 9e9, 9e9)

        spawn(function()

            repeat wait()

                LP.Character.Humanoid.PlatformStand = true

                if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then

                    SPEED = 50

                elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then

                    SPEED = 0

                end

                if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then

                    BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED

                    lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}

                elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then

                    BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED

                else

                    BV.velocity = Vector3.new(0, 0.1, 0)

                end

                BG.cframe = workspace.CurrentCamera.CoordinateFrame

            until not FLYING

            CONTROL = {F = 0, B = 0, L = 0, R = 0}

            lCONTROL = {F = 0, B = 0, L = 0, R = 0}

            SPEED = 0

            BG:destroy()

            BV:destroy()

            LP.Character.Humanoid.PlatformStand = false

        end)

    end

    mouse.KeyDown:connect(function(KEY)

        if KEY:lower() == 'w' then

            CONTROL.F = 1

        elseif KEY:lower() == 's' then

            CONTROL.B = -1

        elseif KEY:lower() == 'a' then

            CONTROL.L = -1 

        elseif KEY:lower() == 'd' then 

            CONTROL.R = 1

        end

    end)

    mouse.KeyUp:connect(function(KEY)

        if KEY:lower() == 'w' then

            CONTROL.F = 0

        elseif KEY:lower() == 's' then

            CONTROL.B = 0

        elseif KEY:lower() == 'a' then

            CONTROL.L = 0

        elseif KEY:lower() == 'd' then

            CONTROL.R = 0

        end

    end)

    FLY()

end

function NOFLY() --Unfly function*

    FLYING = false

    LP.Character.Humanoid.PlatformStand = false

end

local noclipcoro = coroutine.wrap(function() --Noclip function*

    while true do

        if NClip == true then

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

noclipcoro() --For noclip to work*

game:GetService("Players").LocalPlayer.CharacterAdded:connect(function(character) --Resets specific things for ease*

    flyvar = false

    FlyActive.Text = "Inactive"

    FlyActive.TextColor3 = Color3.new(1, 0, 1)

    godmodevar = false

    GodModeActive.Text = "Inactive"

    GodModeActive.TextColor3 = Color3.new(1, 0, 1)

    Clear()

    MSESPActive.Text = "Inactive"

    MSESPActive.TextColor3 = Color3.new(1, 0, 1)

    PlayersEspActive.Text = "Inactive"

    PlayersEspActive.TextColor3 = Color3.new(1, 0, 1)

    EspOffActive.Text = "Active"

    EspOffActive.TextColor3 = Color3.new(0, 1, 0)

end)

mouse.KeyDown:connect(function(KeyDown) --If shift is held, run*

    if KeyDown == "0" and runActive == false and keyOff == false then

        runActive = true

        player.Character.Humanoid.WalkSpeed = 32

        RunActiveGui.Text = "Active"

        RunActiveGui.TextColor3 = Color3.new(0, 1, 0)

    end

end)

mouse.KeyUp:connect(function(KeyUp) --If shift is released, walk*

    if KeyUp == "0" and runActive == true and keyOff == false then

        runActive = false

        player.Character.Humanoid.WalkSpeed = 16

        RunActiveGui.Text = "Inactive"

        RunActiveGui.TextColor3 = Color3.new(1, 0, 1)

    end

end)

function coingrabberfunc() --Coin grabber function*

    local children = game.Workspace:GetChildren()

    for _, child in pairs(children) do

        for _, child in pairs(child:GetChildren()) do

            table.insert(children, child)

         end

         if child:IsA("BasePart") and child.Name == "Coin" then

            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

        end

    end

end

function godmodefunc() --Godmode function*

    local player = game.Players.LocalPlayer

    if player.Character then

        if player.Character:FindFirstChild("Humanoid") then

            player.Character.Humanoid.Name = "1"

        end

        local l = player.Character["1"]:Clone()

        l.Parent = player.Character

        l.Name = "Humanoid"; wait(0.1)

        player.Character["1"]:Destroy()

        workspace.CurrentCamera.CameraSubject = player.Character.Humanoid

        player.Character.Animate.Disabled = true; wait(0.1)

        player.Character.Animate.Disabled = false

    end

end

--Coin Grabber

Coin.Name = "CoinGrabber"

Coin.Parent = Main

Coin.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)

Coin.BorderColor3 = Color3.new(0, 0.607843, 1)

Coin.BorderSizePixel = 5

Coin.Position = UDim2.new(0, 0, 0.215, 0)

Coin.Size = UDim2.new(1.005, 0, 0.08, 0)

Coin.ZIndex = 4

Coin.Font = Enum.Font.SciFi

Coin.FontSize = Enum.FontSize.Size24

Coin.Text = "Coin Grabber ["..string.upper(coinkey).."]"

Coin.TextColor3 = Color3.fromRGB(255, 255, 26)

Coin.TextSize = 20

Coin.TextWrapped = true

Coin.Activated:Connect(function(x, y)

    coingrabberfunc()

end)

--Murderer/Sheriff Esp

MSESPActive.Name = "MSEspActive"

MSESPActive.Parent = Main

MSESPActive.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)

MSESPActive.BorderColor3 = Color3.new(0, 0.607843, 1)

MSESPActive.BorderSizePixel = 5

MSESPActive.Position = UDim2.new(0.755, 0, 0.315, 0)

MSESPActive.Size = UDim2.new(0.25, 0, 0.08, 0)

MSESPActive.ZIndex = 4

MSESPActive.Font = Enum.Font.SciFi

MSESPActive.FontSize = Enum.FontSize.Size24

MSESPActive.Text = "Inactive"

MSESPActive.TextColor3 = Color3.new(1, 0, 1)

MSESPActive.TextSize = 20

MSESPActive.TextWrapped = true

MSEsp.Name = "MSEsp"

MSEsp.Parent = Main

MSEsp.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)

MSEsp.BorderColor3 = Color3.new(0, 0.607843, 1)

MSEsp.BorderSizePixel = 5

MSEsp.Position = UDim2.new(0, 0, 0.315, 0)

MSEsp.Size = UDim2.new(0.75, 0, 0.08, 0)

MSEsp.ZIndex = 4

MSEsp.Font = Enum.Font.SciFi

MSEsp.FontSize = Enum.FontSize.Size24

MSEsp.Text = "Murderer/Sheriff Esp ["..string.upper(MSkey).."]"

MSEsp.TextColor3 = Color3.fromRGB(255, 102, 255)

MSEsp.TextSize = 20

MSEsp.TextWrapped = true

MSEsp.Activated:Connect(function(x, y)

    murderer = "None"

    sheriff = "None"

    Clear()

    findmurderer()

    findsheriff()

    if printvar == true then

        print("Murderer/Sheriff")

    end

    MSESPActive.Text = "Active"

    MSESPActive.TextColor3 = Color3.new(0, 1, 0)

    PlayersEspActive.Text = "Inactive"

    PlayersEspActive.TextColor3 = Color3.new(1, 0, 1)

    EspOffActive.Text = "Inactive"

    EspOffActive.TextColor3 = Color3.new(1, 0, 1)

end)

--All Players Esp*

PlayersEspActive.Name = "PlayersEspActive"

PlayersEspActive.Parent = Main

PlayersEspActive.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)

PlayersEspActive.BorderColor3 = Color3.new(0, 0.607843, 1)

PlayersEspActive.BorderSizePixel = 5

PlayersEspActive.Position = UDim2.new(0.755, 0, 0.415, 0)

PlayersEspActive.Size = UDim2.new(0.25, 0, 0.08, 0)

PlayersEspActive.ZIndex = 4

PlayersEspActive.Font = Enum.Font.SciFi

PlayersEspActive.FontSize = Enum.FontSize.Size24

PlayersEspActive.Text = "Inactive"

PlayersEspActive.TextColor3 = Color3.new(1, 0, 1)

PlayersEspActive.TextSize = 20

PlayersEspActive.TextWrapped = true

PlayersEsp.Name = "PlayersEsp"

PlayersEsp.Parent = Main

PlayersEsp.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)

PlayersEsp.BorderColor3 = Color3.new(0, 0.607843, 1)

PlayersEsp.BorderSizePixel = 5

PlayersEsp.Position = UDim2.new(0, 0, 0.415, 0)

PlayersEsp.Size = UDim2.new(0.75, 0, 0.08, 0)

PlayersEsp.ZIndex = 4

PlayersEsp.Font = Enum.Font.SciFi

PlayersEsp.FontSize = Enum.FontSize.Size24

PlayersEsp.Text = "All Players Esp ["..string.upper(playerskey).."]"

PlayersEsp.TextColor3 = Color3.fromRGB(102, 255, 51)

PlayersEsp.TextSize = 20

PlayersEsp.TextWrapped = true

PlayersEsp.Activated:Connect(function(x, y)

    Clear()

    if printvar == true then

        print("Players Esp")

    end

    MSESPActive.Text = "Inactive"

    MSESPActive.TextColor3 = Color3.new(1, 0, 1)

    PlayersEspActive.Text = "Active"

    PlayersEspActive.TextColor3 = Color3.new(0, 1, 0)

    EspOffActive.Text = "Inactive"

    EspOffActive.TextColor3 = Color3.new(1, 0, 1)

    findplayers()

end)

--Esp Off*

EspOffActive.Name = "EspOffActive"

EspOffActive.Parent = Main

EspOffActive.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)

EspOffActive.BorderColor3 = Color3.new(0, 0.607843, 1)

EspOffActive.BorderSizePixel = 5

EspOffActive.Position = UDim2.new(0.755, 0, 0.515, 0)

EspOffActive.Size = UDim2.new(0.25, 0, 0.08, 0)

EspOffActive.ZIndex = 4

EspOffActive.Font = Enum.Font.SciFi

EspOffActive.FontSize = Enum.FontSize.Size24

EspOffActive.Text = "Active"

EspOffActive.TextColor3 = Color3.new(0, 1, 0)

EspOffActive.TextSize = 20

EspOffActive.TextWrapped = true

EspOff.Name = "EspOff"

EspOff.Parent = Main

EspOff.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)

EspOff.BorderColor3 = Color3.new(0, 0.607843, 1)

EspOff.BorderSizePixel = 5

EspOff.Position = UDim2.new(0, 0, 0.515, 0)

EspOff.Size = UDim2.new(0.75, 0, 0.08, 0)

EspOff.ZIndex = 4

EspOff.Font = Enum.Font.SciFi

EspOff.FontSize = Enum.FontSize.Size24

EspOff.Text = "Esp Off ["..string.upper(espoffkey).."]"

EspOff.TextColor3 = Color3.fromRGB(255, 255, 255)

EspOff.TextSize = 20

EspOff.TextWrapped = true

EspOff.Activated:Connect(function(x, y)

    Clear()

    if printvar == true then

        print("Esp Off")

    end

    MSESPActive.Text = "Inactive"

    MSESPActive.TextColor3 = Color3.new(1, 0, 1)

    PlayersEspActive.Text = "Inactive"

    PlayersEspActive.TextColor3 = Color3.new(1, 0, 1)

    EspOffActive.Text = "Active"

    EspOffActive.TextColor3 = Color3.new(0, 1, 0)

end)

--Run*

RunActiveGui.Name = "RunActiveGui"

RunActiveGui.Parent = Main

RunActiveGui.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)

RunActiveGui.BorderColor3 = Color3.new(0, 0.607843, 1)

RunActiveGui.BorderSizePixel = 5

RunActiveGui.Position = UDim2.new(0.755, 0, 0.615, 0)

RunActiveGui.Size = UDim2.new(0.25, 0, 0.08, 0)

RunActiveGui.ZIndex = 4

RunActiveGui.Font = Enum.Font.SciFi

RunActiveGui.FontSize = Enum.FontSize.Size24

RunActiveGui.Text = "Inactive"

RunActiveGui.TextColor3 = Color3.new(1, 0, 1)

RunActiveGui.TextSize = 20

RunActiveGui.TextWrapped = true

Run.Name = "Run"

Run.Parent = Main

Run.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)

Run.BorderColor3 = Color3.new(0, 0.607843, 1)

Run.BorderSizePixel = 5

Run.Position = UDim2.new(0, 0, 0.615, 0)

Run.Size = UDim2.new(0.75, 0, 0.08, 0)

Run.ZIndex = 4

Run.Font = Enum.Font.SciFi

Run.FontSize = Enum.FontSize.Size24

Run.Text = "Run [Shift]"

Run.TextColor3 = Color3.fromRGB(255, 51, 0)

Run.TextSize = 20

Run.TextWrapped = true

Run.Activated:Connect(function(x, y)

    if runActive == false then

        runActive = true

        player.Character.Humanoid.WalkSpeed = 32

        RunActiveGui.Text = "Active"

        RunActiveGui.TextColor3 = Color3.new(0, 1, 0)

    elseif runActive == true then

        runActive = false

        player.Character.Humanoid.WalkSpeed = 16

        RunActiveGui.Text = "Inactive"

        RunActiveGui.TextColor3 = Color3.new(1, 0, 1)

    end

end)

--Fly*

FlyActive.Name = "FlyActive"

FlyActive.Parent = Main

FlyActive.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)

FlyActive.BorderColor3 = Color3.new(0, 0.607843, 1)

FlyActive.BorderSizePixel = 5

FlyActive.Position = UDim2.new(0.755, 0, 0.715, 0)

FlyActive.Size = UDim2.new(0.25, 0, 0.08, 0)

FlyActive.ZIndex = 4

FlyActive.Font = Enum.Font.SciFi

FlyActive.FontSize = Enum.FontSize.Size24

FlyActive.Text = "Inactive"

FlyActive.TextColor3 = Color3.new(1, 0, 1)

FlyActive.TextSize = 20

FlyActive.TextWrapped = true

Fly.Name = "Fly"

Fly.Parent = Main

Fly.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)

Fly.BorderColor3 = Color3.new(0, 0.607843, 1)

Fly.BorderSizePixel = 5

Fly.Position = UDim2.new(0, 0, 0.715, 0)

Fly.Size = UDim2.new(0.75, 0, 0.08, 0)

Fly.ZIndex = 4

Fly.Font = Enum.Font.SciFi

Fly.FontSize = Enum.FontSize.Size24

Fly.Text = "Fly ["..string.upper(flykey).."]"

Fly.TextColor3 = Color3.fromRGB(204, 255, 255)

Fly.TextSize = 20

Fly.TextWrapped = true

Fly.Activated:Connect(function(x, y)

    if flyvar == false then

        sFLY()

        flyvar = true

        FlyActive.Text = "Active"

        FlyActive.TextColor3 = Color3.new(0, 1, 0)

    elseif flyvar == true then

        flyvar = false

        NOFLY()

        FlyActive.Text = "Inactive"

        FlyActive.TextColor3 = Color3.new(1, 0, 1)

    end

end)

--Noclip*

NoclipActive.Name = "NoclipActive"

NoclipActive.Parent = Main

NoclipActive.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)

NoclipActive.BorderColor3 = Color3.new(0, 0.607843, 1)

NoclipActive.BorderSizePixel = 5

NoclipActive.Position = UDim2.new(0.755, 0, 0.815, 0)

NoclipActive.Size = UDim2.new(0.25, 0, 0.08, 0)

NoclipActive.ZIndex = 4

NoclipActive.Font = Enum.Font.SciFi

NoclipActive.FontSize = Enum.FontSize.Size24

NoclipActive.Text = "Inactive"

NoclipActive.TextColor3 = Color3.new(1, 0, 1)

NoclipActive.TextSize = 20

NoclipActive.TextWrapped = true

Noclip.Name = "Noclip"

Noclip.Parent = Main

Noclip.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)

Noclip.BorderColor3 = Color3.new(0, 0.607843, 1)

Noclip.BorderSizePixel = 5

Noclip.Position = UDim2.new(0, 0, 0.815, 0)

Noclip.Size = UDim2.new(0.75, 0, 0.08, 0)

Noclip.ZIndex = 4

Noclip.Font = Enum.Font.SciFi

Noclip.FontSize = Enum.FontSize.Size24

Noclip.Text = "Noclip ["..string.upper(noclipkey).."]"

Noclip.TextColor3 = Color3.fromRGB(0, 102, 255)

Noclip.TextSize = 20

Noclip.TextWrapped = true

Noclip.Activated:Connect(function(x, y)

    if NClip == false then

        NClip = true

        if printvar == true then

            print("Noclip Enabled")

        end

        NoclipActive.Text = "Active"

        NoclipActive.TextColor3 = Color3.new(0, 1, 0)

    elseif NClip == true then

        NClip = false

        if printvar == true then

            print("Noclip Disabled")

        end

        NoclipActive.Text = "Inactive"

        NoclipActive.TextColor3 = Color3.new(1, 0, 1)

    end

end)

--GodMode*

GodModeActive.Name = "GodModeActive"

GodModeActive.Parent = Main

GodModeActive.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)

GodModeActive.BorderColor3 = Color3.new(0, 0.607843, 1)

GodModeActive.BorderSizePixel = 5

GodModeActive.Position = UDim2.new(0.755, 0, 0.915, 0)

GodModeActive.Size = UDim2.new(0.25, 0, 0.08, 0)

GodModeActive.ZIndex = 4

GodModeActive.Font = Enum.Font.SciFi

GodModeActive.FontSize = Enum.FontSize.Size24

GodModeActive.Text = "Inactive"

GodModeActive.TextColor3 = Color3.new(1, 0, 1)

GodModeActive.TextSize = 20

GodModeActive.TextWrapped = true

GodMode.Name = "GodMode"

GodMode.Parent = Main

GodMode.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)

GodMode.BorderColor3 = Color3.new(0, 0.607843, 1)

GodMode.BorderSizePixel = 5

GodMode.Position = UDim2.new(0, 0, 0.915, 0)

GodMode.Size = UDim2.new(0.75, 0, 0.08, 0)

GodMode.ZIndex = 4

GodMode.Font = Enum.Font.SciFi

GodMode.FontSize = Enum.FontSize.Size24

GodMode.Text = "God Mode ["..string.upper(godmodekey).."]"

GodMode.TextColor3 = Color3.fromRGB(255, 255, 255)

GodMode.TextSize = 20

GodMode.TextWrapped = true

GodMode.Activated:Connect(function(x, y)

    if godmodevar == false then

        GodModeActive.Text = "Active"

        GodModeActive.TextColor3 = Color3.new(0, 1, 0)

        godmodevar = true

        godmodefunc()

    end

end)

--Xray On*

GuiXrayOnActive.Name = "GuiXrayOnActive"

GuiXrayOnActive.Parent = Main

GuiXrayOnActive.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)

GuiXrayOnActive.BorderColor3 = Color3.new(0, 0.607843, 1)

GuiXrayOnActive.BorderSizePixel = 5

GuiXrayOnActive.Position = UDim2.new(0.755, 0, 1.015, 0)

GuiXrayOnActive.Size = UDim2.new(0.25, 0, 0.08, 0)

GuiXrayOnActive.ZIndex = 4

GuiXrayOnActive.Font = Enum.Font.SciFi

GuiXrayOnActive.FontSize = Enum.FontSize.Size24

GuiXrayOnActive.Text = "Inactive"

GuiXrayOnActive.TextColor3 = Color3.new(1, 0, 1)

GuiXrayOnActive.TextSize = 20

GuiXrayOnActive.TextWrapped = true

GuiXrayOn.Name = "XrayOn"

GuiXrayOn.Parent = Main

GuiXrayOn.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)

GuiXrayOn.BorderColor3 = Color3.new(0, 0.607843, 1)

GuiXrayOn.BorderSizePixel = 5

GuiXrayOn.Position = UDim2.new(0, 0, 1.015, 0)

GuiXrayOn.Size = UDim2.new(0.75, 0, 0.08, 0)

GuiXrayOn.ZIndex = 4

GuiXrayOn.Font = Enum.Font.SciFi

GuiXrayOn.FontSize = Enum.FontSize.Size24

GuiXrayOn.Text = "Xray On ["..string.upper(xrayonkey).."]"

GuiXrayOn.TextColor3 = Color3.fromRGB(255, 204, 102)

GuiXrayOn.TextSize = 20

GuiXrayOn.TextWrapped = true

GuiXrayOn.Activated:Connect(function(x, y)

    GuiXrayOnActive.Text = "Active"

    GuiXrayOnActive.TextColor3 = Color3.new(0, 1, 0)

    GuiXrayOffActive.Text = "Inactive"

    GuiXrayOffActive.TextColor3 = Color3.new(1, 0, 1)

    XrayOn(obj)

end)

--Xray Off*

GuiXrayOffActive.Name = "GuiXrayOffActive"

GuiXrayOffActive.Parent = Main

GuiXrayOffActive.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)

GuiXrayOffActive.BorderColor3 = Color3.new(0, 0.607843, 1)

GuiXrayOffActive.BorderSizePixel = 5

GuiXrayOffActive.Position = UDim2.new(0.755, 0, 1.115, 0)

GuiXrayOffActive.Size = UDim2.new(0.25, 0, 0.08, 0)

GuiXrayOffActive.ZIndex = 4

GuiXrayOffActive.Font = Enum.Font.SciFi

GuiXrayOffActive.FontSize = Enum.FontSize.Size24

GuiXrayOffActive.Text = "Active"

GuiXrayOffActive.TextColor3 = Color3.new(0, 1, 0)

GuiXrayOffActive.TextSize = 20

GuiXrayOffActive.TextWrapped = true

GuiXrayOff.Name = "XrayOff"

GuiXrayOff.Parent = Main

GuiXrayOff.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)

GuiXrayOff.BorderColor3 = Color3.new(0, 0.607843, 1)

GuiXrayOff.BorderSizePixel = 5

GuiXrayOff.Position = UDim2.new(0, 0, 1.115, 0)

GuiXrayOff.Size = UDim2.new(0.75, 0, 0.08, 0)

GuiXrayOff.ZIndex = 4

GuiXrayOff.Font = Enum.Font.SciFi

GuiXrayOff.FontSize = Enum.FontSize.Size24

GuiXrayOff.Text = "Xray Off ["..string.upper(xrayoffkey).."]"

GuiXrayOff.TextColor3 = Color3.fromRGB(255, 153, 51)

GuiXrayOff.TextSize = 20

GuiXrayOff.TextWrapped = true

GuiXrayOff.Activated:Connect(function(x, y)

    GuiXrayOnActive.Text = "Inactive"

    GuiXrayOnActive.TextColor3 = Color3.new(1, 0, 1)

    GuiXrayOffActive.Text = "Active"

    GuiXrayOffActive.TextColor3 = Color3.new(0, 1, 0)

    XrayOff(obj)

end)

--Bring Gun to You*

BringGun.Name = "BringGun"

BringGun.Parent = Main

BringGun.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)

BringGun.BorderColor3 = Color3.new(0, 0.607843, 1)

BringGun.BorderSizePixel = 5

BringGun.Position = UDim2.new(0, 0, 1.215, 0)

BringGun.Size = UDim2.new(1.005, 0, 0.08, 0)

BringGun.ZIndex = 4

BringGun.Font = Enum.Font.SciFi

BringGun.FontSize = Enum.FontSize.Size24

BringGun.Text = "Teleport Gun ["..string.upper(bringgunkey).."]"

BringGun.TextColor3 = Color3.fromRGB(0, 255, 0)

BringGun.TextSize = 20

BringGun.TextWrapped = true

BringGun.Activated:Connect(function(x, y)

    if game.Workspace.GunDrop.CFrame ~= nil then

        game.Workspace.GunDrop.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame

    else

        if printvar == true then

            print("Gun not currently dropped")

        end

    end

end)

--Keybinds*

KeybindsActive.Name = "KeybindsActive"

KeybindsActive.Parent = Main

KeybindsActive.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)

KeybindsActive.BorderColor3 = Color3.new(0, 0.607843, 1)

KeybindsActive.BorderSizePixel = 5

KeybindsActive.Position = UDim2.new(0.755, 0, 1.315, 0)

KeybindsActive.Size = UDim2.new(0.25, 0, 0.08, 0)

KeybindsActive.ZIndex = 4

KeybindsActive.Font = Enum.Font.SciFi

KeybindsActive.FontSize = Enum.FontSize.Size24

KeybindsActive.Text = "Active"

KeybindsActive.TextColor3 = Color3.new(0, 1, 0)

KeybindsActive.TextSize = 20

KeybindsActive.TextWrapped = true

Keybinds.Name = "Keybinds"

Keybinds.Parent = Main

Keybinds.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)

Keybinds.BorderColor3 = Color3.new(0, 0.607843, 1)

Keybinds.BorderSizePixel = 5

Keybinds.Position = UDim2.new(0, 0, 1.315, 0)

Keybinds.Size = UDim2.new(0.75, 0, 0.08, 0)

Keybinds.ZIndex = 4

Keybinds.Font = Enum.Font.SciFi

Keybinds.FontSize = Enum.FontSize.Size24

Keybinds.Text = "Keybinds [Ctrl]"

Keybinds.TextColor3 = Color3.fromRGB(255, 255, 255)

Keybinds.TextSize = 20

Keybinds.TextWrapped = true

Keybinds.Activated:Connect(function(x, y)

    if keyOff == true then

        keyOff = false

        KeybindsActive.Text = "Active"

        KeybindsActive.TextColor3 = Color3.new(0, 1, 0)

    elseif keyOff == false then

        keyOff = true

        KeybindsActive.Text = "Inactive"

        KeybindsActive.TextColor3 = Color3.new(1, 0, 1)

    end

end)

Show.Name = "Show"

Show.Parent = MM2

Show.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)

Show.BorderColor3 = Color3.new(0, 0.607843, 1)

Show.BorderSizePixel = 5

Show.Position = UDim2.new(0, 0, 0.85799998, 0)

Show.Size = UDim2.new(0.08, 0, 0.04, 0)

Show.ZIndex = 4

Show.Font = Enum.Font.SciFi

Show.FontSize = Enum.FontSize.Size24

Show.Text = "Show ["..string.upper(hideshowguikey).."]"

Show.TextColor3 = Color3.new(0, 0.333333, 1)

Show.TextSize = 20

Show.TextWrapped = true

Show.Visible = false

Hide.Name = "Hide"

Hide.Parent = Main

Hide.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)

Hide.BorderColor3 = Color3.new(0, 0.607843, 1)

Hide.BorderSizePixel = 5

Hide.Position = UDim2.new(0, 0, 1.415, 0)

Hide.Size = UDim2.new(1.005, 0, 0.08, 0)

Hide.ZIndex = 4

Hide.Font = Enum.Font.SciFi

Hide.FontSize = Enum.FontSize.Size24

Hide.Text = "Hide ["..string.upper(hideshowguikey).."]"

Hide.TextColor3 = Color3.new(0, 0.333333, 1)

Hide.TextSize = 20

Hide.TextWrapped = true

Hide.Activated:Connect(function(x, y)

    if showvar == true then

        showvar = false

        Main.Visible = false

        Show.Visible = true

        if printvar == true then

            print("Hidden")

        end

    end

end)

Show.Activated:Connect(function(x, y)

    if showvar == false then

        showvar = true

        Show.Visible = false

        Main.Visible = true

        if printvar == true then

            print("Shown")

        end

    end

end)

inputcode.InputBegan:connect(function(input)

    if input.KeyCode == Enum.KeyCode.LeftControl then

        if keyOff == true then

            keyOff = false

            KeybindsActive.Text = "Active"

            KeybindsActive.TextColor3 = Color3.new(0, 1, 0)

        elseif keyOff == false then

            keyOff = true

            KeybindsActive.Text = "Inactive"

            KeybindsActive.TextColor3 = Color3.new(1, 0, 1)

        end

    end

end)

mouse.keyDown:connect(function(key)

    if keyOff == false then

        if key == coinkey then --Coin Grabber*

            coingrabberfunc()

        elseif key == MSkey then --Murderer/Sheriff Esp On*

            murderer = "None"

            sheriff = "None"

            Clear()

            findmurderer()

            findsheriff()

            if printvar == true then

                print("Murderer/Sheriff")

            end

            MSESPActive.Text = "Active"

            MSESPActive.TextColor3 = Color3.new(0, 1, 0)

            PlayersEspActive.Text = "Inactive"

            PlayersEspActive.TextColor3 = Color3.new(1, 0, 1)

            EspOffActive.Text = "Inactive"

            EspOffActive.TextColor3 = Color3.new(1, 0, 1)

        elseif key == playerskey then --Player Esp On*

            Clear()

            MSESPActive.Text = "Inactive"

            MSESPActive.TextColor3 = Color3.new(1, 0, 1)

            PlayersEspActive.Text = "Active"

            PlayersEspActive.TextColor3 = Color3.new(0, 1, 0)

            EspOffActive.Text = "Inactive"

            EspOffActive.TextColor3 = Color3.new(1, 0, 1)

            findplayers()

            if printvar == true then

                print("Players")

            end

        elseif key == espoffkey then --Esp off*

            Clear()

            if printvar == true then

                print("Esp Disabled")

            end

            MSESPActive.Text = "Inactive"

            MSESPActive.TextColor3 = Color3.new(1, 0, 1)

            PlayersEspActive.Text = "Inactive"

            PlayersEspActive.TextColor3 = Color3.new(1, 0, 1)

            EspOffActive.Text = "Active"

            EspOffActive.TextColor3 = Color3.new(0, 1, 0)

        elseif key == flykey then --Fly*

            if flyvar == false then

                sFLY()

                flyvar = true

                FlyActive.Text = "Active"

                FlyActive.TextColor3 = Color3.new(0, 1, 0)

            elseif flyvar == true then

                flyvar = false

                NOFLY()

                FlyActive.Text = "Inactive"

                FlyActive.TextColor3 = Color3.new(1, 0, 1)

            end

        elseif key == noclipkey then --Noclip toggle*

            if NClip == false then

                NClip = true

                if printvar == true then

                    print("Noclip Enabled")

                end

                NoclipActive.Text = "Active"

                NoclipActive.TextColor3 = Color3.new(0, 1, 0)

            elseif NClip == true then

                NClip = false

                if printvar == true then

                    print("Noclip Disabled")

                end

                NoclipActive.Text = "Inactive"

                NoclipActive.TextColor3 = Color3.new(1, 0, 1)

            end

        elseif key == godmodekey then --Godmode*

            if godmodevar == false then

                godmodevar = true

                godmodefunc()

                GodModeActive.Text = "Active"

                GodModeActive.TextColor3 = Color3.new(0, 1, 0)

            end

        elseif key == xrayonkey then --Xray On*

            GuiXrayOnActive.Text = "Active"

            GuiXrayOnActive.TextColor3 = Color3.new(0, 1, 0)

            GuiXrayOffActive.Text = "Inactive"

            GuiXrayOffActive.TextColor3 = Color3.new(1, 0, 1)

            XrayOn(obj)

        elseif key == xrayoffkey then --Xray Off*

            GuiXrayOnActive.Text = "Inactive"

            GuiXrayOnActive.TextColor3 = Color3.new(1, 0, 1)

            GuiXrayOffActive.Text = "Active"

            GuiXrayOffActive.TextColor3 = Color3.new(0, 1, 0)

            XrayOff(obj)

        elseif key == bringgunkey then --Teleport Gun to You*

            if game.Workspace.GunDrop.CFrame ~= nil then

                game.Workspace.GunDrop.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame

            else

                if printvar == true then

                    print("Gun not currently dropped")

                end

            end

        elseif key == hideshowguikey then --Show/Hide Gui*

            if showvar == false then

                showvar = true

                Show.Visible = false

                Main.Visible = true

                if printvar == true then

                    print("Shown")

                end

            elseif showvar == true then

                showvar = false

                Main.Visible = false

                Show.Visible = true

                if printvar == true then

                    print("Hidden")

                end

            end

        end

    end

end)


--// ============================================================
--// BluePeak Studios - Modern UI Layer
--// Visual overhaul only: the original feature callbacks remain intact.
--// ============================================================

local ModernUI = Instance.new("ScreenGui")
ModernUI.Name = "BluePeakModernUI"
ModernUI.ResetOnSpawn = false
ModernUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ModernUI.Parent = LP:WaitForChild("PlayerGui")

-- Hide the legacy interface; its buttons are still used as the callback layer.
Main.Visible = false
Show.Visible = false

local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local ACCENT = Color3.fromRGB(74, 144, 255)
local ACCENT_DARK = Color3.fromRGB(36, 78, 140)
local BG = Color3.fromRGB(12, 15, 22)
local PANEL = Color3.fromRGB(19, 23, 32)
local CARD = Color3.fromRGB(25, 30, 41)
local CARD_HOVER = Color3.fromRGB(31, 37, 50)
local TEXT = Color3.fromRGB(240, 244, 252)
local MUTED = Color3.fromRGB(145, 155, 173)
local ON = Color3.fromRGB(66, 211, 135)
local OFF = Color3.fromRGB(235, 91, 106)
local YELLOW = Color3.fromRGB(255, 195, 76)

local Root = Instance.new("Frame")
Root.Name = "Root"
Root.Parent = ModernUI
Root.AnchorPoint = Vector2.new(0.5, 0.5)
Root.Position = UDim2.fromScale(0.5, 0.5)
Root.Size = UDim2.fromOffset(430, 570)
Root.BackgroundColor3 = BG
Root.BorderSizePixel = 0

local RootCorner = Instance.new("UICorner")
RootCorner.CornerRadius = UDim.new(0, 16)
RootCorner.Parent = Root

local RootStroke = Instance.new("UIStroke")
RootStroke.Color = Color3.fromRGB(44, 53, 69)
RootStroke.Thickness = 1
RootStroke.Transparency = 0.15
RootStroke.Parent = Root

local Shadow = Instance.new("ImageLabel")
Shadow.Name = "Shadow"
Shadow.Parent = Root
Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
Shadow.Position = UDim2.fromScale(0.5, 0.5)
Shadow.Size = UDim2.new(1, 45, 1, 45)
Shadow.BackgroundTransparency = 1
Shadow.Image = "rbxassetid://6014261993"
Shadow.ImageColor3 = Color3.new(0, 0, 0)
Shadow.ImageTransparency = 0.55
Shadow.ScaleType = Enum.ScaleType.Slice
Shadow.SliceCenter = Rect.new(49, 49, 450, 450)
Shadow.ZIndex = -1

local Header = Instance.new("Frame")
Header.Parent = Root
Header.Size = UDim2.new(1, 0, 0, 78)
Header.BackgroundTransparency = 1

local AccentBar = Instance.new("Frame")
AccentBar.Parent = Header
AccentBar.Position = UDim2.fromOffset(20, 23)
AccentBar.Size = UDim2.fromOffset(4, 32)
AccentBar.BackgroundColor3 = ACCENT
AccentBar.BorderSizePixel = 0
Instance.new("UICorner", AccentBar).CornerRadius = UDim.new(1, 0)

local TitleModern = Instance.new("TextLabel")
TitleModern.Parent = Header
TitleModern.Position = UDim2.fromOffset(34, 16)
TitleModern.Size = UDim2.new(1, -95, 0, 30)
TitleModern.BackgroundTransparency = 1
TitleModern.Text = "BLUEPEAK STUDIOS"
TitleModern.TextColor3 = TEXT
TitleModern.Font = Enum.Font.GothamBold
TitleModern.TextSize = 19
TitleModern.TextXAlignment = Enum.TextXAlignment.Left

local Subtitle = Instance.new("TextLabel")
Subtitle.Parent = Header
Subtitle.Position = UDim2.fromOffset(34, 43)
Subtitle.Size = UDim2.new(1, -95, 0, 20)
Subtitle.BackgroundTransparency = 1
Subtitle.Text = "MM2  •  Utility Panel"
Subtitle.TextColor3 = MUTED
Subtitle.Font = Enum.Font.Gotham
Subtitle.TextSize = 12
Subtitle.TextXAlignment = Enum.TextXAlignment.Left

local Minimize = Instance.new("TextButton")
Minimize.Parent = Header
Minimize.Position = UDim2.new(1, -55, 0, 22)
Minimize.Size = UDim2.fromOffset(34, 34)
Minimize.BackgroundColor3 = CARD
Minimize.BorderSizePixel = 0
Minimize.Text = "—"
Minimize.TextColor3 = MUTED
Minimize.Font = Enum.Font.GothamBold
Minimize.TextSize = 18
Instance.new("UICorner", Minimize).CornerRadius = UDim.new(0, 9)

local Divider = Instance.new("Frame")
Divider.Parent = Root
Divider.Position = UDim2.fromOffset(18, 77)
Divider.Size = UDim2.new(1, -36, 0, 1)
Divider.BackgroundColor3 = Color3.fromRGB(42, 48, 61)
Divider.BorderSizePixel = 0

local Scroll = Instance.new("ScrollingFrame")
Scroll.Parent = Root
Scroll.Position = UDim2.fromOffset(14, 89)
Scroll.Size = UDim2.new(1, -28, 1, -103)
Scroll.BackgroundTransparency = 1
Scroll.BorderSizePixel = 0
Scroll.ScrollBarThickness = 4
Scroll.ScrollBarImageColor3 = Color3.fromRGB(63, 73, 92)
Scroll.CanvasSize = UDim2.new()
Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y

local Padding = Instance.new("UIPadding")
Padding.Parent = Scroll
Padding.PaddingLeft = UDim.new(0, 5)
Padding.PaddingRight = UDim.new(0, 5)
Padding.PaddingBottom = UDim.new(0, 12)

local Layout = Instance.new("UIListLayout")
Layout.Parent = Scroll
Layout.Padding = UDim.new(0, 8)
Layout.SortOrder = Enum.SortOrder.LayoutOrder

local order = 0
local modernButtons = {}

local function Section(text)
    order += 1
    local label = Instance.new("TextLabel")
    label.Parent = Scroll
    label.LayoutOrder = order
    label.Size = UDim2.new(1, -4, 0, 22)
    label.BackgroundTransparency = 1
    label.Text = "  " .. text
    label.TextColor3 = ACCENT
    label.Font = Enum.Font.GothamBold
    label.TextSize = 11
    label.TextXAlignment = Enum.TextXAlignment.Left
    return label
end

local function Feature(name, description, key, oldButton, statusGetter, icon)
    order += 1

    local card = Instance.new("TextButton")
    card.Name = name:gsub("%W", "") .. "Card"
    card.Parent = Scroll
    card.LayoutOrder = order
    card.Size = UDim2.new(1, -4, 0, 58)
    card.BackgroundColor3 = CARD
    card.BorderSizePixel = 0
    card.AutoButtonColor = false
    card.Text = ""

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 11)
    corner.Parent = card

    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(42, 49, 63)
    stroke.Thickness = 1
    stroke.Transparency = 0.35
    stroke.Parent = card

    local iconLabel = Instance.new("TextLabel")
    iconLabel.Parent = card
    iconLabel.Position = UDim2.fromOffset(13, 12)
    iconLabel.Size = UDim2.fromOffset(34, 34)
    iconLabel.BackgroundColor3 = Color3.fromRGB(31, 39, 53)
    iconLabel.BorderSizePixel = 0
    iconLabel.Text = icon or "•"
    iconLabel.TextColor3 = ACCENT
    iconLabel.Font = Enum.Font.GothamBold
    iconLabel.TextSize = 15
    Instance.new("UICorner", iconLabel).CornerRadius = UDim.new(0, 9)

    local title = Instance.new("TextLabel")
    title.Parent = card
    title.Position = UDim2.fromOffset(58, 9)
    title.Size = UDim2.new(1, -175, 0, 22)
    title.BackgroundTransparency = 1
    title.Text = name
    title.TextColor3 = TEXT
    title.Font = Enum.Font.GothamSemibold
    title.TextSize = 13
    title.TextXAlignment = Enum.TextXAlignment.Left

    local desc = Instance.new("TextLabel")
    desc.Parent = card
    desc.Position = UDim2.fromOffset(58, 30)
    desc.Size = UDim2.new(1, -175, 0, 18)
    desc.BackgroundTransparency = 1
    desc.Text = description
    desc.TextColor3 = MUTED
    desc.Font = Enum.Font.Gotham
    desc.TextSize = 10
    desc.TextXAlignment = Enum.TextXAlignment.Left
    desc.TextTruncate = Enum.TextTruncate.AtEnd

    local status = Instance.new("TextLabel")
    status.Parent = card
    status.AnchorPoint = Vector2.new(1, 0.5)
    status.Position = UDim2.new(1, -12, 0.5, 0)
    status.Size = UDim2.fromOffset(74, 28)
    status.BackgroundColor3 = Color3.fromRGB(42, 47, 58)
    status.BorderSizePixel = 0
    status.Font = Enum.Font.GothamBold
    status.TextSize = 10
    status.Text = "READY"
    status.TextColor3 = MUTED
    Instance.new("UICorner", status).CornerRadius = UDim.new(0, 8)

    local keyLabel = Instance.new("TextLabel")
    keyLabel.Parent = card
    keyLabel.AnchorPoint = Vector2.new(1, 0)
    keyLabel.Position = UDim2.new(1, -93, 0, 7)
    keyLabel.Size = UDim2.fromOffset(40, 15)
    keyLabel.BackgroundTransparency = 1
    keyLabel.Text = key and ("[" .. string.upper(key) .. "]") or ""
    keyLabel.TextColor3 = Color3.fromRGB(105, 116, 137)
    keyLabel.Font = Enum.Font.GothamMedium
    keyLabel.TextSize = 9
    keyLabel.TextXAlignment = Enum.TextXAlignment.Right

    local function sync()
        local state = statusGetter and statusGetter() or nil
        if state == true then
            status.Text = "ON"
            status.TextColor3 = ON
            status.BackgroundColor3 = Color3.fromRGB(24, 63, 48)
        elseif state == false then
            status.Text = "OFF"
            status.TextColor3 = OFF
            status.BackgroundColor3 = Color3.fromRGB(63, 35, 42)
        else
            status.Text = "READY"
            status.TextColor3 = MUTED
            status.BackgroundColor3 = Color3.fromRGB(42, 47, 58)
        end
    end

    card.MouseEnter:Connect(function()
        TweenService:Create(card, TweenInfo.new(0.12), {BackgroundColor3 = CARD_HOVER}):Play()
        TweenService:Create(stroke, TweenInfo.new(0.12), {Color = ACCENT, Transparency = 0.15}):Play()
    end)

    card.MouseLeave:Connect(function()
        TweenService:Create(card, TweenInfo.new(0.12), {BackgroundColor3 = CARD}):Play()
        TweenService:Create(stroke, TweenInfo.new(0.12), {Color = Color3.fromRGB(42, 49, 63), Transparency = 0.35}):Play()
    end)

    card.MouseButton1Click:Connect(function()
        if oldButton then
            oldButton:Activate()
        end
        task.wait()
        sync()
    end)

    modernButtons[#modernButtons + 1] = sync
    sync()
    return card
end

Section("ESP")
Feature("Murderer / Sheriff", "Highlight the two important roles", MSkey, MSEsp, function() return esp end, "⚔")
Feature("All Players", "Show every player on the map", playerskey, PlayersEsp, function()
    return esp == true and MSESPActive.Text ~= "Active" and PlayersEspActive.Text == "Active"
end, "◎")
Feature("Disable ESP", "Clear all active ESP markers", espoffkey, EspOff, function() return EspOffActive.Text == "Active" end, "×")

Section("MOVEMENT")
Feature("Run", "Toggle increased movement speed", "0", Run, function() return runActive end, "»")
Feature("Fly", "Toggle free-flight movement", flykey, Fly, function() return flyvar end, "↑")
Feature("Noclip", "Walk through solid parts", noclipkey, Noclip, function() return NClip end, "◇")

Section("WORLD")
Feature("God Mode", "Enable the existing character protection", godmodekey, GodMode, function() return godmodevar end, "✦")
Feature("X-Ray", "Make map geometry transparent", xrayonkey, GuiXrayOn, function() return GuiXrayOnActive.Text == "Active" end, "◈")
Feature("Restore X-Ray", "Return map transparency to normal", xrayoffkey, GuiXrayOff, function() return GuiXrayOffActive.Text == "Active" end, "○")

Section("UTILITY")
Feature("Coin Grabber", "Collect the available coins", coinkey, Coin, nil, "●")
Feature("Teleport Gun", "Move the dropped gun to you", bringgunkey, BringGun, nil, "↗")
Feature("Keybinds", "Enable or disable keyboard shortcuts", "Ctrl", Keybinds, function() return not keyOff end, "⌨")

local Footer = Instance.new("TextLabel")
Footer.Parent = Scroll
Footer.LayoutOrder = order + 1
Footer.Size = UDim2.new(1, -4, 0, 26)
Footer.BackgroundTransparency = 1
Footer.Text = "P  •  Hide / Show UI"
Footer.TextColor3 = Color3.fromRGB(92, 103, 123)
Footer.Font = Enum.Font.Gotham
Footer.TextSize = 10
Footer.TextXAlignment = Enum.TextXAlignment.Center

-- Dragging
local dragging = false
local dragStart
local startPos

Header.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = Root.Position
    end
end)

UIS.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        Root.Position = UDim2.new(
            startPos.X.Scale, startPos.X.Offset + delta.X,
            startPos.Y.Scale, startPos.Y.Offset + delta.Y
        )
    end
end)

UIS.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = false
    end
end)

-- Minimize button / configured hide key.
local miniOpen = true
local function setModernVisible(value)
    miniOpen = value
    Root.Visible = value
end

Minimize.MouseButton1Click:Connect(function()
    setModernVisible(false)
end)

local Reopen = Instance.new("TextButton")
Reopen.Parent = ModernUI
Reopen.AnchorPoint = Vector2.new(0, 1)
Reopen.Position = UDim2.new(0, 18, 1, -18)
Reopen.Size = UDim2.fromOffset(118, 38)
Reopen.BackgroundColor3 = PANEL
Reopen.BorderSizePixel = 0
Reopen.Text = "◆  BluePeak"
Reopen.TextColor3 = TEXT
Reopen.Font = Enum.Font.GothamBold
Reopen.TextSize = 11
Reopen.Visible = false
Instance.new("UICorner", Reopen).CornerRadius = UDim.new(0, 10)
local reopenStroke = Instance.new("UIStroke")
reopenStroke.Parent = Reopen
reopenStroke.Color = ACCENT
reopenStroke.Transparency = 0.25

Minimize.MouseButton1Click:Connect(function()
    Reopen.Visible = true
end)

Reopen.MouseButton1Click:Connect(function()
    setModernVisible(true)
    Reopen.Visible = false
end)

UIS.InputBegan:Connect(function(input, processed)
    if processed then return end
    local hideKey = string.upper(hideshowguikey)
    local enumKey = Enum.KeyCode[hideKey]
    if enumKey and input.KeyCode == enumKey then
        setModernVisible(not miniOpen)
        Reopen.Visible = not miniOpen
    end
end)

-- Keep status pills synchronized with the original state variables.
task.spawn(function()
    while ModernUI.Parent do
        for _, sync in ipairs(modernButtons) do
            pcall(sync)
        end
        task.wait(0.25)
    end
end)

end
