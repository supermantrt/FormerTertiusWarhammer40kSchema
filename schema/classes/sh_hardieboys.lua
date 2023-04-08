CLASS.name = "Hardie Boys"
CLASS.faction = FACTION_MANTICORE
CLASS.isDefault = false
CLASS.health = 200
CLASS.armor = 0

function CLASS:OnSpawn(client)
    -- Custom health and armor for players in this faction.
	local character = client:GetCharacter()
	client:SetMaxHealth( self.health + (character:GetAttribute("con", 0) * ix.config.Get("constitutionMultiplier")))
	client:SetHealth( self.health + (character:GetAttribute("con", 0) * ix.config.Get("constitutionMultiplier")))
    client:SetArmor(self.armor)
    client:SetAmmo( 100 , 1 )
	client:SetAmmo( 100 , 23 )
	client:SetAmmo( 100 , 6 )
	client:SetAmmo( 100 , 7 )
	client:SetAmmo( 100 , 4 )
	client:SetAmmo( 100 , 5 )
	client:SetAmmo( -1 , "hatshook_ammo")
	client:SetAmmo( 20 , "cod4rm_claymore")
	client:SetAmmo( 5 , "cod4rm_c4")
	client:SetAmmo( 20 , 8 )
	client:SetAmmo( 20 , 10 )
	client:SetAmmo( 10 , 94 )
	client:SetAmmo( 10 , 93 )
end

function CLASS:CanSwitchTo(client)
	return false
end

CLASS_HARD = CLASS.index