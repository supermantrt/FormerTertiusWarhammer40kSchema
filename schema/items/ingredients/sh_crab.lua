ITEM.name = "Crab"
ITEM.model = Model("models/mudcrabchitin.mdl")
ITEM.description = "Crack this baby open for a delight."
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