ITEM.name = "Astartes Power Armour"
ITEM.description = "Woaw, is this power armor?"
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 4
ITEM.height = 3
ITEM.armorAmount = 800
ITEM.Durability = 1000
ITEM.gasmask = true -- It will protect you from bad air
ITEM.category = "armor"
ITEM.flag = "a"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.4, -- Bullets
			0.4, -- Slash
			0.4, -- Shock
			0.4, -- Burn
			0.4, -- Radiation
			0.4, -- Acid
			0.4, -- Explosion
}