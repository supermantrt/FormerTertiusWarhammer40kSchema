ITEM.name = "Heavy Carapace Armor"
ITEM.description = "What better than Carapace. Especially a set worn by Bullgryns?"
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 4
ITEM.height = 3
ITEM.armorAmount = 200
ITEM.Durability = 300
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.70, -- Bullets
			0.60, -- Slash
			0.65, -- Shock
			0.65, -- Burn
			1, -- Radiation
			0.65, -- Acid
			1, -- Explosion
}