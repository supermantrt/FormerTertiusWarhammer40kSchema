ITEM.name = "Enforcer Officer Armor"
ITEM.description = "Luv me Enforcers. simple as."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 4
ITEM.height = 3
ITEM.armorAmount = 185
ITEM.Durability = 175
ITEM.gasmask = true -- It will protect you from bad air
ITEM.category = "armor"
ITEM.flag = "a"

ITEM.replacement = "models/black_fusiliers_sgt.mdl"

ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.70, -- Bullets
			0.60, -- Slash
			0.70, -- Shock
			0.70, -- Burn
			0.95, -- Radiation
			0.80, -- Acid
			0.60, -- Explosion
}