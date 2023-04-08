ITEM.name = "Enforcer Medic Armor"
ITEM.description = "Enforcer Armor."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 4
ITEM.height = 3
ITEM.armorAmount = 125
ITEM.Durability = 150
ITEM.gasmask = true -- It will protect you from bad air
ITEM.category = "armor"
ITEM.flag = "a"

ITEM.replacement = "models/black_fusiliers_med.mdl"

ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
            0.75, -- Bullets
            0.8, -- Slash
            1, -- Shock
            1, -- Burn
            1, -- Radiation
            0.9, -- Acid
            1, -- Explosion
}