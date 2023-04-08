ITEM.name = "Halo"
ITEM.model = Model("models/jackswan/wk_pills_one.mdl")
ITEM.description = "Commonly given to Penal Legionnaires, Halo creates a compliant state suitable for Combat Prisoner Indoctrination. Users can be better readied and even made enthusiastic to meet their coming Fate on the Battlefield. Other heavily stressed Troopers use it to forcibly induce a calmer Frame of Mind."
ITEM.category = "Chemicals"
ITEM.flag = "i"
ITEM.price = 35

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(100)
		client:SetHealth(math.Clamp(client:Health() + 100, 0, client:GetMaxHealth()))
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}