local PLUGIN = PLUGIN

ITEM.name = "Civilised to Barbaric : The descent of the city states to madness"
ITEM.model = "models/props_clutter/book04.mdl"
ITEM.description = "The Book is bound in a sturdy leather cover and lacks any distinct colour. The pages though are interestingly stained in what would be a light coffee colour"
ITEM.width = 2
ITEM.height = 1
ITEM.category = "Books"
ITEM.flag = "p"

ITEM.functions.Read = {
	OnRun = function(itemTable)
		local client = itemTable.player
		if(client:GetCharacter():GetData("HasRead4", true) == false) then
			client:ChatNotify("I have already read this book and can gain no further knowledge from it")
			return false
		end
		client:GetCharacter():UpdateAttrib("int", 0.5)
		client:GetCharacter():SetData("HasRead4", false)
		client:ChatNotify("The book is quiet dry and acadmeic but it dissicts piece by piece the conflict of the city states in northern navarra. It talks about the socio economic conditions that lead to such an event and of how the causes of the modern day conflict can be traced back to previous encounters with an individiual Ishmin.")
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}