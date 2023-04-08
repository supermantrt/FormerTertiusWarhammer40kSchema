ITEM.name = "Absolla Paste"
ITEM.model = Model("models/jackswan/wk_pills_one.mdl")
ITEM.description = "Once ground into a thick Paste, Absolla Root has remarkable regenerative Properties, and when applied to Wounds it outright removes mundane Forms of Injury to the applied Surface."
ITEM.category = "Chemicals"
ITEM.flag = "i"
ITEM.price = 25

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(100)
		client:SetHealth( client:Health() + 50 )
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}