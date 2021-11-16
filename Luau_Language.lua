--[[
This is lua coding and if you execute this using roblox studio which is a coding editor billions use and is not a game, also visual studio code works fine 
if you have studio extension
(Luau, Lua, Lua LSP Coding Editor Format)
]]--

function createGUI(parent)
local textbox = Instance.new("ScreenGui",parent)
local frame = Instance.new("Frame", textbox)
local text = Instance.new("TextLabel", frame)
text.Size = 30
text.BackgroundTransparency = 0.95
text.TextSize = 14
text.Font = Enum.Font.Arial
text.Text = "Racism is a big problem, help fix it"


frame.Draggable = true
frame.BackgroundColor = Color3.new(45,45,45)
frame.Parent = textbox
end

if game.Players.LocalPlayer.PlayerGui == nil then
createGUI(game.CoreGui)
elseif game.Players.LocalPlayer.PlayerGui ~= nil then
createGUI(game:GetService("Players").LocalPlayer)
end
