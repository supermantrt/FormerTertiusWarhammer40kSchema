RECIPE.name = "Lucius Lasgun"
RECIPE.description = "Craft: Lucius Lasgun."
RECIPE.model = "models/muschi/weapons/muschi_swep_lasgun.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["laschassis"] = 1,
	["titanium"] = 4,
	["stock"] = 1,
	["powerpackcatch"] = 2,
	["laspowernode"] = 2,
	["electronics"] = 5,
	["advelectronics"] = 2,
	["alloyedadamantiumbarrel"] = 1
}
RECIPE.results = {
	["luciuslasgun"] = 1
}
RECIPE.tools = {
	"advtools",
	"schematicluciuspatternlasgun"
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