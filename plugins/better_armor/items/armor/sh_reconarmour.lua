ITEM.name = "Recon Armour"
ITEM.description = "Armour worn by the Recon troops."
ITEM.model = "models/props_junk/cardboard_box001a.mdl"
ITEM.width = 3
ITEM.height = 3
ITEM.armorAmount = 150
ITEM.Durability = 305
ITEM.gasmask = true -- It will protect you from bad air
ITEM.flag = "a"
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
            0.80, -- Bullets
            0.95, -- Slash
            1, -- Shock
            1, -- Burn
            0.85, -- Radiation
            0.85, -- Acid
            1, -- Explosion
}

function ITEM:OnEquipped()
    self.player:GetCharacter():AddBoost("privateer","agi", 5)
end
 
function ITEM:OnUnequipped()
    self.player:GetCharacter():RemoveBoost("privateer","agi")
end