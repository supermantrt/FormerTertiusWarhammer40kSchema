ITEM.name = "Klay"
ITEM.model = Model("models/jackswan/wk_pills_one.mdl")
ITEM.description = "Klay is a Drug used by the Astra Militarum to sharpen the Users' Senses. It’s consumed orally, either being held under the Tongue or chewed till the desired Effect is attained. Users experience heightened Senses of Taste, Touch, Sight, Smell and Hearing and an increased Reaction Speed as well as greater mental Clarity, though Use before Sleep can bring on Nightmares. Though effective, the Drug is expensive, hard to find and addictive.."
ITEM.category = "Chemicals"
ITEM.flag = "i"
ITEM.price = 20

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(500)
		client:SetHealth(math.Clamp(client:Health() + 300, 0, client:GetMaxHealth()))
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}