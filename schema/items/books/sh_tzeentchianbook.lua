local PLUGIN = PLUGIN

ITEM.name = "The Eye"
ITEM.model = "models/props_clutter/black_book.mdl"
ITEM.description = "A small book, completely unassuming."
ITEM.width = 2
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
        client:GetCharacter():UpdateAttrib("int", 0.5)
        client:GetCharacter():UpdateAttrib("wil", -1)
        client:GetCharacter():SetData("HasRead13", false)
        client:ChatNotify( " You open the book or do you? Your mind carries off as your body takes a will of it's own and you zoom through pages at an incredible speed, whispers would fill your head spoken in unknown tongues. And suddenly CLAP the book shuts closed, as it slowly vanishes into thin air, as you look down upon your hands a symbol of an eye is burned into your hand.")
    end,
    OnCanRun = function(itemTable)
        return !itemTable.player:IsCombine()
    end
}