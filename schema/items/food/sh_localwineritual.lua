ITEM.name = "Local Ritual Wine "
ITEM.model = Model("models/cyrodilac_wine.mdl")
ITEM.description = "Upon drinking it, you can see multiple strange figures dancing next to you, looking up to the sun you can see it with a face and looking at people makes it seem like they are radiating an aura."
ITEM.price = 0
ITEM.flag = "g"
ITEM.category = "Exotic Drink"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player
		client:GetCharacter():AddBoost("ritwinestr","str", math.random( -10, 10 ))
		client:GetCharacter():AddBoost("ritwinecon","con", math.random( -10, 10 ))
		client:GetCharacter():AddBoost("fritwineagi","agi", math.random( -10, 10 ))
		client:GetCharacter():AddBoost("ritwineint","int", math.random( -10, 10 ))
		client:RestoreStamina(100)
		client:SetMaxHealth( client:Health() + math.random( -200, 200 ) )
		client:SetHealth( client:Health() + math.random( -200, 200 ) )
		client:SetRunSpeed(client:GetRunSpeed() + math.random( -200, 200 ))
		client:SetWalkSpeed(client:GetWalkSpeed() + math.random( -200, 200 ))
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
		client:IncreaseDrunkLevel(5)
		if(client:Health() < 0) then
			client:Kill()
		end
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}