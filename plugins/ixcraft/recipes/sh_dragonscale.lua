RECIPE.name = "Dragonscale Power Armor"
RECIPE.description = "Dragonscale Power Armor"
RECIPE.model = "models/props_junk/cardboard_box001a.mdl"
RECIPE.category = "Armor"
RECIPE.requirements = {
	["adamantium"] = 15,
	["ceramite"] = 10
}
RECIPE.results = {
	["dragonplatearmor"] = 1
}
RECIPE.tools = {
	"tools",
	"schematicdragonscale"
}
RECIPE.flag = "Q"

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a workbench."
end)