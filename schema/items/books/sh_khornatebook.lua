local PLUGIN = PLUGIN

ITEM.name = "THE ANGER"
ITEM.model = "models/hpwrewrite/books/book1.mdl"
ITEM.description = "RAGE FILLS THROUGH YOUR VERY BONES AS YOU HOLD THIS YOU MUST MURDER MAIN FOR THE BLOOD GOD."
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
        client:GetCharacter():UpdateAttrib("str", 1.5)
        client:GetCharacter():SetData("HasRead13", false)
        client:ChatNotify( "There is only one sentence in this book. 'Stop reading Nerd go out and wage war!' ")
    end,
    OnCanRun = function(itemTable)
        return !itemTable.player:IsCombine()
    end
}