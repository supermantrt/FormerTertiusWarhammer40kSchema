RECIPE.name = "M36 Lasgun"
RECIPE.description = "Craft: M36 Lasgun."
RECIPE.model = "models/muschi/weapons/muschi_swep_lasgun.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["laschassis"] = 1,
	["titanium"] = 2,
	["stock"] = 1,
	["powerpackcatch"] = 1,
	["laspowernode"] = 1,
	["electronics"] = 3,
	["alloyedadamantiumbarrel"] = 1
}
RECIPE.results = {
	["m36_lasgun"] = 1
}
RECIPE.tools = {
	"tools",
	"schematicm36patternlasgun"
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