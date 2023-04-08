ITEM.name = "Theosophist's Philtre"
ITEM.model = Model("models/props/hosti/amasek3.mdl")
ITEM.description = "Said to be the best alcohol known to man. Those who enjoy a higher status in life find this very rare and is valued as a sign of culture and wealth amongst the sophisticates of the Calixis Sector."
ITEM.category = "Chemicals"
ITEM.flag = "i"
ITEM.price = 10

ITEM.functions.Eat = {
	OnRun = function(itemTable)
	   	local client = itemTable.player
		client:GetCharacter():AddBoost("philtrestr","str", 5)
		client:GetCharacter():AddBoost("philtrecon","con", 5)
		client:GetCharacter():AddBoost("philtreagi","agi", -3)
		client:GetCharacter():AddBoost("philtreint","int", -2)
		client:RestoreStamina(100)
		client:SetMaxHealth( client:Health() + 25 )
		client:SetHealth( client:Health() + 15 )
		client:SetRunSpeed(client:GetRunSpeed() - 15)
		client:SetWalkSpeed(client:GetWalkSpeed() - 15)
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
		
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