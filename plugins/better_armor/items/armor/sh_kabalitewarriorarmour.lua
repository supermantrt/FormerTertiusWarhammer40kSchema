ITEM.name = "Kabalite Warrior Armour"
ITEM.description = "-AEL- Due to the Dark Eldar's desire for speed and dexterity over defensibility, their armour is a thin, light-weight flexible bodysuit, pressurised to allow Warriors to traverse the vacuum of space. Just like standard-issue Eldar suits, they respond to neural impulses from their wearer and harden on command, allowing for the Warriors to shrug off civilian-grade firepower, but requiring them to rely on their superior combat abilities and quick reflexes to survive the engagement against more challenging targets."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 3
ITEM.height = 3
ITEM.armorAmount = 150
ITEM.Durability = 1005
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.75, -- Bullets
			0.85, -- Slash
			1, -- Shock
			1, -- Burn
			0.85, -- Radiation
			0.85, -- Acid
			1, -- Explosion
}

function ITEM:OnEquipped()
	self.player:GetCharacter():AddBoost("eldar","agi", 17)
end
 
function ITEM:OnUnequipped()
	self.player:GetCharacter():RemoveBoost("eldar","agi")
end