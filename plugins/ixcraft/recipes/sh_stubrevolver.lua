RECIPE.name = "Stub Revolver"
RECIPE.description = "Craft: Stub Revolver."
RECIPE.model = "models/weapons/w_rhino.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["autochassis"] = 1,
	["valuable4"] = 1,
	["internalfiremechanisim"] = 1,
	["mechanicalbits"] = 5
}
RECIPE.results = {
	["stubrevolver"] = 1
}
RECIPE.tools = {
	"tools"
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