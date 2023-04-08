ITEM.name = "Kick"
ITEM.model = Model("models/jackswan/wk_pills_one.mdl")
ITEM.description = "A potent Combination of neural Accelerants and Stimulants, Kick makes the User feel supercharged with Energy. It is ideal for short-term Assaults as the Effects burn off rapidly inducing profound Fatigue and Listlessness for the next several Solar Hours."
ITEM.category = "Chemicals"
ITEM.flag = "i"
ITEM.price = 30

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(500)
		client:SetHealth(math.Clamp(client:Health() + 300, 0, client:GetMaxHealth()))
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}