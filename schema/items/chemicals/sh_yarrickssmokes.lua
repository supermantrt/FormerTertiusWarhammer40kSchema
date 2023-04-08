ITEM.name = "Yarrick's Smokes!"
ITEM.model = Model("models/props/hosti/sigar.mdl")
ITEM.description = "The best Cigars in the Imperium, renown for their usage by the great Commissar Yarrick. If commissars can't be bought this will certainly tempt them."
ITEM.category = "Chemicals"
ITEM.flag = "g"
ITEM.price = 10

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player
		client:GetCharacter():AddBoost("yarricksmokestr","str", 5)
		client:GetCharacter():AddBoost("yarricksmokecon","con", 5)
		client:GetCharacter():AddBoost("yarricksmokeagi","agi", -2)
		client:RestoreStamina(100)
		client:SetMaxHealth( client:Health() - 10 )
		client:SetHealth( client:Health() - 10 )
		client:SetRunSpeed(client:GetRunSpeed() + 50)
		client:SetWalkSpeed(client:GetWalkSpeed() + 50)
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
		if(client:Health() < 0) then
			client:Kill()
		end
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