RECIPE.name = "Autogun Sniper"
RECIPE.description = "Craft: Autogun Sniper."
RECIPE.model = "models/muschi/weapons/muschi_swep_autogun_sniper.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["autochassis"] = 1,
	["titanium"] = 2,
	["stock"] = 1,
	["blastcompensator"] = 1,
	["internalfiremechanisim"] = 1,
	["mechanicalbits"] = 4,
	["opticscope"] = 1
}
RECIPE.results = {
	["autogun_sniper"] = 1
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