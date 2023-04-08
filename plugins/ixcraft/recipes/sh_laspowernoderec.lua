
RECIPE.name = "Las Power Node"
RECIPE.description = "Crafting rec."
RECIPE.model = "models/props_junk/cardboard_box001a.mdl"
RECIPE.category = "Crafting"
RECIPE.requirements = {
	["steelbars"] = 2,
	["titanium"] = 1,
	["advelectronics"] = 1,
	["electronics"] = 1
}
RECIPE.results = {
	["stock"] = 1
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
