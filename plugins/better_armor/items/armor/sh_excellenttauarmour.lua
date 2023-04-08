ITEM.name = "Excellent Combat Armour"
ITEM.description = "Combat Armour is the standard armour worn by Tau Fire Warriors on the battlefield. Constructed in two layers, the outer face is hard and ultra-dense nano-crystalline metal veneer bounded to an inner layer of high-performance, thermo-set, molecular polythene."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 4
ITEM.height = 3
ITEM.armorAmount = 250
ITEM.Durability = 1000
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.60, -- Bullets
			0.65, -- Slash
			0.80, -- Shock
			0.85, -- Burn
			0.75, -- Radiation
			0.25, -- Acid
			0.80, -- Explosion
}