local PLUGIN = PLUGIN

ITEM.name = "The Emperor's Angels"
ITEM.model = "models/props_clutter/book_mq103.mdl"
ITEM.description = "The Book has a cheap look with the print date recent but almost falling apart"
ITEM.width = 2
ITEM.height = 2
ITEM.category = "Books"
ITEM.flag = "p"

ITEM.functions.Read = {
	OnRun = function(itemTable)
		local client = itemTable.player
		if(client:GetCharacter():GetData("HasRead7", true) == false) then
			client:ChatNotify("I have already read this book and can gain no further knowledge from it")
			return false
		end
		client:GetCharacter():UpdateAttrib("int", 0.5)
		client:GetCharacter():SetData("HasRead7", false)
		client:ChatNotify("The book espouses a thought created by the Emperor Defense League. It talks about the usual human supremacy but also mentions that the normal man and woman should rise above and be the bulwark. It implies the astartes are nothing but weak minded individuals who fail in comparison to normal humanity. The author is Thomas Rob")
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}