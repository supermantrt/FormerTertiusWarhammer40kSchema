ITEM.name = "Poor Local Wine"
ITEM.model = Model("models/cyrodilac_wine.mdl")
ITEM.description = "Its pretty bad."
ITEM.price = 0
ITEM.flag = "g"
ITEM.category = "Exotic Drink"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player
        client:RestoreStamina(100)
		client:SetMaxHealth( client:Health() + 25 )
        client:SetHealth( client:Health() + 25 )
        client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
		client:GetCharacter():AddBoost("medwinestr","str", 3)
		client:GetCharacter():AddBoost("medwinecon","con", 3)
		client:GetCharacter():AddBoost("medwineagi","agi", -1)
		client:GetCharacter():AddBoost("medwineint","int", -3)
		client:SetRunSpeed(client:GetRunSpeed() - 25)
		client:SetWalkSpeed(client:GetWalkSpeed() - 25)
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
		client:IncreaseDrunkLevel(5)
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}