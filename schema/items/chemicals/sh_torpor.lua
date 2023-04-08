ITEM.name = "Torpor"
ITEM.model = Model("models/jackswan/wk_pills_one.mdl")
ITEM.description = "Long used by the Masters of the Black Ships to control their harvest of Charges, Torpor is a chemical Cocktail of Neural-inhibitors and Narcotics designed to render the Subject docile and, more importantly, negate their Ability to use psychic Powers. Likewise the Holy Ordos maintains its own Supplies of Torpor for Prisoner Control and other Uses, while some heretical Cults have been known to manufacture their somewhat unreliable Version for their own dark Purposes."
ITEM.category = "Chemicals"
ITEM.flag = "i"
ITEM.price = 35

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(100)
		client:SetHealth(math.Clamp(client:Health() + 1, 0, client:GetMaxHealth()))
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}