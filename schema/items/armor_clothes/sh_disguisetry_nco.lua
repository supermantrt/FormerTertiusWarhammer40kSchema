ITEM.name = "Combat Uniform NCO"
ITEM.description = "Be sure not to be gunned down by friendlies with this one."
ITEM.category = "Clothing"
ITEM.flag = "c"
ITEM.maxArmor = 100
ITEM.model = "models/weapons/w_package.mdl"
ITEM.replacement = "models/fptp_786th_vet.mdl"

function ITEM:OnEquipped()
    self.player:SetNetVar("isMasked",true)
	self.player:SetData("oldNameSupermantrt", self.player:GetCharacter():GetName())
	self.player:GetCharacter():SetName("???") -- set their new name
end
 
function ITEM:OnUnequipped()
	self.player:GetCharacter():SetName(self.player:GetData("oldNameSupermantrt"))
    self.player:SetNetVar("isMasked",false)
end