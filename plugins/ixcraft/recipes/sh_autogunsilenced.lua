RECIPE.name = "Silenced Autogun"
RECIPE.description = "Craft: Silenced Autogun"
RECIPE.model = "models/muschi/weapons/muschi_swep_autogun.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["autochassis"] = 1,
	["stock"] = 1,
	["internalfiremechanisim"] = 2,
	["mechanicalbits"] = 3,
	["valuable4"] = 3
}
RECIPE.results = {
	["autogunsilenced"] = 1
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