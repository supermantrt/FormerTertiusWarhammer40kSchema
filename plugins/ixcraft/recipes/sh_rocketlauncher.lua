RECIPE.name = "Rocket Launcher"
RECIPE.description = "Craft: Rocket Launcher."
RECIPE.model = "models/props/starwars/weapons/smart_launcher.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["rocketlauncherchassis"] = 1,
	["titanium"] = 5,
	["valuable4"] = 10,
	["internalfiremechanisim"] = 5,
	["mechanicalbits"] = 10,
	["storagetank"] = 1
}
RECIPE.results = {
	["rocketlauncher"] = 1
}
RECIPE.tools = {
	"advtools",
	"schematicrocketlauncher"
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