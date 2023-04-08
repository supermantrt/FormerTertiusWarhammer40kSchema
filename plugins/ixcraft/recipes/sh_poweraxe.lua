RECIPE.name = "Mechanicus Power Axe"
RECIPE.description = "Crafting rec."
RECIPE.model = "models/joazzz/warhammer40k/dw_weapons/techmarine_axe_2.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["wood"] = 3,
	["electronics"] = 4,
	["powerbank"] = 1,
	["valuable4"] = 5,
	["advelectronics"] = 1
}
RECIPE.results = {
	["mechanicuspoweraxe"] = 1
}
RECIPE.tools = {
	"advtools"
	"schematicpoweraxe"
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