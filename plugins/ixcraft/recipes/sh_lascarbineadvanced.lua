RECIPE.name = "Las Carbine Advanced"
RECIPE.description = "Craft: Las Carbine Advanced."
RECIPE.model = "models/muschi/weapons/muschi_swep_lasgun.mdl"
RECIPE.category = "Crafting"
RECIPE.requirements = {
	["laschassis"] = 1,
	["titanium"] = 3,
	["stock"] = 1,
	["powerpackcatch"] = 1,
	["laspowernode"] = 1,
	["electronics"] = 5,
	["advelectronics"] = 3,
}
RECIPE.results = {
	["lascarbineadvanced"] = 1
}
RECIPE.tools = {
	"advtools",
	"schematiclascarbine"
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