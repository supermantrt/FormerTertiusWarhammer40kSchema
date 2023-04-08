ITEM.name = "Refractor Field Generator (Low Grade)"
ITEM.description = " refractor field generator is a small device which projects a protective energy field around the user. Its effect is to disperse the energy of an incoming shot or blow over the total area of the field. This one seems to be produced with alot of features missing and more streamlined for mass-use, qantity over quality"
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.armorAmount = 150
ITEM.Durability = 150
ITEM.gasmask = true -- It will protect you from bad air
ITEM.category = "armor"
ITEM.flag = "a"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.7, -- Bullets
			0.7, -- Slash
			0.7, -- Shock
			0.7, -- Burn
			1, -- Radiation
			0.7, -- Acid
			0.7, -- Explosion
}