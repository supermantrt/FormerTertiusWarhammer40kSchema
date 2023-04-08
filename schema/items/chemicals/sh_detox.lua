ITEM.name = "De-Tox"
ITEM.model = Model("models/dizcordum/wh/props/syringe_imperial_blood.mdl")
ITEM.description = "Combat Stimm."
ITEM.category = "Chemicals"
ITEM.flag = "i"
ITEM.price = 10

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player
		local character = client:GetCharacter()
		local boosts = character:GetBoosts()
		local class = character:GetClass()
		for attribID, v in pairs(boosts) do
			for boostID, _ in pairs(v) do
				character:RemoveBoost(boostID, attribID)
			end
		end
		client:RestoreStamina(100)
		client:SetMaxHealth( ix.class.Get(client:GetCharacter():GetClass()).health)
		client:SetHealth( ix.class.Get(client:GetCharacter():GetClass()).health - 50)
		client:SetRunSpeed( 200 )
		client:SetWalkSpeed( 200 )
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
		client:ResetDrunkLevel()
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}