RECIPE.name = "Chainsword"
RECIPE.description = "Craft: Chainsword"
RECIPE.model = "models/muschi/weapons/muschi_swep_autogun_sniper.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["chainswordchassis"] = 1,
	["valuable4"] = 5,
	["mortor"] = 1,
	["mechanicalbits"] = 2,
	["blades"] = 10
}
RECIPE.results = {
	["chainsword"] = 1
}
RECIPE.tools = {
	"tools",
	"schematicchainsword"
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