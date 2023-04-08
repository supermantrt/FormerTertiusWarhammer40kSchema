ITEM.name = "Seal of Terra's Light"
ITEM.model = ("models/scroll_slosed.mdl")
ITEM.description = "..."
ITEM.width = 1
ITEM.height = 1
ITEM.width = 1
ITEM.height = 1
ITEM.price = 0
ITEM.flag = "g"
ITEM.category = "GM"
ITEM.outfitCategory = "purityseal"
ITEM.category = "purityseal"


function ITEM:OnEquipped()
	self.player:GetCharacter():AddBoost("purityseal","str", 1)
	self.player:GetCharacter():AddBoost("purityseal","wil", 1)
end
 
function ITEM:OnUnequipped()
	self.player:GetCharacter():RemoveBoost("purityseal","str")
	self.player:GetCharacter():RemoveBoost("purityseal","wil")
end