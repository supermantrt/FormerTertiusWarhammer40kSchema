ITEM.name = "Ciggarettes"
ITEM.model = Model("models/props/hosti/boxcig2.mdl")
ITEM.description = "A pack of ciggarettes, the back of the pack shows a tumor and says 'Smoking kills'"
ITEM.category = "Chemicals"
ITEM.flag = "i"
ITEM.price = 2

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player
		client:GetCharacter():AddBoost("cigstr","str", 1)
		client:GetCharacter():AddBoost("cigcon","con", 1)
		client:RestoreStamina(100)
		client:SetMaxHealth( client:GetMaxHealth() - 10 )
		client:SetHealth( client:Health() - 10 )
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
		if(client:Health() <= 0) then
			client:Kill()
		end
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}