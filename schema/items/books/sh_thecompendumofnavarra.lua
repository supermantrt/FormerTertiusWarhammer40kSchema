local PLUGIN = PLUGIN

ITEM.name = "The Compendium Of Narvarra"
ITEM.model = "models/props_clutter/black_book.mdl"
ITEM.description = "The book is made of fine leather and has an image of a massive desert. The pages itself are coarse and you can feel many years younger in its presence."
ITEM.width = 2
ITEM.height = 2
ITEM.category = "Books"
ITEM.flag = "p"

ITEM.functions.Read = {
	OnRun = function(itemTable)
		local client = itemTable.player
		local character = client:GetCharacter()
		if(character:GetData("HasRead", true) == false) then
			client:ChatNotify("I have already read this book and can gain no further knowledge from it")
			return false
		end
		character:UpdateAttrib("int", 1)
		character:SetData("HasRead", false)
		client:ChatNotify("The book talks about the long and varied history of the Navarran people. It places great emphasis on its cultural but also technolgical practises")
	end,
	OnCanRun = function(item)
		return !item.player:IsCombine()
	end
}