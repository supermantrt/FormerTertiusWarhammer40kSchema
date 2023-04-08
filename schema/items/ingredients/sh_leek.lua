ITEM.name = "Leek"
ITEM.model = Model("models/leek.mdl")
ITEM.description = "Leaks."
ITEM.price = 0
ITEM.flag = "g"
ITEM.category = "GM"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(100)
		client:SetHealth( client:Health() + 20 )
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}