RECIPE.name = "Flare gun"
RECIPE.description = "Crafting rec."
RECIPE.model = "models/weapons/w_am_flare_gun_wk.mdl"
RECIPE.category = "Utility"
RECIPE.requirements = {
	["valuable4"] = 4,
	["internalfiremechanisim"] = 1
}
RECIPE.results = {
	["flaregun"] = 1
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