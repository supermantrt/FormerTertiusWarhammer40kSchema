RECIPE.name = "Carapace Armor"
RECIPE.description = "Upgrade flak armor to Carapace Armor."
RECIPE.model = "models/props_junk/cardboard_box001a.mdl"
RECIPE.category = "Armor"
RECIPE.requirements = {
	["flakarmorexcellent"] = 1,
	["ceramite"] = 5
}
RECIPE.results = {
	["carapacearmor"] = 1
}
RECIPE.tools = {
	"advtools"
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