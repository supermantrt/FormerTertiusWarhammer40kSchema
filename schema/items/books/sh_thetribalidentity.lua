local PLUGIN = PLUGIN

ITEM.name = "Scars of a story"
ITEM.model = "models/props_clutter/book_skyrim_back.mdl"
ITEM.description = "The book has a distinct style with a normal hardback cover but the cover seems to have been made that the book appears torn and scarred."
ITEM.width = 2
ITEM.height = 1
ITEM.category = "Books"
ITEM.flag = "p"

ITEM.functions.Read = {
	OnRun = function(itemTable)
		local client = itemTable.player
		if(client:GetCharacter():GetData("HasRead3", true) == false) then
			client:ChatNotify("I have already read this book and can gain no further knowledge from it")
			return false
		end
		client:GetCharacter():UpdateAttrib("int", 0.25)
		client:GetCharacter():SetData("HasRead3", false)
		client:ChatNotify("The book is quite intriguing with it showing various images of what would almost be artworks. There are scars shown throughout and display meanings from a cultural to a historic sense. You feel that with reference you may be able to understand more about what the scars on navarran people mean yet you cant scratch the itch that there is something more to it.")
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}