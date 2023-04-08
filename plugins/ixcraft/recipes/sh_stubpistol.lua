RECIPE.name = "Stub Pistol"
RECIPE.description = "Craft: Stub Pistol."
RECIPE.model = "models/props_junk/cardboard_box001a.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["autochassis"] = 1,
	["valuable4"] = 5,
	["internalfiremechanisim"] = 1,
	["mechanicalbits"] = 2
}
RECIPE.results = {
	["stub_pistol"] = 1
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