ITEM.name = "Flect"
ITEM.model = Model("models/jackswan/wk_pills_one.mdl")
ITEM.description = "A singular glass shard can be found inside, gazing at it too long can lead to trauma."
ITEM.category = "Chemicals"
ITEM.flag = "i"
ITEM.price = 185

ITEM.functions.Eat = {
	OnRun = function(itemTable)
	   	local client = itemTable.player
		client:GetCharacter():AddBoost("flectstr","str", math.random( -100, 100 ))
		client:GetCharacter():AddBoost("flectcon","con", math.random( -100, 100 ))
		client:GetCharacter():AddBoost("flectagi","agi", math.random( -100, 100 ))
		client:GetCharacter():AddBoost("flectint","int", math.random( -100, 100 ))
		client:RestoreStamina(100)
		client:SetMaxHealth( client:GetMaxHealth() + math.random( -500, 500 ) )
		client:SetHealth( client:Health() + math.random( -500, 500 ) )
		client:SetRunSpeed(client:GetRunSpeed() + math.random( -500, 500 ))
		client:SetWalkSpeed(client:GetWalkSpeed() + math.random( -500, 500 ))
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
		
		if(client:GetRunSpeed() < 0) then
		    client:SetRunSpeed( 0 )
		end
		if(client:GetWalkSpeed() < 0) then
		    client:SetWalkSpeed( 0 )
		end
		
		if(client:GetMaxHealth() <= 0) then
			client:Kill()
		end
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}