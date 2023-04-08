local PLUGIN = PLUGIN

ITEM.name = "The Raven"
ITEM.model = "models/props_clutter/black_book.mdl"
ITEM.description = "A large book if you hold your head close to it you can hear ravens."
ITEM.width = 5
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
        client:GetCharacter():UpdateAttrib("int", 3)
        client:GetCharacter():UpdateAttrib("wil", -1)
        client:GetCharacter():UpdateAttrib("str", -2)
        client:GetCharacter():SetData("HasRead13", false)
        client:ChatNotify( " As you open this book your vision changes as you look around you appear to have been removed from your body, and have been put inside that of a raven. You fly around for what seems to be hours seeing countless majestic and horrifying events happen on the surface down below, before landing on a large avian claw. Before suddenly reawakening from your trance back to the material world where you look around and nothing has changed but yourself as you feel yourself smarter but at the same time weaker in both mind and body.")
    end,
    OnCanRun = function(itemTable)
        return !itemTable.player:IsCombine()
    end
}