ITEM.name = "Medallion Crimson"
ITEM.model = Model("models/props_lab/box01a.mdl")
ITEM.description = "More common amongst veterans of the Imperial Guard is the Medallion Crimson. This is issued to soldiers who have continued to do their duty despite the most terrible injuries. Often the bearers will also have bionic replacements to show for their courage as well as the Medallion. Most, however, are awarded posthumously."
ITEM.category = "Clothing"
ITEM.outfitCategory = "Medals"
ITEM.price = 0
ITEM.flag = "g"
ITEM.category = "Medals"


function ITEM:OnEquipped()
	self.player:GetCharacter():AddBoost("medal", "con", 2)
end
 
function ITEM:OnUnequipped()
	self.player:GetCharacter():RemoveBoost("medal", "con")
end