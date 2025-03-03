local players = game:GetService("Players")

-- Functions --
local function AutoFarmMoney()
	while _G.AutoFarmMoney == true do
		for i = 1, 10 do
			local localplayer = players.LocalPlayer
			local character = localplayer.Character
			local humanoid = character.Humanoid
			local humanoidrootpart = character.HumanoidRootPart
			local caveStage = workspace.BoatStages.NormalStages["CaveStage" .. i].DarknessPart

			local newpart = Instance.new("Part")
			newpart.Parent = Workspace
			newpart.Size = Vector3.new(5, 1, 5)
			newpart.Anchored = true
			newpart.CFrame = caveStage.CFrame
			humanoidrootpart.CFrame = caveStage.CFrame
			wait(2)
			for _, v in pairs(workspace:GetChildren()) do
    			if v:IsA("Part") then
        			v:Destroy()
    			end
			end
		end
		--character:BreakJoints()
		wait(5.5)
	end
end
_G.AutoFarmMoney = true
AutoFarmMoney()
