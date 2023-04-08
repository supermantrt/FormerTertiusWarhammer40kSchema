RECIPE.name = "Auto Chassis"
RECIPE.description = "Craft: Auto Chassis."
RECIPE.model = "models/muschi/weapons/muschi_swep_autogun_sniper.mdl"
RECIPE.category = "Chassis"
RECIPE.requirements = {
	["valuable4"] = 2,
	["scrap"] = 3,
	["mechanicalbits"] = 1
}
RECIPE.results = {
	["autochassis"] = 1
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