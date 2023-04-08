local PLUGIN = PLUGIN

ITEM.name = "The Pest"
ITEM.model = "models/hpwrewrite/books/book1.mdl"
ITEM.description = "Just holding this forces you to almost puke, the disgust that surrounds you is incredible."
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
        client:GetCharacter():UpdateAttrib("con", 1.5)
        client:GetCharacter():SetData("HasRead13", false)
        client:ChatNotify( "The book opens the pages filthy as can be yet you go onwards, it depicts the tale of a farmer on a feudal word. 'Jonathan was like any other, he worked day and night to help pay the tithes that had befallen his planet by worshipping the Anatheme. His life would one day change as he moves into a cave one of his cattle ran into, there he would discover a weird bubonic creation he'd touch it and his life was never the same. Never again would he toil away as Grandfather had gifted him something majestic.")
    end,
    OnCanRun = function(itemTable)
        return !itemTable.player:IsCombine()
    end
}