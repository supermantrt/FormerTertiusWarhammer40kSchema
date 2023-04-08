ITEM.name = "Amasec"
ITEM.model = Model("models/props/hosti/amasek2.mdl")
ITEM.description = "Good ol' jug of high-quality alcohol."
ITEM.category = "Chemicals"
ITEM.flag = "i"
ITEM.price = 5

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player
        client:RestoreStamina(100)
		client:SetMaxHealth( client:Health() + 10 )
        client:SetHealth( client:Health() + 10 )
        client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
		client:GetCharacter():AddBoost("amasecstr","str", 2)
		client:GetCharacter():AddBoost("amaseccon","con", 2)
		client:GetCharacter():AddBoost("amasecagi","agi", -1)
		client:GetCharacter():AddBoost("amasecint","int", -2)
		client:IncreaseDrunkLevel(50)
		if(client:GetRunSpeed() > 100) then
			client:SetRunSpeed(client:GetRunSpeed() - 100)
			client:SetWalkSpeed(client:GetWalkSpeed() - 100)
		else
		    client:SetRunSpeed( 0 )
		    client:SetWalkSpeed( 0 )
		end
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}