RECIPE.name = "Excellent Flak Armor"
RECIPE.description = "Upgrade Improved Flak Armor."
RECIPE.model = "models/props_junk/cardboard_box001a.mdl"
RECIPE.category = "Armor"
RECIPE.requirements = {
	["flakpieces"] = 15,
	["cameleolinesubstitute"] = 3,
	["flakarmorimproved"] = 1,
	["schematicflakarmor"] = 1
}
RECIPE.results = {
	["flakarmorexcellent"] = 1
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