ITEM.name = "Scrap Ork Armour"
ITEM.description = "-ORK- A bunch of scrap pulled together by some ropes, it offers little protection but it's perfect for a greenskin."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 4
ITEM.height = 3
ITEM.armorAmount = 50
ITEM.Durability = 100
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
            0.9, -- Bullets
            0.95, -- Slash
            1, -- Shock
            1, -- Burn
            1, -- Radiation
            0.9, -- Acid
            1, -- Explosion
}