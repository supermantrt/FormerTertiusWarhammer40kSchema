local PLUGIN = PLUGIN

PLUGIN.name = "Attribute Check"
PLUGIN.description = "Check Attribute."
PLUGIN.author = "supermantrt"
PLUGIN.schema = "Any"

ix.command.Add("CharCheckAttribute", {
    description = "Check a character's attribute.",
    arguments = {ix.type.character,},
    superAdminOnly = true,
    OnRun = function(self, client, char, attrib, int)
        client:PrintMessage(3, char:GetName())
        client:PrintMessage(3 , "Constitution : " .. char:GetAttribute("con", 0) )
        client:PrintMessage(3 , "Agility : " .. char:GetAttribute("agi", 0))
        client:PrintMessage(3 , "Intelligence : " .. char:GetAttribute("int", 0))
        client:PrintMessage(3 , "Willpower : " .. char:GetAttribute("wil", 0))
        client:PrintMessage(3 , "Strength : " .. char:GetAttribute("str", 0))
    end
})