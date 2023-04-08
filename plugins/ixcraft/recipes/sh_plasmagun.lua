RECIPE.name = "Plasmagun"
RECIPE.description = "Craft: Plasmagun."
RECIPE.model = "models/muschi/weapons/muschi_swep_plasmagun.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["plasmacasing"] = 1,
	["titanium"] = 7,
	["ceramite"] = 5,
	["plasmacoolingcoils"] = 5,
	["heatresistantmaterial"] = 5,
	["internalfiremechanisim"] = 5,
	["mechanicalbits"] = 8,
	["repeatermechanisim"] = 2,
	["electronics"] = 10,
	["advelectronics"] = 3
}
RECIPE.results = {
	["plasma_rifle"] = 1
}
RECIPE.tools = {
	"advtools",
	"schematicplasmarifle"
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