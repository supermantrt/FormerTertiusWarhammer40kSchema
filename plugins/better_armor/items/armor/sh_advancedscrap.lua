ITEM.name = "Advanced Ork Armour"
ITEM.description = "-ORK- A bunch of scrap pulled together by some ropes, it is comprised of more metallic materials providing more protection."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 4
ITEM.height = 4
ITEM.armorAmount = 100
ITEM.Durability = 150
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
            0.85, -- Bullets
            0.85, -- Slash
            1, -- Shock
            1, -- Burn
            1, -- Radiation
            0.9, -- Acid
            0.95, -- Explosion
}
ITEM.RepairItem = "Plasteel"