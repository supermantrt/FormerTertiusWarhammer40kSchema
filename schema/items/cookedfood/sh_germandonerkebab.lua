ITEM.name = "German Doner Kebab"
ITEM.model = Model("models/dizcordum/wh/props/cotel.mdl")
ITEM.description = "This is supposedly food that the under-hivers eat back in Necromunda. It's just inedible unless you were born and raised there, otherwise eating this will surely  mean certain death."
ITEM.price = 0
ITEM.flag = "d"
ITEM.category = "Cooked Food"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(100)
		client:SetHealth( client:Health() + 20 )
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
	end
}