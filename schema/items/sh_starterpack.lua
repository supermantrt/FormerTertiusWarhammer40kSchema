local PLUGIN = PLUGIN

ITEM.name = "Tertius Starter Pack"
ITEM.model = "models/hpwrewrite/books/book2.mdl"
ITEM.description = "Welcome to Project Tertius : Rouge Trader RP. You are a mercenary that for some reason has decided to join this crew. Your fate is your own and the outcomes you choose are only yours for the making. You for now are a human or xeno of some sort that is aboard this vessel. Your equipment is basic and your pockets empty. You will need to participate in contracts to earn your gear and keep. Toughen your body and mind through various activities to prepare yourself for the trials to come. We hope you enjoy your stay."
ITEM.width = 1
ITEM.height = 1
--ITEM.category = "Books"
ITEM.flag = "p"

ITEM.functions.Use = {
	OnRun = function(itemTable)
		local client = itemTable.player
		local character = client:GetCharacter()
		local inv = character:GetInventory()

		inv:Add("handheld_radio" , 1)
		inv:Add("flashlight" , 1)
		inv:Add("autogun" , 1)
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}