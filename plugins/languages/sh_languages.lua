local PLUGIN = PLUGIN

function PLUGIN:InitializedPlugins()
    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Aeldari"
        LANGUAGE.uniqueID = "aeldari"
        LANGUAGE.category = "Human"
        LANGUAGE.format = "%s speaks in Aeldari \"%s\""
        LANGUAGE.formatUnknown = "%s says something in an alien language"

        LANGUAGE.formatWhispering = "%s whispers in Aeldari \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s whispers something in a weird language"

        LANGUAGE.formatYelling = "%s yells in Aeldari \"%s\""
        LANGUAGE.formatYellingUnknown = "%s yells something in a barely understandable language"
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Tau Tongue"
        LANGUAGE.uniqueID = "tautongue"
        LANGUAGE.category = "Human"
        LANGUAGE.format = "%s speaks in T'au Tongue \"%s\""
        LANGUAGE.formatUnknown = "%s says something in an alien language"

        LANGUAGE.formatWhispering = "%s whispers in T'au Tongue \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s whispers something in alien language"

        LANGUAGE.formatYelling = "%s yells in T'au Tongue \"%s\""
        LANGUAGE.formatYellingUnknown = "%s yells something in alien language"
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Dark Tongue"
        LANGUAGE.uniqueID = "darktongue"
        LANGUAGE.category = "Human"
        LANGUAGE.format = "%s speaks in Dark Tongue \"%s\""
        LANGUAGE.formatUnknown = "%s says something in a strange tongue"

        LANGUAGE.formatWhispering = "%s whispers in Dark Tongue \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s whispers something in a strange tongue"

        LANGUAGE.formatYelling = "%s yelling in Dark Tongue \"%s\""
        LANGUAGE.formatYellingUnknown = "%s yells something in a strange tongue"
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Necron Speech"
        LANGUAGE.uniqueID = "necron"
        LANGUAGE.category = "Human"
        LANGUAGE.format = "%s says in Necron Speech \"%s\""
        LANGUAGE.formatUnknown = "%s says something in an incomprehensible mechanical language"

        LANGUAGE.formatWhispering = "%s whispers in Necron Speech \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s whispers something in an incomprehensible mechanical language"

        LANGUAGE.formatYelling = "%s yells in Necron Speech \"%s\""
        LANGUAGE.formatYellingUnknown = "%s yells something in an incomprehensible mechanical language"
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "High Gothic"
        LANGUAGE.uniqueID = "hgothic"
        LANGUAGE.category = "Off-Human"
        LANGUAGE.format = "%s speaks in High Gothic \"%s\""
        LANGUAGE.formatUnknown = "%s says something in High Gothic"

        LANGUAGE.formatWhispering = "%s whispers in High Gothic \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s whispers something in High Gothic"

        LANGUAGE.formatYelling = "%s yells in High Gothic \"%s\""
        LANGUAGE.formatYellingUnknown = "%s yelling something in High Gothic"
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Ork Tongue"
        LANGUAGE.uniqueID = "ork"
        LANGUAGE.category = "Off-Human"
        LANGUAGE.format = "%s speaks in Ork Tongue \"%s\""
        LANGUAGE.formatUnknown = "%s says something in a crude compilation of various dialects and tongues, sounding much like an Ork"

        LANGUAGE.formatWhispering = "%s whispers in Ork Tongue \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s whispers something in a compilation of various dialects and tongues, sounding much like an Ork"

        LANGUAGE.formatYelling = "%s yelling in Ork Tongue \"%s\""
        LANGUAGE.formatYellingUnknown = "%s yelling something in a crude compilation of various dialects and tongues, sounding much like an Ork"
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Techna-Lingua"
        LANGUAGE.uniqueID = "techna"
        LANGUAGE.category = "Human"
        LANGUAGE.format = "%s speaks in Techna-Lingua \"%s\""
        LANGUAGE.formatUnknown = "%s says something in a binaric language"

        LANGUAGE.formatWhispering = "%s whispers in Techna-Lingua \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s whispers something in a binaric language"

        LANGUAGE.formatYelling = "%s yells in Techna-Lingua \"%s\""
        LANGUAGE.formatYellingUnknown = "%s yelling something in a binaric language"
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.color = Color(17, 85, 51, 255)
        LANGUAGE.name = "Seraph"
        LANGUAGE.uniqueID = "seraph"
        LANGUAGE.category = "Human"
        LANGUAGE.format = "%s speaks in Seraph \"%s\""
        LANGUAGE.formatUnknown = "%s says something in a language you could only call Divine."

        LANGUAGE.formatWhispering = "%s whispers in Seraph \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s whispers a in a language you could on describe as Divine."

        LANGUAGE.formatYelling = "%s yelling in Seraph \"%s\""
        LANGUAGE.formatYellingUnknown = "%s yelling a in a language you could on describe as Divine."
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Imperial Sign Language"
        LANGUAGE.uniqueID = "isl"
        LANGUAGE.category = "Human"
        LANGUAGE.format = "%s signals in Imperial Sign Language \"%s\""
        LANGUAGE.formatUnknown = "%s makes hand gestures you do not understand"
    LANGUAGE:Register()
    
    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Tertius Dialect"
        LANGUAGE.uniqueID = "tertius"
        LANGUAGE.category = "Human"
        LANGUAGE.format = "%s speaks in Tertius Dialect \"%s\""
        LANGUAGE.formatUnknown = "%s says something in a slavic sounding language."

        LANGUAGE.formatWhispering = "%s whispers in Tertius Dialect \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s whispers something in a slavic sounding language."

        LANGUAGE.formatYelling = "%s yelling in Tertius Dialect \"%s\""
        LANGUAGE.formatYellingUnknown = "%s yelling something in a slavic sounding language."
    LANGUAGE:Register()
    
        local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Navarran"
        LANGUAGE.uniqueID = "nava"
        LANGUAGE.category = "Human"
        LANGUAGE.format = "%s speaks in Navarran \"%s\""
        LANGUAGE.formatUnknown = "%s says something in a strange tongue."

        LANGUAGE.formatWhispering = "%s whispers in Navarran \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s whispers something in a strange tongue."

        LANGUAGE.formatYelling = "%s yelling in Navarran \"%s\""
        LANGUAGE.formatYellingUnknown = "%s yelling something in a strange tongue."
    LANGUAGE:Register()
    
            local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Farlander"
        LANGUAGE.uniqueID = "far"
        LANGUAGE.category = "Human"
        LANGUAGE.format = "%s speaks in Common Farlander \"%s\""
        LANGUAGE.formatUnknown = "%s says something in a strange sounding language."

        LANGUAGE.formatWhispering = "%s whispers in Common Farlander \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s whispers something in a strange sounding language."

        LANGUAGE.formatYelling = "%s yelling in Common Farlander \"%s\""
        LANGUAGE.formatYellingUnknown = "%s yelling something in a strange sounding language."
    LANGUAGE:Register()
    
                local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Am I awake?"
        LANGUAGE.uniqueID = "awake"
        LANGUAGE.category = "Human"
        LANGUAGE.format = "%s speaks through your Veil \"%s\""
        LANGUAGE.formatUnknown = "%s says nothing."

        LANGUAGE.formatWhispering = "%s whispers through your Veil \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s whispers nothing."

        LANGUAGE.formatYelling = "%s yells through your Veil \"%s\""
        LANGUAGE.formatYellingUnknown = "%s yells nothing."
    LANGUAGE:Register()
    
        local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Lowlander"
        LANGUAGE.uniqueID = "low"
        LANGUAGE.category = "Human"
        LANGUAGE.format = "%s speaks in Lowlander \"%s\""
        LANGUAGE.formatUnknown = "%s says something in a strange tongue."

        LANGUAGE.formatWhispering = "%s whispers in Lowlander \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s whispers something in a strange tongue."

        LANGUAGE.formatYelling = "%s yelling in Lowlander \"%s\""
        LANGUAGE.formatYellingUnknown = "%s yelling something in a strange tongue."
    LANGUAGE:Register()


        local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Ship Dialect"
        LANGUAGE.uniqueID = "ship"
        LANGUAGE.category = "Human"
        LANGUAGE.format = "%s speaks in a ship dialect \"%s\""
        LANGUAGE.formatUnknown = "%s says something in a strange dialect."

        LANGUAGE.formatWhispering = "%s whispers in a strange dialect \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s whispers something in a strange tongue."

        LANGUAGE.formatYelling = "%s yelling in a strange dialect \"%s\""
        LANGUAGE.formatYellingUnknown = "%s yelling something in a strange tongue."
    LANGUAGE:Register()

end