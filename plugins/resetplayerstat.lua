local PLUGIN = PLUGIN
PLUGIN.name = "Reset Stat On Death"
PLUGIN.author = "Supermantrt"
PLUGIN.description = "Removesplayerboost"

if SERVER then
	function PLUGIN:PlayerDeath(client, inflictor, attacker)
		local character = client:GetCharacter()
		local boosts = character:GetBoosts()

		client:SetNetVar("DrugTaken", nil)

		for attribID, v in pairs(boosts) do
			for boostID, _ in pairs(v) do
				character:RemoveBoost(boostID, attribID)
			end
		end
	end
end

function PLUGIN:CanPlayerUseBusiness()
	return LocalPlayer():IsAdmin()
end