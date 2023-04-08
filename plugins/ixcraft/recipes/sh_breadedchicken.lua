RECIPE.name = "Breaded Chicken"
RECIPE.description = "An egg, chicken and loaves of bread for something delicious"
RECIPE.model = "models/cookedchickenmeat01.mdl"
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