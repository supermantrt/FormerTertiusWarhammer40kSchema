ITEM.name = "Gladstones"
ITEM.model = Model("models/jackswan/wk_pills_one.mdl")
ITEM.description = "Held in the users palm of either hand, or held under the tongue. They have been documented to provide a sense of well-being (described as a warm, blissful sensation) and sublime for days, possibly weeks on a single use."
ITEM.category = "Chemicals"
ITEM.flag = "i"
ITEM.price = 20

ITEM.functions.Eat = {
	OnRun = function(itemTable)
	   	local client = itemTable.player
		client:GetCharacter():AddBoost("gladestonesagi","agi", 4)
		client:GetCharacter():AddBoost("gladestonesint","int", 3)
		client:RestoreStamina(100)
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}