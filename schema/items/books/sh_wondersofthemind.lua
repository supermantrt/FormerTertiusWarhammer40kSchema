local PLUGIN = PLUGIN

ITEM.name = "Realspace Incursions"
ITEM.model = "models/hpwrewrite/books/book2.mdl"
ITEM.description = "The cover is made of a wonderously fine material that is leathery to the touch."
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Books"
ITEM.flag = "p"

ITEM.functions.Read = {
	OnRun = function(itemTable)
		local client = itemTable.player
		local character = client:GetCharacter()
		if(client:GetCharacter():GetData("HasRead15", true) == false) then
			client:ChatNotify("I have already read this book and can gain no further knowledge from it")
			return false
		end
		character:UpdateAttrib("wil", 0.5)
		client:GetCharacter():SetData("HasRead15", false)
		client:ChatNotify("In order for a Daemon to break through into the mortal universe, there must be a breach of the barriers between the Warp and the material realm -- a so-called Warp rift. These are breaches in the fabric of reality that can vary in nature and size, such as the massive Eye of Terror or the Maelstrom. Sometimes these occur randomly; at other times, either mortals or the Chaos Gods themselves bring about their creation by some supernatural act. The size of the breach can vary tremendously, from a slight thinning of the dimensional walls to immense wounds in reality that allow the daemonic legions to invade en masse. At times when certain conditions like the appearance of a Warp Storm or a sorcerous ritual have weakened the barrier between the Warp and realspace, a Daemon can possess a mortal and turn him or her into a living portal through which whole daemonic hosts can pass for a time into the material universe.")
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}