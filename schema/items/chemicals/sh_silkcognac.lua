ITEM.name = "Jovian Silk Cognac"
ITEM.model = Model("models/props/hosti/kvass.mdl")
ITEM.description = "very expensive spirit. A glass is worth more than the entirety of a poorer individaul's possession."
ITEM.category = "Chemicals"
ITEM.flag = "i"
ITEM.price = 5

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player
		client:GetCharacter():AddBoost("silcognacstr","str", 3)
		client:GetCharacter():AddBoost("silcognaccon","con", 3)
		client:GetCharacter():AddBoost("silcognacagi","agi", 2)
		client:GetCharacter():AddBoost("silcognacint","int", -2)
		client:RestoreStamina(100)
		client:SetMaxHealth( client:Health() + 10 )
		client:SetHealth( client:Health() + 5 )
		client:SetRunSpeed(client:GetRunSpeed() - 30)
		client:SetWalkSpeed(client:GetWalkSpeed() - 30)
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
		client:IncreaseDrunkLevel(20)
		if(client:GetRunSpeed() < 0) then
		    client:SetRunSpeed( 0 )
		end
		if(client:GetWalkSpeed() < 0) then
		    client:SetWalkSpeed( 0 )
		end
		
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}