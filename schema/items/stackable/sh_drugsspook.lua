RECIPE.name = "Spook"
RECIPE.description = "Crafting rec."
RECIPE.model = "models/jackswan/wk_pills_one.mdl"
RECIPE.category = "Drugs"
RECIPE.requirements = {
	["chemicalshriekingcomb"] = 5,
	["chemicalpulsatingseed"] = 3
}
RECIPE.results = {
	["spook"] = 1
}
RECIPE.tools = {
	"recipespook"
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