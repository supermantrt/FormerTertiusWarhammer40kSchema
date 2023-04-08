ITEM.name = "Excellent Flak Armor"
ITEM.description = "An excellent piece of Flak Armour."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 4
ITEM.height = 3
ITEM.armorAmount = 200
ITEM.Durability = 200
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.7, -- Bullets
			0.7, -- Slash
			1, -- Shock
			1, -- Burn
			1, -- Radiation
			0.75, -- Acid
			1, -- Explosion
}