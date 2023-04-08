RECIPE.name = "Plasma Pistol"
RECIPE.description = "Craft: Plasma Pistol."
RECIPE.model = "models/muschi/weapons/muschi_swep_plasmapistol.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["plasmapistolchassis"] = 1,
	["titanium"] = 5,
	["ceramite"] = 3,
	["plasmacoolingcoils"] = 3,
	["heatresistantmaterial"] = 3,
	["internalfiremechanisim"] = 3,
	["mechanicalbits"] = 7,
	["repeatermechanisim"] = 1,
	["electronics"] = 7,
	["advelectronics"] = 2
}
RECIPE.results = {
	["plasma_pistol"] = 1
}
RECIPE.tools = {
	"advtools",
	"schematicplasmapistol"
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