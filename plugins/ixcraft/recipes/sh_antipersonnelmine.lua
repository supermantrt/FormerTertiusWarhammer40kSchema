RECIPE.name = "Anti Personnel Mine"
RECIPE.description = "Crafting rec."
RECIPE.model = "models/codww2/equipment/s-mine 44.mdl"
RECIPE.category = "Utility"
RECIPE.requirements = {
	["valuable4"] = 7,
	["electronics"] = 3,
	["explosivepowder"] = 10,
	["explosivemechanisim"] = 3
}
RECIPE.results = {
	["antipeoplemine"] = 1
}
RECIPE.tools = {
	"tools",
	"schematicantipeoplemine"
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