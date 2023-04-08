ITEM.name = "Milk"
ITEM.model = Model("models/props_junk/garbage_milkcarton001a.mdl")
ITEM.description = "This seems to be some sort of milk. You cant tell why type it is really"
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