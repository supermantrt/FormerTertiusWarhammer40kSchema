local PLUGIN = PLUGIN

ITEM.name = "The Immaterium's Depths"
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
		if(client:GetCharacter():GetData("HasRead12", true) == false) then
			client:ChatNotify("I have already read this book and can gain no further knowledge from it")
			return false
		end
		character:UpdateAttrib("wil", 0.5)
		client:GetCharacter():SetData("HasRead12", false)
		client:ChatNotify("The Immaterium, also referred to as the Empyrean, the Aether, the Sea of Souls, the Realm of Chaos, Warpspace or most commonly, the Warp, is an alternate dimension of purely psychic energy that echoes and underlies the familiar four dimensions of the material universe. The Warp is the source of all psychic powers and known instances of so-called sorcery or magic as well as the home dimension of the powerful entities known as the Chaos Gods and their myriad legions of daemonic servants. In fact, the terms Chaos and the Warp are often used interchangeably by those aware of their existence within the Imperium of Man. Superficially, the Immaterium is Mankind's solution to the problem of faster-than-light travel. The Warp functions as the medium for FTL interstellar travel, with voidcraft entering it through the use of a Warp-Drive. They then use their own mundane reaction drive systems and the aid of a psychic Navigator to navigate between its flowing currents of psychic energy, as if they were moving through an ocean.")
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}