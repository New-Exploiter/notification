  
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
