local StarId = {}

local CrownId = {
	[244946092] = true,
}

local DiamondId = {
	[2470610118] = true,
}

function premium()
	for _,v in pairs(game:GetService('Players'):GetChildren()) do
		if StarId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐]'..v.DisplayName)
				end
			end
		elseif CrownId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[Owner] '..v.DisplayName)
				end
			end
		elseif DiamondId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🥵]'..v.DisplayName)
				end
			end
		end
	end
end
local success,err = pcall(premium)
return StarId
