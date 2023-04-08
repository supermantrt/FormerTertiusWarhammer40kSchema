local PLUGIN = PLUGIN

ITEM.name = "The Changer"
ITEM.model = "models/props_clutter/black_book.mdl"
ITEM.description = "A large book if you hold your head close to it you hear whispers in unknown tongues, the book shines a blue hue in the dark."
ITEM.width = 5
ITEM.height = 5
ITEM.category = "Books"
ITEM.flag = "p"

ITEM.functions.Read = {
    OnRun = function(itemTable)
        local client = itemTable.player
        if(client:GetCharacter():GetData("HasRead13", true) == false) then
            client:ChatNotify("I have already read this book and can gain no further knowledge from it")
            return false
        end
        client:GetCharacter():UpdateAttrib("int", 7.5)
        client:GetCharacter():UpdateAttrib("wil", 5)
        client:GetCharacter():UpdateAttrib("str", -3)
        client:GetCharacter():UpdateAttrib("con", -3)
        client:GetCharacter():SetData("HasRead13", false)
        client:ChatNotify( " As you open this book you are teleported to massive library surrounded by little daemonic creatures that ignore you as they sort books here and there, as you explore the library you'd feel yourself get significantly smarter. Like you're observing the knowledge of the books somehow, but at the same time your body begins to hurt as you'd become frailer and weaker. Soon all would stop as you see a large Avian with Two heads, he places his Talon on your head and pushes you over as you fall through the floor you awaken back in the mortal realm. As you'd check your body you'd notice a large marking of an eye.")
    end,
    OnCanRun = function(itemTable)
        return !itemTable.player:IsCombine()
    end
}