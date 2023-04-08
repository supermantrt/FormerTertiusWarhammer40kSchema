RECIPE.name = "Anti Tank Mine"
RECIPE.description = "Crafting rec."
RECIPE.model = "models/codww2/equipment/tellermine 43.mdl"
RECIPE.category = "Utility"
RECIPE.requirements = {
	["valuable4"] = 5,
	["electronics"] = 2,
	["explosivepowder"] = 10,
	["explosivemechanisim"] = 1,
}
RECIPE.results = {
	["antitankmine"] = 1
}
RECIPE.tools = {
	"tools",
	"schematicantitankmine"
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