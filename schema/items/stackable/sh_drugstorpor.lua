RECIPE.name = "Torpor"
RECIPE.description = "Crafting rec."
RECIPE.model = "models/jackswan/wk_pills_one.mdl"
RECIPE.category = "Drugs"
RECIPE.requirements = {
	["chemicalpulsatingseed"] = 2,
	["chemicalcompoundtwelveomega"] = 1
}
RECIPE.results = {
	["torpor"] = 1
}
RECIPE.tools = {
	"recipetorpor"
}
RECIPE.flag = "Q"

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_walterwhiteh")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a workbench."
end)