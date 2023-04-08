RECIPE.name = "Entrentching Tool"
RECIPE.description = "Crafting rec."
RECIPE.model = "models/w_shovel.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["valuable4"] = 1,
	["wood"] = 2,
	["scrap"] = 3,
}
RECIPE.results = {
	["shovel"] = 1
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