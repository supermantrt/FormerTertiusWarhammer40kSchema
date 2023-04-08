ITEM.name = "Pharaoh Lager"
ITEM.model = Model("models/cyrodilac_wine.mdl")
ITEM.description = "A beer produced from the deserts of Navarra. It has a smokey taste"
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
		client:GetCharacter():AddBoost("luxnubbeer","str", 1)
		client:GetCharacter():AddBoost("luxnubbeer","con", 4)
		client:GetCharacter():AddBoost("luxnubbeer","agi", -1)
		client:GetCharacter():AddBoost("luxnubbeer","int", -2)
		client:SetRunSpeed(client:GetRunSpeed() - 25)
		client:SetWalkSpeed(client:GetWalkSpeed() - 25)
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
		client:IncreaseDrunkLevel(5)
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}