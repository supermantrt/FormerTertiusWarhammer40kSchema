local PLUGIN = PLUGIN

ITEM.name = "Dark Pleasure"
ITEM.model = "models/props_clutter/book_da02.mdl"
ITEM.description = "A book that if touched brings you excrutiating pain, it's incredibly hard to open."
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
        client:ChatNotify( " As you open this book every painfull sensory organ in your body goes off bringing you to a complete standstill as the pain completely overtakes your very body, it soon washes over as the book disintegrates into nothing but a black slush that smells horrid." )
    OnCanRun = function(itemTable)
        return !itemTable.player:IsCombine()
    end
}