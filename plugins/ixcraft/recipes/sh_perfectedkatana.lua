RECIPE.name = "Perfected Katana"
RECIPE.description = "Crafting rec."
RECIPE.model = "models/weapons/tfa_l4d2/w_oren_katana.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["valuable4"] = 4,
	["wood"] = 2,
	["ceramite"] = 3
}
RECIPE.results = {
	["katana2"] = 1
}
RECIPE.tools = {
	"advtools"
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