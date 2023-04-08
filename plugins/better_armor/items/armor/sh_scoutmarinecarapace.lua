ITEM.name = "Scout-Marine Carapace"
ITEM.description = "Scout Armour is worn by Space Marine Scouts before they have been given a suit of power armour. It is made of overlapping plates of carapace armour which can easily stop a bullet, while the fatigues are made of ballistic nylon which gives further protection without reducing the Scout's movement. It is much quieter and less cumbersome than power armour which makes Scouts ideal for infiltration and sniper duties where silence is paramount."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 3
ITEM.height = 3
ITEM.armorAmount = 100
ITEM.Durability = 450
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.75, -- Bullets
			0.75, -- Slash
			1, -- Shock
			0.85, -- Burn
			1, -- Radiation
			0.85, -- Acid
			1, -- Explosion
}