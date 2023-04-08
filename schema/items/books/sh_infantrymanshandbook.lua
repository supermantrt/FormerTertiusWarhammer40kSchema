local PLUGIN = PLUGIN

ITEM.name = "The Infantryman's Kit"
ITEM.model = "models/props_clutter/book_ruined02.mdl"
ITEM.description = "The book is made of poor quality paper and hardback making it seem cheaply made."
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Books"
ITEM.flag = "p"

ITEM.functions.Read = {
	OnRun = function(itemTable)
		local client = itemTable.player
		local character = client:GetCharacter()
		if(client:GetCharacter():GetData("HasRead6", true) == false) then
			client:ChatNotify("I have already read this book and can gain no further knowledge from it")
			return false
		end
		character:UpdateAttrib("int", 0.5)
		client:GetCharacter():SetData("HasRead6", false)
		client:GetCharacter():SetData("CanRepair", true)
		client:ChatNotify("The book shows you the various techniques on jury rigging and repair in the field. You have the feeling that you understand how to repair")
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}