ITEM.name = "Mesh Armour"
ITEM.description = "Mesh Armour is formed of tens of thousands of individual pieces of thermoplas interwoven to produce a dense material resembling reptile scales or chainmail. It becomes momentarily rigid when hit, spreading force across a larger area, thereby reducing the damage. The thermoplas also disperses heat rapidly, giving reasonable protection against energy weapons."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 4
ITEM.height = 3
ITEM.armorAmount = 100
ITEM.Durability = 505
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.75, -- Bullets
			0.80, -- Slash
			1, -- Shock
			1, -- Burn
			0.85, -- Radiation
			0.85, -- Acid
			1, -- Explosion
}

function ITEM:OnEquipped()
	self.player:GetCharacter():AddBoost("eldar","agi", 15)
end
 
function ITEM:OnUnequipped()
	self.player:GetCharacter():RemoveBoost("eldar","agi")
end