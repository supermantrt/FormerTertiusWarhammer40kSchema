RECIPE.name = "Claymore"
RECIPE.description = "Crafting rec."
RECIPE.model = "models/props_lab/box01a.mdl"
RECIPE.category = "Utility"
RECIPE.requirements = {
	["plastic"] = 5,
	["electronics"] = 3,
	["explosivepowder"] = 2,
	["explosivemechanisim"] = 1,
}
RECIPE.results = {
	["claymore"] = 1
}
RECIPE.tools = {
	"tools",
	"schematicclaymore"
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