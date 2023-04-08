ITEM.name = "Plot Armor"
ITEM.description = "The Ultramarines, in the days before being reunited with their Primarch, were originally known as XIII Legion. The legion was created towards the end of the Unification Wars, developed from a gene-seed that was noted to be absent of mutation and with a high adaptability. The original recruits were drawn from from the sub-equatorial maglev clans of Panpocro, the war families of the Saragon Enclave, the Midafrik Hive Oligarchy and the anthropophagic tribes of the Caucasus Wastes. As varied in culture and origin as these groups were, they all had one factor in common; their violent and often bitter resistance to the later stages of Unification, a resistance broken ultimately in each case not by negotiated surrender but near annihilation, with in some situations little remaining save interned refugees and orphaned populations left by the savage conflicts which had brought these peoples to heel. The legion was created at such a late stage in the war that they have no recorded combat operations on Terra, instead being used for the first time for the liberation of the Solar System."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 4
ITEM.height = 3
ITEM.armorAmount = 9000
ITEM.Durability = 9000
ITEM.gasmask = true -- It will protect you from bad air
ITEM.category = "armor"
ITEM.flag = "a"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.1, -- Bullets
			0.1, -- Slash
			0.1, -- Shock
			0.1, -- Burn
			0.1, -- Radiation
			0.1, -- Acid
			0.1, -- Explosion
}