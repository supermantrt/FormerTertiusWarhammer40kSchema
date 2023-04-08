ITEM.name = "Refractor Field Generator (Mid Grade)"
ITEM.description = "This refractor field has been tuned by the hand of others or by the hands of the mechanicus, seems to have regained most of its features and it works better than before, however at sub-optimal levels."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.armorAmount = 150
ITEM.Durability = 175
ITEM.gasmask = true -- It will protect you from bad air
ITEM.category = "armor"
ITEM.flag = "a"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.65, -- Bullets
			0.65, -- Slash
			0.65, -- Shock
			0.65, -- Burn
			1, -- Radiation
			0.65, -- Acid
			0.65, -- Explosion
}