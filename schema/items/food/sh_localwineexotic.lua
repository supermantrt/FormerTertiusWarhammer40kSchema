ITEM.name = "Exotic Quality Local Wine"
ITEM.model = Model("models/cyrodilac_wine.mdl")
ITEM.description = "Its so damn good it makes you drunk with a single drop, gives you the perception you can fight one hundred men with your bare hands."
ITEM.price = 0
ITEM.flag = "g"
ITEM.category = "Exotic Drink"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player
        client:RestoreStamina(100)
		client:SetMaxHealth( client:Health() + 100 )
        client:SetHealth( client:Health() + 100 )
        client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
		client:GetCharacter():AddBoost("exoticwinestr","str", 10)
		client:GetCharacter():AddBoost("exoticwinecon","con", 10)
		client:GetCharacter():AddBoost("exoticwineagi","agi", -5)
		client:GetCharacter():AddBoost("exoticint","int", -3)
		client:SetRunSpeed(client:GetRunSpeed() - 100)
		client:SetWalkSpeed(client:GetWalkSpeed() - 100)
		client:IncreaseDrunkLevel(99)
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}