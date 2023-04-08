RECIPE.name = "Deconstruct: Flak Armour"
RECIPE.description = "Crafting rec."
RECIPE.model = "models/props_junk/cardboard_box001a.mdl"
RECIPE.category = "Crafting"
RECIPE.requirements = {
	["flakarmorstandard"] = 1
}
RECIPE.results = {
	["cameleolinesubstitute"] = 2,
	["flakpieces"] = 15,
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