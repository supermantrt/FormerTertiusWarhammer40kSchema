ITEM.name = "Kastelan"
ITEM.description = "-KAS- Kastelans are made out of incredibly powerful materials you can survive most blows with ease."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 4
ITEM.height = 4
ITEM.armorAmount = 700
ITEM.Durability = 9465
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.40, -- Bullets
			0.40, -- Slash
			1.40, -- Shock
			0.40, -- Burn
			0, -- Radiation
			0.75, -- Acid
			0.40, -- Explosion
}

function ITEM:OnEquipped()
	self.player:GetCharacter():AddBoost("kastelan","str", 15)
end
 
function ITEM:OnUnequipped()
	self.player:GetCharacter():RemoveBoost("kastelan","str")
end