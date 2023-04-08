ITEM.name = "Grot Tank"
ITEM.description = "-GRE- You are in a tank like the little big boy you are!"
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 5
ITEM.height = 5
ITEM.armorAmount = 200
ITEM.Durability = 265
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.75, -- Bullets
			0.65, -- Slash
			0.65, -- Shock
			0.95, -- Burn
			0.20, -- Radiation
			1, -- Acid
			0.45, -- Explosion
}

function ITEM:OnEquipped()
	self.player:GetCharacter():AddBoost("eldar","con", 10)
end
 
function ITEM:OnUnequipped()
	self.player:GetCharacter():RemoveBoost("eldar","con")
end