ITEM.name = "Mega Nob Armor"
ITEM.description = "-ORK- An entire metallic suit worn by the toughest of greenskins, finding one is extremely rare and as human you're going to have an incredibly hard time even carrying it. Even the biggest orks will be slowed down when using it."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 5
ITEM.height = 5
ITEM.armorAmount = 300
ITEM.Durability = 1000
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
            0.55, -- Bullets
            0.50, -- Slash
            0.65, -- Shock
            0.75, -- Burn
            0.95, -- Radiation
            0.60, -- Acid
            0.40, -- Explosion
}