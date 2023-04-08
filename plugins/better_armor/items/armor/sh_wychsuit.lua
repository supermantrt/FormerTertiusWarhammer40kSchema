ITEM.name = "Wychsuit"
ITEM.description = "-AEL- Wyches wear a flexible bodyglove known as a Wychsuit. The most notable feature of this suit is that it has been designed to particularly protect one side of the wearers body (usually the side they most often expose to their opponents) whilst the other side has sections cut away, baring naked flesh."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 4
ITEM.height = 3
ITEM.armorAmount = 95
ITEM.Durability = 1385
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.85, -- Bullets
			0.75, -- Slash
			1, -- Shock
			0.95, -- Burn
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