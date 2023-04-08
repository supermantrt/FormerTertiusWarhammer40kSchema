RECIPE.name = "Hellgun"
RECIPE.description = "Craft: Hellgun."
RECIPE.model = "models/muschi/weapons/muschi_swep_hellgun.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["laschassis"] = 1,
	["titanium"] = 10,
	["stock"] = 1,
	["powerpackcatch"] = 3,
	["laspowernode"] = 1,
	["electronics"] = 10,
	["advelectronics"] = 10,
	["powerbank"] = 3,
	["plasteel"] = 7
}
RECIPE.results = {
	["hellgun"] = 1
}
RECIPE.tools = {
	"advtools",
	"schematichellgun"
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