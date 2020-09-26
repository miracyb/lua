-- this stupidly simple code makes all the (current/former) references to the humanoidrootpart outdated, workaround for a lot of antiexploits

local character 			= game:GetService("Players").LocalPlayer.Character
local rootClone 			= character.HumanoidRootPart:Clone()
local characterParent = character.Parent

character.Parent 			= nil
character.HumanoidRootPart:Destroy()
rootClone.Parent 			= character
character.Parent 			= characterParent
