RECIPE.name = "Big Shoota"
RECIPE.description = "Craft: Big Shoota."
RECIPE.model = "models/muschi/weapons/muschi_swep_autopistol.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["scrap"] = 15,
	["valuable4"] = 5,
	["repeatermechanisim"] = 1,
	["internalfiremechanisim"] = 2,
	["mechanicalbits"] = 5
}
RECIPE.results = {
	["orkbigshoota"] = 1
}
RECIPE.tools = {
	"tools",
	"schematicorkbigshoota"
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