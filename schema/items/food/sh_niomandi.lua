ITEM.name = "Niomandi Alcohol"
ITEM.model = Model("models/cyrodilac_wine.mdl")
ITEM.description = "A strange alchoholic beverage drank often by the desert bandits of Navarra. It seems to have been made from camels milk."
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
		client:GetCharacter():AddBoost("ishmincallbeer","str", 7)
		client:GetCharacter():AddBoost("ishmincallbeer","con", 1)
		client:GetCharacter():AddBoost("ishmincallbeer","agi", -4)
		client:GetCharacter():AddBoost("ishmincallbeer","int", -2)
		client:SetRunSpeed(client:GetRunSpeed() - 25)
		client:SetWalkSpeed(client:GetWalkSpeed() - 25)
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
		client:IncreaseDrunkLevel(5)
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}