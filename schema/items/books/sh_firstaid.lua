local PLUGIN = PLUGIN

ITEM.name = "First Aid And You!"
ITEM.model = "models/props_clutter/book_mq103.mdl"
ITEM.description = "The Book has a cheap look with a noticiable old blood stain on the front"
ITEM.width = 2
ITEM.height = 2
ITEM.category = "Books"
ITEM.flag = "p"

ITEM.functions.Read = {
	OnRun = function(itemTable)
		local client = itemTable.player
		if(client:GetCharacter():GetData("HasRead17", true) == false) then
			client:ChatNotify("I have already read this book and can gain no further knowledge from it")
			return false
		end
		client:GetCharacter():UpdateSkill("medical", 1)
		client:GetCharacter():SetData("HasRead17", false)
		client:ChatNotify("The book teaches you the basic uses of your first aid kit and the basic procedures of first aid")
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}