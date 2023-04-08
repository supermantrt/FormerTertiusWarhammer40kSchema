ITEM.name = "Frenzon"
ITEM.model = Model("models/dizcordum/wh/props/syringe_imperial_blood.mdl")
ITEM.description = "Combat Stimm."
ITEM.category = "Chemicals"
ITEM.flag = "i"
ITEM.price = 200

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player
		client:GetCharacter():AddBoost("frenzonstr","str", 20)
		client:GetCharacter():AddBoost("frenzoncon","con", 20)
		client:GetCharacter():AddBoost("frenzonagi","agi", 10)
		client:GetCharacter():AddBoost("frenzonint","int", -100)
		client:RestoreStamina(100)
		client:SetMaxHealth( client:GetMaxHealth() - 200 )
		client:SetHealth( client:Health() + (350 / (client:GetNetVar("DrugTaken",1))) )

		if(client:GetNetVar("DrugTaken",0) < 1) then
			client:SetRunSpeed(client:GetRunSpeed() * 2.25)
			client:SetWalkSpeed(client:GetWalkSpeed() * 2.25)
		end

		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
		client:SetNetVar("DrugTaken", client:GetNetVar("DrugTaken",0) + 1)
		
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