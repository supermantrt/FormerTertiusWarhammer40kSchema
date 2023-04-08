ITEM.name = "Rosarius (Mid Grade)"
ITEM.description = "Improved rosarius, either by the hands of the mechanicus or by the hands of others who are more inclined in ways of reforging. This specific rosarius was used previously and most of it was destoryed however through extensive work many of the rosarius features have been tuned to a balanced state."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.armorAmount = 300
ITEM.Durability = 175
ITEM.gasmask = true -- It will protect you from bad air
ITEM.category = "armor"
ITEM.flag = "a"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.6, -- Bullets
			0.6, -- Slash
			0.6, -- Shock
			0.6, -- Burn
			0.9, -- Radiation
			0.6, -- Acid
			0.6, -- Explosion
}