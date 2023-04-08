ITEM.name = "Ammo Pack"
ITEM.model = "models/muschi/props/muschi_prop_ammo.mdl"
ITEM.ammoAmount = 180 -- amount of the ammo
ITEM.description = "Contains rifle ammo"
ITEM.price = 0
ITEM.maxStacks = 20

ITEM.functions.use = {
	name = "Load",
	tip = "useTip",
	icon = "icon16/add.png",
	OnRun = function(item)
		local rounds = item:GetData("rounds", item.ammoAmount)
		item.player:GiveAmmo(rounds, "ar2")
		item.player:GiveAmmo(rounds, "357")
		item.player:GiveAmmo(rounds, "smg1")
		item.player:GiveAmmo(rounds, "pistol")
		item.player:GiveAmmo(rounds, "buckshot")
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