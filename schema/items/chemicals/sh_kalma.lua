ITEM.name = "Kalma"
ITEM.model = Model("models/jackswan/wk_pills_one.mdl")
ITEM.description = "The Name given to a general Group of euphoric sedative Drugs produced in the Underhives of Necromunda. The Drug lowers the Taker's State of Consciousness while inducing an elevated State of well-being. The Drug also makes the Taker docile and compliant."
ITEM.category = "Chemicals"
ITEM.flag = "i"
ITEM.price = 25

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(100)
		client:SetHealth(math.Clamp(client:Health() + 10, 0, client:GetMaxHealth()))
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}