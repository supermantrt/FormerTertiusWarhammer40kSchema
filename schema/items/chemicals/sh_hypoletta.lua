ITEM.name = "Hypoletta"
ITEM.model = Model("models/jackswan/wk_pills_one.mdl")
ITEM.description = "The Plant's Seeds are used to create a potent Anesthesia useful in treating combat Injuries. Crushed and treated with the Lake Water, the Gasses released are known to double the Rate of Success for First Aid Treatment."
ITEM.category = "Chemicals"
ITEM.flag = "i"
ITEM.price = 15

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(100)
		client:SetHealth(math.Clamp(client:Health() + 20, 0, client:GetMaxHealth()))
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}