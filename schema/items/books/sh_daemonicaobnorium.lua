local PLUGIN = PLUGIN

ITEM.name = "Daemonica Obnorium"
ITEM.model = "models/props_clutter/book_mq103.mdl"
ITEM.description = "As you stare at the cover, your eyes begin to hurt. As you hold it, it feels heavier than a book of its size should be. As you think about it, you sense an ice cold stabbing sensation in your brain."
ITEM.width = 4
ITEM.height = 4
ITEM.category = "Books"
ITEM.flag = "p"

ITEM.functions.Read = {
	OnRun = function(itemTable)
		local client = itemTable.player
		if(client:GetCharacter():GetData("HasRead13", true) == false) then
			client:ChatNotify("I have already read this book and can gain no further knowledge from it")
			return false
		end
		client:GetCharacter():UpdateAttrib("int", 1)
		client:GetCharacter():UpdateAttrib("wil", -1)
		client:GetCharacter():SetData("HasRead13", false)
		client:ChatNotify( "Simply staring at this book wears your eyes down, causing straining. Turning each page reveals a new horror of the Immaterium detailed beyond what any mortal man should know, and with each page turned the writing becomes more frantic, helpess and deranged. Soon, dried blood covers the pages and each flip to the next horror cuts your finger. At the very end ''Thing are Thing Thing atching Thing ay us Thing alwatche'' is written fading away in what could only be described as a horrible combination of ink and blood.")
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}