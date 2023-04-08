ITEM.name = "A'rd Nob Armor"
ITEM.description = "-ORK- Very tough and sturdy armor used by the hardests of nobs."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 4
ITEM.height = 4
ITEM.armorAmount = 200
ITEM.Durability = 800
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
            0.65, -- Bullets
            0.70, -- Slash
            1, -- Shock
            1, -- Burn
            1, -- Radiation
            0.80, -- Acid
            0.70, -- Explosion
}