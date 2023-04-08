ITEM.name = "Raw Honeycomb"
ITEM.model = Model("models/bee_honey_comb.mdl")
ITEM.description = "Maybe with enough honeycomb you can turn this into honey, heard it sells for a fair ammount, or you could just eat this like a fucking animal."
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