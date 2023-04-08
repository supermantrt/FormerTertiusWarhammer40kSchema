ITEM.name = "High Quality Local Wine"
ITEM.model = Model("models/cyrodilac_wine.mdl")
ITEM.description = "This is some serious gourmet shit."
ITEM.price = 0
ITEM.flag = "g"
ITEM.category = "Exotic Drink"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player
        client:RestoreStamina(100)
		client:SetMaxHealth( client:Health() + 75 )
        client:SetHealth( client:Health() + 75 )
        client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
		client:GetCharacter():AddBoost("highwinestr","str", 5)
		client:GetCharacter():AddBoost("highwinecon","con", 5)
		client:GetCharacter():AddBoost("highwineeagi","agi", -3)
		client:GetCharacter():AddBoost("highwineint","int", -3)
		client:SetRunSpeed(client:GetRunSpeed() - 75)
		client:SetWalkSpeed(client:GetWalkSpeed() - 75)
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
		client:IncreaseDrunkLevel(50)
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}