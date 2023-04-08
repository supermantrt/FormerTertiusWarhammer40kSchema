RECIPE.name = "Medium Frequency Refractor Field Generator"
RECIPE.description = "A Refractor Field Generator."
RECIPE.model = "models/props_junk/cardboard_box001a.mdl"
RECIPE.category = "Armor"
RECIPE.requirements = {
	["refractorcomponent"] = 1
}
RECIPE.results = {
	["refractorfieldmid"] = 1
}
RECIPE.tools = {
	"tools",
	"schematicrefractor"
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