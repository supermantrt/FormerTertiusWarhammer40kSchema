RECIPE.name = "Scrambled  Eggs"
RECIPE.description = "Some scrambelled eggs cooked with milk to break the boredom."
RECIPE.model = "models/props_phx/misc/egg.mdl"
RECIPE.category = "food"
RECIPE.requirements = {
	["milk"] = 1,
	["eggs"] = 3
}
RECIPE.results = {
	["scrambeledeggs"] = 3
}
RECIPE.tools = {
	"cookingkit"
}
RECIPE.flag = "Q"

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_campfire")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a fire."
end)