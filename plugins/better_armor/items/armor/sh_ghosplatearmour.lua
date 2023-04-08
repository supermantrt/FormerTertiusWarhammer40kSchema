ITEM.name = "Ghostplate Armour"
ITEM.description = "-AEL- Ghostplate Armour is worn by Dark Eldar and favoured amongst Archons who wish to combine substantial protection with great mobility. The armour itself is fashioned from hardened resins containing pockets of lighter-than-air gas. It also incorporates mini-forcefield projectors for additional protection."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 3
ITEM.height = 3
ITEM.armorAmount = 145
ITEM.Durability = 435
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.60, -- Bullets
			0.50, -- Slash
			0.75, -- Shock
			0.85, -- Burn
			0.65, -- Radiation
			0.65, -- Acid
			0.85, -- Explosion
}

function ITEM:OnEquipped()
	self.player:GetCharacter():AddBoost("eldar","agi", 15)
end
 
function ITEM:OnUnequipped()
	self.player:GetCharacter():RemoveBoost("eldar","agi")
end