ITEM.name = "A Pill"
ITEM.model = Model("models/jackswan/wk_pills_one.mdl")
ITEM.description = "A drug which is to be administered upon affliction with 'Inishvatu Pest'. The label of it reads O-ethyl S-diisopropylaminomethyl methylphosphonothiolate."
ITEM.category = "Chemicals"
ITEM.flag = "i"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:Kill()
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}