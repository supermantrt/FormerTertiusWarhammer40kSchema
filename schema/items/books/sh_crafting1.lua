local PLUGIN = PLUGIN

ITEM.name = "Crafting 101"
ITEM.model = "models/props_clutter/book_mq103.mdl"
ITEM.description = "The Book is nothing special with it having a drab grey look."
ITEM.width = 2
ITEM.height = 2
ITEM.category = "Books"
ITEM.flag = "p"

ITEM.functions.Read = {
	OnRun = function(itemTable)
		local client = itemTable.player
		if(client:GetCharacter():GetData("HasRead16", true) == false) then
			client:ChatNotify("I have already read this book and can gain no further knowledge from it")
			return false
		end
		client:GetCharacter():SetData("Crafting", true)
		client:GetCharacter():SetData("HasRead16", false)
		client:ChatNotify( "You read a long and dull text talking about the foundations of crafting")

		if(client:GetCharacter():GetData("Crafting", false) == true and client:GetCharacter():GetData("Crafting2", false) == true and client:GetCharacter():GetData("Crafting3", false) == true ) then
			client:GetCharacter():GiveFlags("Q")
		end
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}