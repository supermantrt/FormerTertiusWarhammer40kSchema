local PLUGIN = PLUGIN

ITEM.name = "Grandfather's Love"
ITEM.model = "models/hpwrewrite/books/book1.mdl"
ITEM.description = "Just holding this gives you a feeling of sickness in your stomach."
ITEM.width = 3
ITEM.height = 3
ITEM.category = "Books"
ITEM.flag = "p"

ITEM.functions.Read = {
    OnRun = function(itemTable)
        local client = itemTable.player
        if(client:GetCharacter():GetData("HasRead13", true) == false) then
            client:ChatNotify("I have already read this book and can gain no further knowledge from it")
            return false
        end
        client:GetCharacter():UpdateAttrib("con", 0.5)
        client:GetCharacter():SetData("HasRead13", false)
        client:ChatNotify( "As you open this book flies fly out of it and a rotting stench fills the room, yet you don't feel discomfort on the opposite you feel loved and cared for, no matter what plague infects you or filth takes you over. Grandfather Loves All His Children.")
    end,
    OnCanRun = function(itemTable)
        return !itemTable.player:IsCombine()
    end
}