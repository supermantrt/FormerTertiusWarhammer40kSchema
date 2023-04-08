local PLUGIN = PLUGIN

ITEM.name = "The Good Wishes of Ishmin Shalkis"
ITEM.model = "models/props_clutter/book02.mdl"
ITEM.description = "The book is quiet bland but upon opening it you can see an explosion of colours and decorations on the pages."
ITEM.width = 2
ITEM.height = 1
ITEM.category = "Books"
ITEM.flag = "p"

ITEM.functions.Read = {
	OnRun = function(itemTable)
		local client = itemTable.player
		if(client:GetCharacter():GetData("HasRead2", true) == false) then
			client:ChatNotify("I have already read this book and can gain no further knowledge from it")
			return false
		end
		client:GetCharacter():UpdateAttrib("int", 0.25)
		client:GetCharacter():SetData("HasRead2", false)
		client:ChatNotify("The book is a short read but nonetheless quite enjoyable. It seems worn as many fingers have touched it and you can understand why. This individual is able to bring a lot of joy and understanding to navarran culture and displays through image, art and word the interesting aspects the people of the desert have.")
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}