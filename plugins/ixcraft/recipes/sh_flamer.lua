RECIPE.name = "Flamer"
RECIPE.description = "Craft: Flamer."
RECIPE.model = "models/muschi/weapons/muschi_swep_autogun_sniper.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["flamerchassis"] = 1,
	["titanium"] = 5,
	["stock"] = 1,
	["heatresistantmaterial"] = 3,
	["internalfiremechanisim"] = 3,
	["mechanicalbits"] = 7,
	["storagetank"] = 1
}
RECIPE.results = {
	["flamer"] = 1
}
RECIPE.tools = {
	"advtools",
	"schematicflamer"
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