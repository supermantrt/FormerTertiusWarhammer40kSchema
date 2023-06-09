
ITEM.name = "Health Vial"
ITEM.model = Model("models/healthvial.mdl")
ITEM.description = "A small vial with green liquid, seems to be produced from Necromunda. Miraculously heals wounds."
ITEM.category = "Medical"
ITEM.flag = "I"
ITEM.price = 20

ITEM.functions.Apply = {
	sound = "items/medshot4.wav",
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 50, client:GetMaxHealth()))
	end
}
