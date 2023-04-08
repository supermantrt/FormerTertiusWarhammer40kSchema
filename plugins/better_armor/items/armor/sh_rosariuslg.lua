ITEM.name = "Rosarius (Low Grade)"
ITEM.description = "This is a cheaper and more streamlined rosarius for the priesthood of terra. These special rosarius were meant to be produced in high ammounts with relative low quality. It stil offers decent protection but it won't be the best."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.armorAmount = 300
ITEM.Durability = 100
ITEM.gasmask = true -- It will protect you from bad air
ITEM.category = "armor"
ITEM.flag = "a"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.7, -- Bullets
			0.7, -- Slash
			0.7, -- Shock
			0.7, -- Burn
			1, -- Radiation
			0.6, -- Acid
			0.4, -- Explosion
}