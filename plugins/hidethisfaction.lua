function ShouldShowPlayerOnScoreboard(client)
    if (client:Team() == FACTION_UNKN) then
        return false
    end
end

function IsCharacterRecognized(character, id)
    if (client:Team() == FACTION_UNKN) then
        return false
    end
end