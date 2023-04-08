RECIPE.name = "Fortification Datapad"
RECIPE.description = "Craft: Fortification Datapad."
RECIPE.model = "models/muschi/props/muschi_prop_datapad.mdl"
RECIPE.category = "Utility"
RECIPE.requirements = {
	["electronics"] = 3,
	["plastic"] = 5,
	["advelectronics"] = 1,
}
RECIPE.results = {
	["datapad"] = 1
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