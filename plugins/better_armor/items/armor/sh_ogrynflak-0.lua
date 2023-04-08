ITEM.name = "Ogryn Flak"
ITEM.description = "Good armor for the Emperor's most precious."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 4
ITEM.height = 4
ITEM.armorAmount = 200
ITEM.Durability = 465
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.90, -- Bullets
			0.85, -- Slash
			0.80, -- Shock
			0.90, -- Burn
			0.95, -- Radiation
			0.85, -- Acid
			0.80, -- Explosion
}

function ITEM:OnEquipped()
	self.player:GetCharacter():AddBoost("eldar","str", 15)
end
 
function ITEM:OnUnequipped()
	self.player:GetCharacter():RemoveBoost("eldar","str")
end