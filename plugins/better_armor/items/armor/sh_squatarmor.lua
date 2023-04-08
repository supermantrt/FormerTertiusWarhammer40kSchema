ITEM.name = "Squat Power Armor"
ITEM.description = "Used by the Hearthguard this power armor is specifically designed for squats and can only be used by them."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 4
ITEM.height = 3
ITEM.armorAmount = 500
ITEM.Durability = 1580
ITEM.gasmask = true -- It will protect you from bad air
ITEM.category = "armor"
ITEM.flag = "a"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.55, -- Bullets
			0.45, -- Slash
			0.75, -- Shock
			0.7, -- Burn
			0.65, -- Radiation
			0.7, -- Acid
			0.7, -- Explosion
}