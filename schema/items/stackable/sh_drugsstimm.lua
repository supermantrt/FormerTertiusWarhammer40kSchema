RECIPE.name = "Stimm"
RECIPE.description = "Crafting rec."
RECIPE.model = "models/jackswan/wk_pills_one.mdl"
RECIPE.category = "Drugs"
RECIPE.requirements = {
	["sh_chemicalcompoundtwentyfour.lua"] = 2,
	["sh_chemicalcompoundthirtyonealphastrain.lua"] = 1
}
RECIPE.results = {
	["stimm"] = 1
}
RECIPE.tools = {
	"recipestimm"
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