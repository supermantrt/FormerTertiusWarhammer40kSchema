local PLUGIN = PLUGIN

ITEM.name = "A Future Lost"
ITEM.model = "models/props_clutter/book_mq103.mdl"
ITEM.description = "The book has a creative cover with it showing humans in odd spaceships that you have only heard in fairy tales"
ITEM.width = 2
ITEM.height = 2
ITEM.category = "Books"
ITEM.flag = "p"

ITEM.functions.Read = {
	OnRun = function(itemTable)
		local client = itemTable.player
		if(client:GetCharacter():GetData("HasRead10", true) == false) then
			client:ChatNotify("I have already read this book and can gain no further knowledge from it")
			return false
		end
		client:GetCharacter():UpdateAttrib("int", 0.5)
		client:GetCharacter():SetData("HasRead10", false)
		client:ChatNotify( "The book begins quite somberly giving a harsh and scathing analysis of the modern imperium. It then finishes with an inconclusive end before talking about a fictional future where humanity travels the stars and the galaxy in peace. It also talks about a humanity free from war and pain. A future where humanity is engulfed in an endless war. It ends with the final note showing a strange spaceship and terra behind. A bright future for all of humanity.")
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}