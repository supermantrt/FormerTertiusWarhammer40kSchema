ITEM.name = "Sweetroll"
ITEM.model = Model("models/sweetroll01.mdl")
ITEM.description = "Let me guess. Someone stole your sweetroll?"
ITEM.price = 0
ITEM.flag = "d"
ITEM.category = "Cooked Food"

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