ITEM.name = "Scintillian Toast"
ITEM.model = Model("models/garlicbread01.mdl")
ITEM.description = "Who knew day old bread could make something so good"
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