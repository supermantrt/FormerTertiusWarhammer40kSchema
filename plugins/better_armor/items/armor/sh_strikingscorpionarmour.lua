ITEM.name = "Scorpion Armor"
ITEM.description = "-AEL- The Striking Scorpion like most Aeldari wear a lightweight but very durable type of armor."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 3
ITEM.height = 3
ITEM.armorAmount = 350
ITEM.Durability = 1465
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.50, -- Bullets
			0.60, -- Slash
			0.60, -- Shock
			0.60, -- Burn
			0.70, -- Radiation
			0.70, -- Acid
			0.75, -- Explosion
}

function ITEM:OnEquipped()
	self.player:GetCharacter():AddBoost("eldar","agi", 15)
end
 
function ITEM:OnUnequipped()
	self.player:GetCharacter():RemoveBoost("eldar","agi")
end