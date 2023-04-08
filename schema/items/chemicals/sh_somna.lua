ITEM.name = "Somna"
ITEM.model = Model("models/jackswan/wk_pills_one.mdl")
ITEM.description = "Somna is capable of producing a powerful coma-like Effect in the Subject, shutting down the Metabolism and Life Processes, almost to the Verge of Death, and plunging the Mind into a bottomless Oblivion beyond the deepest Sleep. The Subject of Somna appears to all but the most probing medical Examination to be dead and may only be woken with neural Stimulants like Kick or Stimm."
ITEM.category = "Chemicals"
ITEM.flag = "i"
ITEM.price = 15

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