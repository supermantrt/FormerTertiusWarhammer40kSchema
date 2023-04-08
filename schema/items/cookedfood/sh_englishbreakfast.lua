ITEM.name = "Praetorian Breakfast"
ITEM.model = Model("models/canned_food.mdl")
ITEM.description = "A scrumptious meal for the servants of the Emperor. It is stored within the can for easy transportation"
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