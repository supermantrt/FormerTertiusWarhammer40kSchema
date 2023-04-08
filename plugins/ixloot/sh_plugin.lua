local PLUGIN = PLUGIN

PLUGIN.name = "Lootable Containers"
PLUGIN.description = "Allows you to loot certin crates to obtain loot items."
PLUGIN.author = "Riggs Mackay"
PLUGIN.schema = "Any"
PLUGIN.license = [[
Copyright 2022 Riggs Mackay

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
]]

ix.config.Add("LootAmountAllowed", 6, "To set the amount of containers a player can loot", nil, {data = {min = 1, max = 60}})
ix.config.Add("LootFagtigueTimeout", 1800, "The time between which the looting ability resets", nil, {data = {min = 60, max = 3600}})

ix.command.Add("LootSettings", {
    description = "Set the loot settings. The first input can range from 1 to 60 and the second from 60 to 3600.",
    adminOnly = true,
    arguments = {
        bit.bor(ix.type.number, ix.type.optional),
        bit.bor(ix.type.number, ix.type.optional)
    },
    argumentNames = {"Amount Allowed (1-60)", "Fagtigue Timeout (60-3600)"},
    OnRun = function(self, client, amount, amounttwo)
        ix.config.Set("LootAmountAllowed", amount)
        ix.config.Set("LootFagtigueTimeout", amounttwo)
        client:Notify("Settings Set")
    end
})

-- doubled the items in the table so that they are more common than anything else. If you get what I mean.
PLUGIN.randomLoot = {}

--[[
PLUGIN.randomLoot.common = {
    "scrap",
    "scrap",
    "scrap",
    "scrap",
    "scrap",
    "scrap",
    "localwinepoor",
    "localwinepoor",
    "localwinepoor",
    "localwinemedi",
    "localwinemedi",
    "rags",
    "whiteshield",
    "stimm",
    "stimm",
    "stimm",
    "cyanide",
    "ciggies",
    "ciggies",
    "ciggies",
    "jew",
    "irvantimunch",
    "cookedfish",
    "irvantiwine",
    "wood",
    "steak",
    "amethyst",
    "honey",
    "detox",
}

PLUGIN.randomLoot.rare = {
    "localwinehigh",
    "localwineexotic",
    "commissar",
    "grenadier",
    "gladstone",
    "frenzon",
    "halo",
    "kalma",
    "kick",
    "rainbow",
    "yarrickssmokes",
    "necomancybook",
    "eyeball",
    "satchel",
    "satchel",
    "satchel",
    "agedcheese",
    "emerald",
    "promethium",
    "valuable1",
    "valuable2",
    "jugofblood",
    "ritualskull",
}
]]

PLUGIN.randomLoot.crafting = {
    "wood",
    "wood",
    "wood",
    "wood",
    "scrap",
    "scrap",
    "scrap",
    "scrap",
    "scrap",
    "scrap",
    "valuable4",
    "valuable4",
    "valuable4",
    "valuable4",
    "electronics",
    "electronics",
    "electronics",
    "electronics",
    "plastic",
    "plastic",
    "plastic",
    "advelectronics",
    "plasteel",
    "titanium",
    "mechanicalbits",
    "repeatermechanisim",
    "mechanicalbits",
    "repeatermechanisim",    
    "adamantium",
    "explosivepowder",
    "explosivepowder",
    "explosivepowder",
    "ceramite"
}

PLUGIN.randomLoot.drug = {
    "cyanide",
    "cyanide",
    "cyanide",
    "cyanide",
    "cyanide",
    "cyanide",
    "detox",
    "detox",
    "obscura",
    "spook",
    "frenzon",
    "slaught",
    "stimm",
    "stimm",
    "stimm",
    "stimm",
    "valuable3",
    "unknownchem1",
    "unknownchem1",
    "unknownchem2"
}

PLUGIN.randomLoot.general = {
    "ciggies",
    "localwinepoor",
    "ciggies",
    "ciggies",
    "localwinepoor",
    "localwinemedi",
    "ishminscall",
    "luxornubia",
    "pharaohlager",
    "ar2",
    "ar2",
    "sausage",
    "cheese",
    "bread",
    "sausage",
    "cheese",
    "bread",
    "silverware2",
    "asupex",
    "datadisk",
    "documentube",
    "scrolls"
}

PLUGIN.randomLoot.horror = {
    "brain",
    "camera",
    "eyeball",
    "finger",
    "eyeball",
    "finger",
    "eyeball",
    "finger",
    "heart",
    "liver",
    "lung",
    "heart",
    "liver",
    "lung",
    "ritualskull",
    "jugofblood",
    "jugofblood",
    "jugofblood"
}

PLUGIN.randomLoot.valuable = {
    "localwinehigh",
    "localwineexotic",
    "yarrickssmokes",
    "amethyst",
    "emerald",
    "promethium",
    "cookedfish",
    "ancientoil",
    "ancientscroll",
    "chemistryset",
    "crystal",
    "diamond",
    "garnet",
    "goldware2",
    "goldware3",
    "goldware",
    "pearl",
    "promethium",
    "ruby",
    "sapphire"
}
ix.util.Include("sv_plugin.lua")

if ( CLIENT ) then
    function PLUGIN:PopulateEntityInfo(ent, tooltip)
        local ply = LocalPlayer()
        local ent = ent:GetClass()

        if not ( ent:find("ix_loot") ) then
            return false
        end

        local title = tooltip:AddRow("loot")
        title:SetText("Lootable Container")
        title:SetImportant()
        title:SizeToContents()
    end
end