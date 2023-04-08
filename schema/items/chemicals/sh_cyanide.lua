ITEM.name = "Cyanide"
ITEM.model = Model("models/jackswan/wk_pills_one.mdl")
ITEM.description = "Will kill you instantly."
ITEM.category = "Chemicals"
ITEM.flag = "i"
ITEM.price = 5

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(100)
		client:Kill()
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}