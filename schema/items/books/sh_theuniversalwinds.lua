local PLUGIN = PLUGIN

ITEM.name = "Remember the Stars"
ITEM.model = "models/props_clutter/book_mq103.mdl"
ITEM.description = "The Book has a fine make but what is most noticable is the beautiful cover of stars in the galaxy which you swear almost twinkle."
ITEM.width = 2
ITEM.height = 2
ITEM.category = "Books"
ITEM.flag = "p"

ITEM.functions.Read = {
	OnRun = function(itemTable)
		local client = itemTable.player
		if(client:GetCharacter():GetData("HasRead9", true) == false) then
			client:ChatNotify("I have already read this book and can gain no further knowledge from it")
			return false
		end
		client:GetCharacter():UpdateAttrib("int", 0.5)
		client:GetCharacter():SetData("HasRead9", false)
		client:ChatNotify("The book seems to be a memoir of a rogue trader. It talks about the many far exotic places they have visited and the adventures they had partook in. It talks about a life of freedom and adventure. The enthusiasm makes you forget the horrors you have witnessed but feel proud and excited for things to come.")
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}