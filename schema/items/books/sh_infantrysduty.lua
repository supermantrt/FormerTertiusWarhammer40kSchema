local PLUGIN = PLUGIN

ITEM.name = "Militis Officium"
ITEM.model = "models/props_clutter/book_mq103.mdl"
ITEM.description = "The Book is nothing special with it having a drab grey look."
ITEM.width = 2
ITEM.height = 2
ITEM.category = "Books"
ITEM.flag = "p"

ITEM.functions.Read = {
	OnRun = function(itemTable)
		local client = itemTable.player
		if(client:GetCharacter():GetData("HasRead8", true) == false) then
			client:ChatNotify("I have already read this book and can gain no further knowledge from it")
			return false
		end
		client:GetCharacter():UpdateAttrib("int", 1)
		client:GetCharacter():SetData("HasRead8", false)
		client:ChatNotify( "The text is long and tedious but it goes into rigourous detail about basic infantry tactics and command. It also gives some outdated but interesting information about the foes of humanity. You feel as if you gained a better understanding of squad tactics.")
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}