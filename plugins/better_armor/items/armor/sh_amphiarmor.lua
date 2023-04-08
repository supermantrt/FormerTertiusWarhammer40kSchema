ITEM.name = "Amphi Armor"
ITEM.description = "The Amphi have their own skin as body armor."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.armorAmount = 100
ITEM.Durability = 10000
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
            0.90, -- Bullets
            0.95, -- Slash
            1, -- Shock
            1, -- Burn
            1, -- Radiation
            1, -- Acid
            1, -- Explosion
}