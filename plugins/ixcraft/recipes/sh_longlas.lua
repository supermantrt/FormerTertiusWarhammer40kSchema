RECIPE.name = "Longlas"
RECIPE.description = "Craft: Longlas."
RECIPE.model = "models/muschi/weapons/muschi_swep_lasgun.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["laschassis"] = 1,
	["titanium"] = 3,
	["stock"] = 1,
	["powerpackcatch"] = 1,
	["laspowernode"] = 1,
	["electronics"] = 5,
	["advelectronics"] = 5,
}
RECIPE.results = {
	["longlas"] = 1
}
RECIPE.tools = {
	"tools",
	"schematiclonglas"
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