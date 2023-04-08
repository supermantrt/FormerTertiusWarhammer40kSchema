ITEM.name = "Rosarius (Forge Grade)"
ITEM.description = "Highest grade of Rosarius, its been fine tuned to perfection everything has been optimized for it to work as an extremely elegant piece of kit, only masters of the forge can make devices of such craftmanship."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.armorAmount = 300
ITEM.Durability = 500
ITEM.gasmask = true -- It will protect you from bad air
ITEM.category = "armor"
ITEM.flag = "a"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.5, -- Bullets
			0.4, -- Slash
			0.5, -- Shock
			0.5, -- Burn
			0.8, -- Radiation
			0.5, -- Acid
			0.3, -- Explosion
}