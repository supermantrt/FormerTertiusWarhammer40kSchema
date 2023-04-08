ITEM.name = "Obscura"
ITEM.model = Model("models/jackswan/wk_pills_one.mdl")
ITEM.description = "Don't forget to consume it regularly! It gives depression otherwise."
ITEM.category = "Chemicals"
ITEM.flag = "i"
ITEM.price = 15

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player
		client:GetCharacter():AddBoost("obscurastr","str", -2)
		client:GetCharacter():AddBoost("obscuracon","con", -2)
		client:GetCharacter():AddBoost("obscuraagi","agi", -2)
		client:GetCharacter():AddBoost("obscuraint","int", 5)
		client:RestoreStamina(100)
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}