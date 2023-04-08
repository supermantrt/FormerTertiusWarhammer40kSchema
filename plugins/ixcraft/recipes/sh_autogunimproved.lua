RECIPE.name = "Improved Autogun"
RECIPE.description = "Craft: Improved Autogun"
RECIPE.model = "models/muschi/weapons/muschi_swep_autogun.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["autochassis"] = 1,
	["stock"] = 1,
	["internalfiremechanisim"] = 1,
	["mechanicalbits"] = 2,
	["valuable4"] = 2
}
RECIPE.results = {
	["autogunimproved"] = 1
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