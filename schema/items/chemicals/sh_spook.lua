ITEM.name = "Spook"
ITEM.model = Model("models/dizcordum/wh/props3/wk_alchem_colba.mdl")
ITEM.description = "The drug spook is taken in liquid form - the ultimate magic potion. When drunk in small amounts, it awakens the imbiber's psychic abilities. When drunk in quantity it opens the channel between a person's physical body and their soul in the warp."
ITEM.category = "Chemicals"
ITEM.flag = "i"
ITEM.price = 100

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player
		client:GetCharacter():AddBoost("spookstr","str", -5)
		client:GetCharacter():AddBoost("spookcon","con", -5)
		client:GetCharacter():AddBoost("spookagi","agi", -5)
		client:GetCharacter():AddBoost("spookint","int", -5)
		client:GetCharacter():AddBoost("spookint","psy", 5)
		client:RestoreStamina(100)
		client:SetMaxHealth( client:Health() + 200 )
		client:SetHealth( client:Health() + 200 )
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}