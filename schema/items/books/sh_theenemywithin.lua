local PLUGIN = PLUGIN

ITEM.name = "A Species Mistake"
ITEM.model = "models/props_clutter/book_mq103.mdl"
ITEM.description = "The Book has nothing abnormal about it other strange symbols on the edge of it"
ITEM.width = 2
ITEM.height = 2
ITEM.category = "Books"
ITEM.flag = "p"

ITEM.functions.Read = {
	OnRun = function(itemTable)
		local client = itemTable.player
		if(client:GetCharacter():GetData("HasRead11", true) == false) then
			client:ChatNotify("I have already read this book and can gain no further knowledge from it")
			return false
		end
		client:GetCharacter():UpdateAttrib("int", 0.5)
		client:GetCharacter():SetData("HasRead11", false)
		client:ChatNotify( "The book is a scrathing critique of the modern imperiums stance on sanctioning psykers. It talks in length and almost goes into massive rabmblings about the abhorent nature of the psychic menance and how the imperiums woes will all be fixed by the elemination and genoicde of all those with the psychic gene. The final words read 'Do not suffer the mutant! They are a deciver by birth and if not dealt with shall lead to the end of not just you or me but humanity as a whole!'")
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}