local lplr = game.Players.LocalPlayer
local char = lplr.Character
local plrs = game.Players
local plrsTable = {}
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/SeasonalKirito/Vynixius-UI/main/Source.lua"))()

for i,v in pairs(plrs:GetPlayers()) do
    if v ~= lplr then
        table.insert(plrsTable, v.Name)
    end
end

local Window = Library:AddWindow({
	title = {"Plrs TP GUI", game.PlaceId},
	theme = {
		Accent = Color3.fromRGB(0, 255, 0)
	},
	key = Enum.KeyCode.RightControl,
	default = true
})

local Tab = Window:AddTab("Plr Table Tp", {default = false})

local Section = Tab:AddSection("Selecting", {default = false})

Section:AddDropdown("Select Player", plrsTable, {default = "Players..."}, function(selectedPlr)
    char.HumanoidRootPart.CFrame = game.Players[selectedPlr].Character.HumanoidRootPart.CFrame
end)

Section:AddButton("Refresh Dropdown...", function()
	for i,v in pairs(plrs:GetPlayers()) do
        if v ~= lplr then
            table.insert(plrsTable, v.Name)
        end
    end
end)