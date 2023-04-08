ITEM.name = "Human Power Armour"
ITEM.description = "Woaw, is this power armor?"
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 4
ITEM.height = 3
ITEM.armorAmount = 500
ITEM.Durability = 750
ITEM.gasmask = true -- It will protect you from bad air
ITEM.category = "armor"
ITEM.flag = "a"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.55, -- Bullets
			0.55, -- Slash
			0.65, -- Shock
			0.55, -- Burn
			0.65, -- Radiation
			0.65, -- Acid
			0.55, -- Explosion
}