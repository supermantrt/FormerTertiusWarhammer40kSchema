ITEM.name = "Excellent Flak Gretchin Armour"
ITEM.description = "-Gretchin- A bunch of scrap pulled together by some ropes, it offers little protection but it's perfect for a midget like gretchin."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.armorAmount = 200
ITEM.Durability = 250
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
            0.90, -- Bullets
            0.90, -- Slash
            1, -- Shock
            1, -- Burn
            1, -- Radiation
            1, -- Acid
            1, -- Explosion
}