RECIPE.name = "Deconstruct: Lucius Lasgun"
RECIPE.description = "Deconstruct"
RECIPE.model = "models/muschi/weapons/muschi_swep_lasgun.mdl"
RECIPE.category = "Crafting"
RECIPE.requirements = {
	["luciuslasgun"] = 1
}
RECIPE.results = {
	["laschassis"] = 1,
	["titanium"] = 4,
	["stock"] = 1,
	["powerpackcatch"] = 2,
	["laspowernode"] = 2,
	["electronics"] = 5,
	["advelectronics"] = 2,
	["alloyedadamantiumbarrel"] = 1
}
RECIPE.tools = {
	"advtools",
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