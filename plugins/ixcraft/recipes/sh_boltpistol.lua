RECIPE.name = "Boltpistol"
RECIPE.description = "Craft: Boltpistol."
RECIPE.model = "models/weapons/w_am_boltpistol_wk.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["valuable4"] = 10,
	["repeatermechanisim"] = 1,
	["internalfiremechanisim"] = 3,
	["mechanicalbits"] = 7,
	["boltpistolchassis"] = 1,
}
RECIPE.results = {
	["boltpistol"] = 1
}
RECIPE.tools = {
	"advtools",
	"schematicboltpistol"
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