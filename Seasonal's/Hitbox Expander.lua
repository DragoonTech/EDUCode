-- {{ LOCALS }} --

local settings = {
    Toggle = true,
    HeadSize = 15,
    TeamCheck = true,
    Visuals = {
        BrickColor = "Red",
        Material = "Neon", -- Neon, ForceField
        Transparency = 0.7,
        CanCollide = false
    }
}
local lplr = game:GetService("Players").LocalPlayer
local DeveloperUser = "SeasonalKirito"

-- {{ MAIN }} --

game:GetService('RunService').RenderStepped:connect(function()
    if settings.Toggle == true then
        for i,v in next, game:GetService('Players'):GetPlayers() do
            if settings.TeamCheck == true then
                if v ~= lplr and v.Team ~= lplr.Team and v.Name ~= DeveloperUser then
                    pcall(function()
                        v.Character.Head.Size = Vector3.new(settings.HeadSize,settings.HeadSize,settings.HeadSize)
                        v.Character.Head.Transparency = 1
                        v.Character.Head.CanCollide = settings.Visuals.CanCollide
                        v.Character.HumanoidRootPart.Size = Vector3.new(settings.HeadSize,settings.HeadSize,settings.HeadSize)
                        v.Character.HumanoidRootPart.Transparency = settings.Visuals.Transparency
                        v.Character.HumanoidRootPart.BrickColor = BrickColor.new(settings.Visuals.BrickColor)
                        v.Character.HumanoidRootPart.Material = settings.Visuals.Material
                        v.Character.HumanoidRootPart.CanCollide = settings.Visuals.CanCollide
                    end)
                end
            else
                if v ~= lplr and v.Name ~= DeveloperUser then
                    pcall(function()
                        v.Character.Head.Size = Vector3.new(settings.HeadSize,settings.HeadSize,settings.HeadSize)
                        v.Character.Head.Transparency = 1
                        v.Character.Head.CanCollide = settings.Visuals.CanCollide
                        v.Character.HumanoidRootPart.Size = Vector3.new(settings.HeadSize,settings.HeadSize,settings.HeadSize)
                        v.Character.HumanoidRootPart.Transparency = settings.Visuals.Transparency
                        v.Character.HumanoidRootPart.BrickColor = BrickColor.new(settings.Visuals.BrickColor)
                        v.Character.HumanoidRootPart.Material = settings.Visuals.Material
                        v.Character.HumanoidRootPart.CanCollide = settings.Visuals.CanCollide
                    end)
                end
            end
        end
    end
end)
