local speaker = game.Players.LocalPlayer
char = speaker.Character
root = char.HumanoidRootPart
getgenv().Pickup = game:GetService("ReplicatedStorage").Events.Pickup

getgenv().tptable = {
    [1] = char.HumanoidRootPart.CFrame + Vector3.new(0,800,0),
    [2] = CFrame.new(-612.168945, 311.015533, -1138.6261, 0.765845776, 0, -0.643024266, 0, 1, 0, 0.643024266, 0, 0.765845776)
}

--[[
[1] = TP UP
[2] = TP TO ANICENT
]]--

char.HumanoidRootPart.CFrame = tptable[1]
wait(0.5)
char.HumanoidRootPart.CFrame = tptable[2]


--[[AUTO FARM STARTING DON'T EDIT LOL]]--

local runservice = game:GetService("RunService")
local plr = game:GetService("Players").LocalPlayer

local p = {
    [1] = "Pumpkin Pie"
}


spawn(function()
    getgenv().autopickup3 = runservice.RenderStepped:Connect(function()
        for _,v in pairs(workspace.Items:GetChildren()) do
            if v.Name == p[1] or v.Name == p[2] or v.Name == p[3] or v.Name == p[4] or v.Name == p[5] or v.Name == p[6] or v.Name == p[7] or v.Name == p[8] or v.Name == p[9] or v.Name == p[10] or v.Name == p[11] or v.Name == p[12] or v.Name == p[13] then
                local dist = (v.Position - char.HumanoidRootPart.Position).magnitude
                local dist1 = 25.01
                if dist < dist1 then
                    game:GetService("ReplicatedStorage").Events.Consume:FireServer(v)
                end
            end
        end
    end)
end)
local speaker = game.Players.LocalPlayer
char = speaker.Character
root = char.HumanoidRootPart
getgenv().Pickup = game:GetService("ReplicatedStorage").Events.Pickup

getgenv().tptable = {
    [1] = char.HumanoidRootPart.CFrame + Vector3.new(0,800,0),
    [2] = CFrame.new(-612.168945, 311.015533, -1138.6261, 0.765845776, 0, -0.643024266, 0, 1, 0, 0.643024266, 0, 0.765845776)
}

--[[
[1] = TP UP
[2] = TP TO ANICENT
]]--

char.HumanoidRootPart.CFrame = tptable[1]
wait(0.5)
char.HumanoidRootPart.CFrame = tptable[2]


--[[AUTO FARM STARTING DON'T EDIT LOL]]--

local runservice = game:GetService("RunService")
local plr = game:GetService("Players").LocalPlayer

local p = {
    [1] = "Pumpkin Pie"
}


spawn(function()
    getgenv().autopickup3 = runservice.RenderStepped:Connect(function()
        for _,v in pairs(workspace.Items:GetChildren()) do
            if v.Name == p[1] or v.Name == p[2] or v.Name == p[3] or v.Name == p[4] or v.Name == p[5] or v.Name == p[6] or v.Name == p[7] or v.Name == p[8] or v.Name == p[9] or v.Name == p[10] or v.Name == p[11] or v.Name == p[12] or v.Name == p[13] then
                local dist = (v.Position - char.HumanoidRootPart.Position).magnitude
                local dist1 = 25.01
                if dist < dist1 then
                    game:GetService("ReplicatedStorage").Events.Consume:FireServer(v)
                end
            end
        end
    end)
end)



function domathforsuntree()
        for i,v in pairs(game:GetService("Workspace").Resources:GetChildren()) do
        if v.Name == "Sun Tree" or v.Name == "Big Sun Tree" then
            if v then
                if (v.Reference.Position - root.Position).magnitude < 10 then
                    local value = v.Health
                    local a1,a2,a3,a4,a5,a6
                    a1 = 0
                    a2 = v.Health.Value
                    a3 = 20
                    repeat
                    a1 = a1 + 1
                    a2 = a2 - 20
                    until a2 == 0
                    return a1
                end
            end
        end
    end
end




local swingtable = {
    
}

function swingsuntree()
spawn(function()
    for i,v in pairs(game:GetService("Workspace").Resources:GetChildren()) do
        if v.Name == "Sun Tree" or v.Name == "Big Sun Tree" then
            if v then
                if (v.Reference.Position - root.Position).magnitude < 10 then
                    table.insert(swingtable,v.Reference)
                    table.insert(swingtable,v.Trunk)
                    local times = domathforsuntree()
                    for i=1,times do
                        wait(0.5)
                    game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(swingtable)
                    end
                end
            end
        end
    end
end)
end
