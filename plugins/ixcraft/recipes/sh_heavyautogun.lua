RECIPE.name = "Heavy Autogun"
RECIPE.description = "Craft: Heavy Autogun."
RECIPE.model = "models/muschi/weapons/muschi_swep_autogun_sniper.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["autochassisreinforced"] = 1,
	["titanium"] = 5,
	["stock"] = 1,
	["blastcompensator"] = 1,
	["internalfiremechanisim"] = 3,
	["mechanicalbits"] = 5
}
RECIPE.results = {
	["heavy_autogun"] = 1
}
RECIPE.tools = {
	"tools"
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