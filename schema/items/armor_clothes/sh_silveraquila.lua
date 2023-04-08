ITEM.name = "Silver Aquila"
ITEM.model = Model("models/props_lab/box01a.mdl")
ITEM.description = "The silver aquila is awarded to those guardsmen that have served long enough and with a clear enough record when deemed fit by their commander, it is more of a token of favour by the officers and because of that it is still highly sought after."
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Clothing"
ITEM.outfitCategory = "Medals"
ITEM.price = 0
ITEM.flag = "g"
ITEM.category = "Medals"


function ITEM:OnEquipped()
	self.player:GetCharacter():AddBoost("medal","agi", 1)
	self.player:GetCharacter():AddBoost("medal", "con", 1)
end
 
function ITEM:OnUnequipped()
	self.player:GetCharacter():RemoveBoost("medal","agi")
	self.player:GetCharacter():RemoveBoost("medal", "con")
end