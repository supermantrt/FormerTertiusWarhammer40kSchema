ITEM.name = "Scrambled Eggs"
ITEM.model = Model("models/props_phx/misc/egg.mdl")
ITEM.description = "Scrambeled Eggs make life feel just a tad bit better."
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