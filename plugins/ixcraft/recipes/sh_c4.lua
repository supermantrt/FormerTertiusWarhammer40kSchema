RECIPE.name = "C4"
RECIPE.description = "Crafting rec."
RECIPE.model = "models/props_clutter/satchel.mdl"
RECIPE.category = "Utility"
RECIPE.requirements = {
	["electronics"] = 5,
	["explosivepowder"] = 25,
	["explosivemechanisim"] = 5,
	["plastic"] = 10,
	["advelectronics"] = 3
}
RECIPE.results = {
	["c4"] = 1
}
RECIPE.tools = {
	"tools",
	"schematicc4"
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