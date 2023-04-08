ITEM.name = "RPG Missile"
ITEM.model = "models/weapons/w_missile_closed.mdl"
ITEM.ammo = "rpg_round" -- type of the ammo
ITEM.ammoAmount = 8 -- amount of the ammo
ITEM.width = 2
ITEM.description = "A Package of Rockets"
ITEM.maxStacks = 8

ITEM.functions.use = {
	name = "Load",
	tip = "useTip",
	icon = "icon16/add.png",
	OnRun = function(item)
		local rounds = item:GetData("rounds", item.ammoAmount)
		item.player:GiveAmmo(rounds, item.ammo)
		item.player:EmitSound("items/ammo_pickup.wav", 110)

		local character = item.player:GetCharacter()
		local inventory = character:GetInventory()

		if(item.base == 'base_stackable') then
			if(item:GetData("stacks", 1) >= 1) then
				if(item:GetData('stacks', 1) > 1) then
					item:SetData('stacks', item:GetData("stacks") - 1)
					return false
				end
			end
		end
		return true
	end,
}