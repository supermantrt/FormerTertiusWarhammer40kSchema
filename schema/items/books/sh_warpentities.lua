local PLUGIN = PLUGIN

ITEM.name = "Warp Entities"
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
		if(client:GetCharacter():GetData("HasRead14", true) == false) then
			client:ChatNotify("I have already read this book and can gain no further knowledge from it")
			return false
		end
		character:UpdateAttrib("wil", 0.5)
		client:GetCharacter():SetData("HasRead14", false)
		client:ChatNotify("The Warp, through a realm of pure psychic energy that is inimically hostile to all forms of organic life from realspace, is home to its own forms of alien life, sentient and otherwise. Many of these creatures are not sentient but depend upon the absorption of psychic energies to survive and are thus naturally drawn to the psychic emanations of mortals in realspace whose psyches are the very wellspring of the Empyrean. Such creatures include the Vampire, Psychneuein, Astral Spectre, Astral Hound, and the hideous Enslavers. Enslavers are spontaneously created by the shifting energies of the Warp from the nightmares of sentient species, and prowl the Immaterium like sharks. The Enslavers are able to psychically control other species, forcing them to their will, hence their name. Enslavers are able to control almost any species, even creatures such as Tyranids and Daemons. It is thought that the only species immune to the Enslavers are the Necrons, who have no souls nor psychic presence in the Warp.")
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}