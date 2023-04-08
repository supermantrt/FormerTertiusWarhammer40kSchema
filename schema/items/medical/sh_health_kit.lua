
ITEM.name = "Health Kit"
ITEM.model = Model("models/items/healthkit.mdl")
ITEM.description = "A white packet filled with medication. Produced from Necromunda, heals most wounds"
ITEM.category = "Medical"
ITEM.flag = "I"
ITEM.price = 45

ITEM.functions.Apply = {
	sound = "items/medshot4.wav",
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 150, 100))
	end
}
