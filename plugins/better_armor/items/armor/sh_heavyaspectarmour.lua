ITEM.name = "Heavy Aspect Armour"
ITEM.description = "Heavy Aspect Armour while making movement a bit harder improves resistance."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 4
ITEM.height = 3
ITEM.armorAmount = 500
ITEM.Durability = 605
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
            0.50, -- Bullets
            0.55, -- Slash
            1, -- Shock
            1, -- Burn
            0.85, -- Radiation
            0.85, -- Acid
            0.70, -- Explosion
}

function ITEM:OnEquipped()
    self.player:GetCharacter():AddBoost("eldar","agi", 5)
end
 
function ITEM:OnUnequipped()
    self.player:GetCharacter():RemoveBoost("eldar","agi")
end