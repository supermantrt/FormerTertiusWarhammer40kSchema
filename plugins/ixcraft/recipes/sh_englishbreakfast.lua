RECIPE.name = "English Breakfast"
RECIPE.description = "A proper meal for an officer. The Emperor Defense Leauge members value it greatly."
RECIPE.model = "models/canned_food.mdl"
RECIPE.category = "food"
RECIPE.requirements = {
	["bread"] = 3,
	["eggs"] = 1,
	["chicken"] = 1
}
RECIPE.results = {
	["breadedchicken"] = 1
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