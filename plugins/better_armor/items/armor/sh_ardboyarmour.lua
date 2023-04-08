ITEM.name = "A'rd boy's Armor"
ITEM.description = "-ORK- Dis gonna protect da boyz real good."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 4
ITEM.height = 4
ITEM.armorAmount = 150
ITEM.Durability = 210
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
            0.80, -- Bullets
            0.75, -- Slash
            1, -- Shock
            1, -- Burn
            1, -- Radiation
            0.9, -- Acid
            1, -- Explosion
}