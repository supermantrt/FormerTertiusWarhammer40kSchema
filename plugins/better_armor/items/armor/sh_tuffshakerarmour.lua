ITEM.name = "Tuff Boy Armor"
ITEM.description = "-ORK- Only the strongest of orks can carry this armour that protects them well, they are real tuff boyz."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 4
ITEM.height = 3
ITEM.armorAmount = 200
ITEM.Durability = 300
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
            0.70, -- Bullets
            0.75, -- Slash
            1, -- Shock
            0.4, -- Burn
            1, -- Radiation
            0.9, -- Acid
            0.9, -- Explosion
}