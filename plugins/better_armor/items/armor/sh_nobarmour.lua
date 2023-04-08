ITEM.name = "Nob Scrap Armor"
ITEM.description = "-ORK- Da nobs got sum good armah notin can get trugh that."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 4
ITEM.height = 3
ITEM.armorAmount = 150
ITEM.Durability = 400
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
            0.70, -- Bullets
            0.60, -- Slash
            1, -- Shock
            0.80, -- Burn
            1, -- Radiation
            0.80, -- Acid
            0.75, -- Explosion
}