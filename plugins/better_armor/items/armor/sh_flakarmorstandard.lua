ITEM.name = "Standard Flak Armor"
ITEM.description = "A standard piece of Flak Armour."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 4
ITEM.height = 3
ITEM.armorAmount = 100
ITEM.Durability = 100
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.8, -- Bullets
			0.85, -- Slash
			1, -- Shock
			1, -- Burn
			1, -- Radiation
			0.9, -- Acid
			1, -- Explosion
}