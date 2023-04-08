RECIPE.name = "Shoota"
RECIPE.description = "Craft: Shoota."
RECIPE.model = "models/weapons/ork/spechul_shoota.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["scrap"] = 10,
	["valuable4"] = 3,
	["repeatermechanisim"] = 1,
	["internalfiremechanisim"] = 1,
	["mechanicalbits"] = 3
}
RECIPE.results = {
	["orkshoota"] = 1
}
RECIPE.tools = {
	"tools",
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