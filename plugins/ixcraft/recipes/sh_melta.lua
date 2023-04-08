RECIPE.name = "Meltagun"
RECIPE.description = "Craft: Meltagun"
RECIPE.model = "models/muschi/weapons/muschi_swep_melta.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["meltachassis"] = 1,
	["titanium"] = 5,
	["blastcompensator"] = 1,
	["internalfiremechanisim"] = 5,
	["mechanicalbits"] = 7,
	["repeatermechanisim"] = 1,
	["advelectronics"] = 3,
	["heatresistantmaterial"] = 5,
	["cryofuelcell"] = 2
}
RECIPE.results = {
	["melta"] = 1
}
RECIPE.tools = {
	"advtools",
	"schematicmeltagun"
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