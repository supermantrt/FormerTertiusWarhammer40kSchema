PLUGIN.name = "Tarot Major Arcana"
PLUGIN.author = "Howl with Chancer's code/ ported by SHOOTER"
PLUGIN.desc = "Adds a Major Arcana command."

ix.command.Add("tarot", {
    description = 'Pull a tarot card from tarot deck.',
	OnRun = function(self, client)
		local inventory = client:GetCharacter():GetInventory()
		if (!inventory:HasItem("tarot")) then
			client:notify("You do not have a tarot deck.")
			return
		end

		local family = {"The Pilgrim", "The Astropath", "The Prophet", "Holy Terra", "The God-Emperor", "The Ecclesiarch", "Unity (Compliance)", "The Crusader", "The Saint", "The Seer/Diviner", "Man", "The Titan", "The Martyr", "The Reaper", "The Imperium", "The Daemon", "The Hulk", "The Astronomican", "The Immaterium", "The Golden Throne", "The Judgde", "The Galaxy",}
		local fam2 = {"reversed position", "upright position"}
		
		local msg = "draws " ..table.Random(family).. " in the " ..table.Random(fam2)
		
		ix.chat.Send(client, "me", msg)
	end
})


/*
ix.command.Add('Name', {
    description = 'Says your name.',
    OnRun = function(self, client)
        local character = client:GetCharacter()

        if character then
            ix.chat.Send(client, 'ic', client:Name())
        end
    end
})*/