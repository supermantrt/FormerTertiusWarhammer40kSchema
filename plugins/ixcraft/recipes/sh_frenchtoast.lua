RECIPE.name = "French Toast"
RECIPE.description = "Boil some eggs for a hearty meal."
RECIPE.model = "models/garlicbread01.mdl"
RECIPE.category = "food"
RECIPE.requirements = {
	["milk"] = 1,
	["bread"] = 3,
	["egg"] = 2,
	["butter"] = 1
}
RECIPE.results = {
	["boiledeggs"] = 3
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