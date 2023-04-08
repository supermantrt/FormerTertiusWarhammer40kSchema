RECIPE.name = "Somna"
RECIPE.description = "Crafting rec."
RECIPE.model = "models/jackswan/wk_pills_one.mdl"
RECIPE.category = "Drugs"
RECIPE.requirements = {
	["chemicalcompoundthirtyonebetastrain"] = 3,
	["chemicalpulsatingseed"] = 3,
	["chemicalcompoundtwelveomega"] = 1
}
RECIPE.results = {
	["somna"] = 1
}
RECIPE.tools = {
	"recipesomna"
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