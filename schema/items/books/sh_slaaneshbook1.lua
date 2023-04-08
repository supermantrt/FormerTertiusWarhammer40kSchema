local PLUGIN = PLUGIN

ITEM.name = "Pleasure"
ITEM.model = "models/props_clutter/book_da02.mdl"
ITEM.description = "A book that if touched brings you to near orgasm, it's incredibly hard to open."
ITEM.width = 3
ITEM.height = 2
ITEM.category = "Books"
ITEM.flag = "p"

ITEM.functions.Read = {
    OnRun = function(itemTable)
        local client = itemTable.player
        if(client:GetCharacter():GetData("HasRead13", true) == false) then
            client:ChatNotify("I have already read this book and can gain no further knowledge from it")
            return false
        end
        client:GetCharacter():UpdateAttrib("agi", 2)
        client:GetCharacter():UpdateAttrib("wil", 1)
        client:GetCharacter():UpdateAttrib("str", -2)
        client:GetCharacter():SetData("HasRead13", false)
        client:ChatNotify( " As you do manage to open the book every pleasant sensation in your body is activated, bringing you to the floor as you experience this sensation overload. The book would slowly fade into a pinkish puddle that smells incredibly well." )
    OnCanRun = function(itemTable)
        return !itemTable.player:IsCombine()
    end
}