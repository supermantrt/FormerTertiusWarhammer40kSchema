ITEM.name = "Refractor Field Generator (Low Fequency)"
ITEM.description = "Fully restored refractor, it offers three frequencies, low, mid, high. This one is set to High, damage directed at the user by is negated by expending electrical energy. The amount absorbed varies depending on the Impact Speed of an attack and the quality of the components used. In short, the lower the frequency the better it will do against slower attack such as melee and so on with high frequency."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.armorAmount = 250
ITEM.Durability = 200
ITEM.gasmask = true -- It will protect you from bad air
ITEM.category = "armor"
ITEM.flag = "a"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.9, -- Bullets
			0.4, -- Slash
			0.6, -- Shock
			0.5, -- Burn
			1, -- Radiation
			0.9, -- Acid
			0.9, -- Explosion
}