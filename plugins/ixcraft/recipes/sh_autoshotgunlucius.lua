RECIPE.name = "Lucius Shotgun"
RECIPE.description = "Craft: Lucius Shotgun."
RECIPE.model = "models/weapons/w_krieg_shotgun_warpkeepers.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["laschassis"] = 1,
	["titanium"] = 5,
	["stock"] = 1,
	["powerpackcatch"] = 2,
	["internalfiremechanisim"] = 3,
	["mechanicalbits"] = 5,
	["repeatermechanisim"] = 1,
	["electronics"] = 6,
	["advelectronics"] = 3,
	["alloyedadamantiumbarrel"] = 1
}
RECIPE.results = {
	["luciusshotgun"] = 1
}
RECIPE.tools = {
	"advtools",
	"schematicluciuspatternshotgun"
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