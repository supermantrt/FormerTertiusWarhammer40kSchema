ITEM.name = "Golden Aquila"
ITEM.model = Model("models/props_lab/box01a.mdl")
ITEM.description = "The golden aquila, usually the awarded is given to veterans or goes alongside veteranship, is given to long serving soldiers with a spotless track record that have performed numerous outstanding acts of heroism in the battlefield"
ITEM.category = "Clothing"
ITEM.outfitCategory = "Medals"
ITEM.price = 0
ITEM.flag = "g"
ITEM.category = "Medals"


function ITEM:OnEquipped()
	self.player:GetCharacter():AddBoost("medal","con", 2)
	self.player:GetCharacter():AddBoost("medal", "str", 2)
end
 
function ITEM:OnUnequipped()
	self.player:GetCharacter():RemoveBoost("medal","con")
	self.player:GetCharacter():RemoveBoost("medal", "str")
end