ITEM.name = "Incubus Warsuit"
ITEM.description = "-AEL-Incubus Warsuit is a type of armour worn by Dark Eldar Incubi. This advanced close-fitting suit of ritual battle armour can turn aside all but the most well-placed blows."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 4
ITEM.height = 3
ITEM.armorAmount = 350
ITEM.Durability = 1465
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.50, -- Bullets
			0.50, -- Slash
			0.60, -- Shock
			0.70, -- Burn
			0.80, -- Radiation
			0.75, -- Acid
			0.50, -- Explosion
}

function ITEM:OnEquipped()
	self.player:GetCharacter():AddBoost("eldar","agi", 15)
end
 
function ITEM:OnUnequipped()
	self.player:GetCharacter():RemoveBoost("eldar","agi")
end