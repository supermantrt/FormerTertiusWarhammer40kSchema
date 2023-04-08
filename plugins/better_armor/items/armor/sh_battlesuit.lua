ITEM.name = "XV-8 Battlesuit"
ITEM.description = "-TAU- The XV-8 Is an impressive battlesuit made by the T'au Empire it is quite powerful and the wearer wields great strength.."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 4
ITEM.height = 4
ITEM.armorAmount = 450
ITEM.Durability = 465
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.40, -- Bullets
			0.55, -- Slash
			0.50, -- Shock
			0.50, -- Burn
			0.20, -- Radiation
			0.40, -- Acid
			0.45, -- Explosion
}

function ITEM:OnEquipped()
	self.player:GetCharacter():AddBoost("eldar","agi", 10)
end
 
function ITEM:OnUnequipped()
	self.player:GetCharacter():RemoveBoost("eldar","agi")
end