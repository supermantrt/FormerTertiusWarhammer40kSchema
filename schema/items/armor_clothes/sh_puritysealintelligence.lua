ITEM.name = "Seal of the Emperor's Intelligence"
ITEM.model = Model("models/scroll_slosed.mdl")
ITEM.description = "..."
ITEM.price = 0
ITEM.flag = "g"
ITEM.category = "GM"
ITEM.outfitCategory = "purityseal"
ITEM.category = "purityseal"


function ITEM:OnEquipped()
	self.player:GetCharacter():AddBoost("purityseal","int", 1)
end
 
function ITEM:OnUnequipped()
	self.player:GetCharacter():RemoveBoost("purityseal","int")
end