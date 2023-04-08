ITEM.name = "Studded Armour"
ITEM.description = "Studded Armour is made of tanned Squig skin with occasional metal plates. It is commonly worn by all Ork Boys, because it looks hard and offers some protection, especially against primitive weapons, such as spears or arrows. These heavy leathers are the most common type of Ork armour, and Orks often use the colour of their squigshade to show allegiance to a particular Clan or Warboss."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 4
ITEM.height = 3
ITEM.armorAmount = 155
ITEM.Durability = 135
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.7, -- Bullets
			0.75, -- Slash
			1, -- Shock
			1, -- Burn
			1, -- Radiation
			0.85, -- Acid
			1, -- Explosion
}