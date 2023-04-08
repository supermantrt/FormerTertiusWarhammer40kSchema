ITEM.name = "'Eavy Armour"
ITEM.description = "'Eavy Armour is made up of several metal plates, often actually riveted to the Ork. The solid plates give good protection against incoming damage but it is cumbersome to wear."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 4
ITEM.height = 4
ITEM.armorAmount = 265
ITEM.Durability = 300
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.70, -- Bullets
			0.70, -- Slash
			1, -- Shock
			0.7, -- Burn
			1, -- Radiation
			0.65, -- Acid
			0.80, -- Explosion
}