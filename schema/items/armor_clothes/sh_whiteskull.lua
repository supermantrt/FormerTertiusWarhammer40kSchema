ITEM.name = "White Skull"
ITEM.model = Model("models/props_lab/box01a.mdl")
ITEM.description = "The white skull is an award given to long serving members of the officio medicae after going above and beyond with their duties"
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Clothing"
ITEM.outfitCategory = "Medals"
ITEM.price = 0
ITEM.flag = "g"
ITEM.category = "Medals"


function ITEM:OnEquipped()
	self.player:GetCharacter():AddBoost("medal", "int", 5)
end
 
function ITEM:OnUnequipped()
	self.player:GetCharacter():RemoveBoost("medal","int")
end