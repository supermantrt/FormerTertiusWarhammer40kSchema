RECIPE.name = "Las Chassis"
RECIPE.description = "Craft: Las Chassis."
RECIPE.model = "models/muschi/weapons/muschi_swep_autogun_sniper.mdl"
RECIPE.category = "Chassis"
RECIPE.requirements = {
	["valuable4"] = 7,
	["mechanicalbits"] = 3,
	["plasteel"] = 5
}
RECIPE.results = {
	["laschassis"] = 1
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