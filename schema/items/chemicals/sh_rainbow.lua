ITEM.name = "Rainbow"
ITEM.model = Model("models/jackswan/wk_pills_one.mdl")
ITEM.description = "A somewhat dangerous All-In-One Injection covering almost anything that can be wrong with someone. It includes an anti-bacterial Serum, a blood clotting Agent, an Allergen, Poison and Radiation Antidote broad-band Immune Booster, Vitamins, a white Cell Stimulator and a Sedative. This much Stimulation to the Body’s System can also cause massive Shock, but when faced with a Life or Death situation against an unknown Ailment some Medicae take the Gamble."
ITEM.category = "Chemicals"
ITEM.flag = "i"
ITEM.price = 200

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(500)
		client:SetHealth(math.Clamp(client:Health() + 500, 0, client:GetMaxHealth()))
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}