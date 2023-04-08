ITEM.name = "Counterseptic Drugs"
ITEM.model = Model("models/jackswan/wk_pills_one.mdl")
ITEM.description = "These include a broad Range of Antiseptics and Analgesics to fight off Infections, either injected via a pre-packaged Needle or ingested in Tab Form."
ITEM.category = "Chemicals"
ITEM.flag = "i"
ITEM.price = 5

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(100)
		client:SetHealth(math.Clamp(client:Health() + 35, 0, client:GetMaxHealth()))
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}