local PLUGIN = PLUGIN

ITEM.name = "An Inkali's Memomento"
ITEM.model = "models/props_clutter/book_mq103.mdl"
ITEM.description = "The Book has a fine look to it with bright colours on a hardbook cover. It is small with almost the size of a journal."
ITEM.width = 2
ITEM.height = 1
ITEM.category = "Books"
ITEM.flag = "p"

ITEM.functions.Read = {
	OnRun = function(itemTable)
		local client = itemTable.player
		if(client:GetCharacter():GetData("HasRead1", true) == false) then
			client:ChatNotify("I have already read this book and can gain no further knowledge from it")
			return false
		end
		client:GetCharacter():UpdateAttrib("int", 0.5)
		client:GetCharacter():SetData("HasRead1", false)
		client:ChatNotify("The book goes in depth about the various technological achievements of the Navarran people. It talks of turning sand into grass and of machines of automations lacking the regular biological parts associated with imperium machinery. There is a sad tone also as the man appears to mourn the encroaching imperium influence.")
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}