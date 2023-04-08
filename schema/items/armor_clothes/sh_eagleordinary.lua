ITEM.name = "Eagle Ordinary"
ITEM.model = Model("models/props_lab/box01a.mdl")
ITEM.description = "Issued for acts of valour beyond what is required (but not considered extraordinary). A common jest amongst the bearers of the medal is that they are the 'boring heroes' of a regiment due to the fact that they are not dead."
ITEM.category = "Clothing"
ITEM.outfitCategory = "Medals"
ITEM.price = 0
ITEM.flag = "g"
ITEM.category = "Medals"


function ITEM:OnEquipped()
	self.player:GetCharacter():AddBoost("medal","agi", 1)
	self.player:GetCharacter():AddBoost("medal", "str", 1)
end
 
function ITEM:OnUnequipped()
	self.player:GetCharacter():RemoveBoost("medal","agi")
	self.player:GetCharacter():RemoveBoost("medal", "str")
end