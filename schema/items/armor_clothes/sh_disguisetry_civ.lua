ITEM.name = "Civilian Clothing"
ITEM.description = "I'm just a normal guy what do you want?."
ITEM.category = "Clothing"
ITEM.flag = "c"
ITEM.maxArmor = 100
ITEM.model = "models/weapons/w_package.mdl"
ITEM.replacement = "models/muschi/city/muschi_city_citizen_1.mdl"

function ITEM:OnEquipped()
    self.player:SetNetVar("isMasked",true)
	self.player:SetData("oldNameSupermantrt", self.player:GetCharacter():GetName())
	self.player:GetCharacter():SetName("???") -- set their new name
end
 
function ITEM:OnUnequipped()
	self.player:GetCharacter():SetName(self.player:GetData("oldNameSupermantrt"))
    self.player:SetNetVar("isMasked",false)
end