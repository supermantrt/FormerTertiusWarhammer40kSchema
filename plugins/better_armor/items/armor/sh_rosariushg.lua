ITEM.name = "Rosarius"
ITEM.description = "Faith is my shield, but a Rosarius also helps."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.armorAmount = 400
ITEM.Durability = 300
ITEM.gasmask = true -- It will protect you from bad air
ITEM.category = "armor"
ITEM.flag = "a"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.60, -- Bullets
			0.60, -- Slash
			0.60, -- Shock
			0.60, -- Burn
			0.8, -- Radiation
			0.60, -- Acid
			0.60, -- Explosion
}