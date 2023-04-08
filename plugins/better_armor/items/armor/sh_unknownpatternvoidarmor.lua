ITEM.name = "Unknown Pattern Void Armor"
ITEM.description = "Seems to be extremely old... this armor is ancient but it still seems to be holding up, regular repairs may be required."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 5
ITEM.height = 4
ITEM.armorAmount = 200
ITEM.Durability = 300
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.6, -- Bullets
			0.6, -- Slash
			0.6, -- Shock
			0.6, -- Burn
			0.3, -- Radiation
			0.3, -- Acid
			0.5, -- Explosion
}