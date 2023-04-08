RECIPE.name = "Stub Sniper"
RECIPE.description = "Craft: Stub Sniper."
RECIPE.model = "models/muschi/weapons/muschi_swep_autogun_sniper.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["wood"] = 7,
	["stock"] = 1,
	["internalfiremechanisim"] = 2,
	["mechanicalbits"] = 5,
	["valuable4"] = 3
}
RECIPE.results = {
	["stubrifle"] = 1
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