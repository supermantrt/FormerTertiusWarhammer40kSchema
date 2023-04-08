RECIPE.name = "Rainbow"
RECIPE.description = "Crafting rec."
RECIPE.model = "models/weapons/w_wk_holygift_injector.mdl"
RECIPE.category = "Crafting"
RECIPE.requirements = {
	["waterjug"] = 1,
	["chemicalbrownroot"] = 3,
	["chemicalcompoundtwentyfour"] = 5,
	["chemicalalcohol"] = 1,
	["reciperainbow"] = 1
}
RECIPE.results = {
	["rainbow"] = 1
}
RECIPE.tools = {
	"cookingset"
}
RECIPE.flag = "Q"

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_walterwhite")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a workbench."
end)