ITEM.name = "Excellent Ork Scrap Armour"
ITEM.description = "-ORK- A bunch of scrap pulled together by some ropes, it the scraps on this one are pretty hard and advanced it's too big to wear for other species but it works for an ork."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 4
ITEM.height = 4
ITEM.armorAmount = 150
ITEM.Durability = 350
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
            0.75, -- Bullets
            0.80, -- Slash
            1, -- Shock
            1, -- Burn
            1, -- Radiation
            0.8, -- Acid
            0.8, -- Explosion
}
ITEM.RepairItem = "Plasteel"