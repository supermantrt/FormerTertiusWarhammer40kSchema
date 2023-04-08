ITEM.name = "Skull of Mars"
ITEM.model = Model("models/props_lab/box01a.mdl")
ITEM.description = "The Skull of Mars is awarded to members of the imperial guard that have shown aptitudes for technology and have used said aptitudes to help achieve an objective and complete their mission."
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