ITEM.name = "Stimm"
ITEM.model = Model("models/dizcordum/wh/props/syringe_imperial_blood.mdl")
ITEM.description = "Combat Stimm."
ITEM.category = "Chemicals"
ITEM.flag = "i"
ITEM.price = 15

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player
		client:GetCharacter():AddBoost("stimmstr","str", 5)
		client:GetCharacter():AddBoost("stimmcon","con", 5)
		client:GetCharacter():AddBoost("stimmagi","agi", -2)
		client:GetCharacter():AddBoost("stimmint","int", -10)
		client:RestoreStamina(100)
		client:SetMaxHealth( client:GetMaxHealth() - 50 )
		client:SetHealth( client:Health() + (150 / (client:GetNetVar("DrugTaken",1))) )

		if(client:GetNetVar("DrugTaken",0) < 1) then
			client:SetRunSpeed(client:GetRunSpeed() * 1.25)
			client:SetWalkSpeed(client:GetWalkSpeed() * 1.25)
		end

		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
		client:SetNetVar("DrugTaken", client:GetNetVar("DrugTaken",0) + 1)
		if(client:GetMaxHealth() <= 0) then
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