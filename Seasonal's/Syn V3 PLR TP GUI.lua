--[[
Im ass at coding so dont make fun of me pls :[,
Made by SEASONAL#8280, Skid this if you want just 
dont if your a syn v3 queuetard :]
]]--

assert(RenderWindow, "Located Skid, kys")

local module = {}
shared.TeleportUtility = module
local lplr = game.Players.LocalPlayer
local char = lplr.Character
local plrs = game.Players

--UI INITIALIZATION
do
    local UI_RenderWindow = RenderWindow.new("Player Teleporting")

    UI_RenderWindow.DefaultSize = Vector2.new(200, 200)

    local tabs = UI_RenderWindow:TabMenu()

    local generalTab = tabs:Add("Main")

    local boxLine = generalTab:SameLine()

    UI_CustomTeleportButton = boxLine:Button()
    UI_CustomTeleportTextBox = boxLine:TextBox()
    UI_AutoTeleportCheckBox = generalTab:CheckBox()

    UI_CustomTeleportButton.Label = "Teleport"
    UI_AutoTeleportCheckBox.Label = "Auto teleport"

    module.RenderWindow = UI_RenderWindow
end


UI_CustomTeleportButton.OnUpdated:Connect(function()
    local PlrInputed = UI_CustomTeleportTextBox.Value
    char.HumanoidRootPart.CFrame = plrs[PlrInputed].Character.HumanoidRootPart.CFrame
end)

UI_AutoTeleportCheckBox.OnUpdated:Connect(function()
    local PlrInputed = UI_CustomTeleportTextBox.Value
    while UI_AutoTeleportCheckBox.Value == true do
        char.HumanoidRootPart.CFrame = plrs[PlrInputed].Character.HumanoidRootPart.CFrame
        wait()
    end
end)
