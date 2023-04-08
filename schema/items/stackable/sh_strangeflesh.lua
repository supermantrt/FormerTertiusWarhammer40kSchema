ITEM.name = "Strange Flesh"
ITEM.model = Model("models/beefmeatcooked.mdl")
ITEM.description = "Strange flesh taken from the wilds of the Tertius Farlands. The meat's colour seems lighter, hinting towards an evolutionary adaptation to the the deadly snowstorms within the Farlands."
ITEM.price = 0
ITEM.flag = "g"
ITEM.category = "Crafting"
ITEM.maxStacks = 10

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player
        client:RestoreStamina(100)
		client:SetMaxHealth( client:Health() + 25 )
        client:SetHealth( client:Health() + 25 )
        client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
		client:GetCharacter():AddBoost("medwinecon","con", -1)
		client:GetCharacter():AddBoost("medwineint","int", -0.5)
		client:SetRunSpeed(client:GetRunSpeed() - 25)
		client:SetWalkSpeed(client:GetWalkSpeed() - 25)
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
		client:IncreaseDrunkLevel(5)
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}