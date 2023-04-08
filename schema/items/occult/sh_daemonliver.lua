ITEM.name = "Daemon Liver"
ITEM.model = Model("models/gibs/humans/liver_gib.mdl")
ITEM.description = "The liver of a Daemon, you feel strange from just touching it."
ITEM.category = "Occult"
ITEM.flag = "i"

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