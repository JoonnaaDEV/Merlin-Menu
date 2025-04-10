local Sound = Instance.new("Sound",game:GetService("SoundService"))
Sound.SoundId = "rbxassetid://232127604"
Sound:Play()

local SoundClick = Instance.new("Sound",game:GetService("SoundService"))
SoundClick.SoundId = "rbxassetid://156286438"

game:GetService("StarterGui"):SetCore("SendNotification",{["Title"] = "Merlin Menu",["Text"] = "Press/click the mouse weel to teleport!",["Duration"] = 60,["Button1"] = "I got it."})

local UIS = game:GetService("UserInputService")

local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()


function GetCharacter()
   return game.Players.LocalPlayer.Character
end

function Teleport(pos)
   local Char = GetCharacter()
   if Char then
       Char:MoveTo(pos)
   end
end


UIS.InputBegan:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.MouseButton3 then
       SoundClick()
       Teleport(Mouse.Hit.p)
   end
end)
