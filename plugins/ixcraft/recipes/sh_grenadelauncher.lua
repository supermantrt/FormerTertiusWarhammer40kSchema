RECIPE.name = "Grenade Launcher"
RECIPE.description = "Craft: Grenade Launcher"
RECIPE.model = "models/muschi/weapons/muschi_swep_grenadelauncher.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["grenadechassis"] = 1,
	["titanium"] = 5,
	["stock"] = 1,
	["blastcompensator"] = 1,
	["internalfiremechanisim"] = 3,
	["mechanicalbits"] = 5,
	["repeatermechanisim"] = 1,
	["advelectronics"] = 2
}
RECIPE.results = {
	["grenadelauncher"] = 1
}
RECIPE.tools = {
	"advtools",
	"schematicgrenadelauncher"
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