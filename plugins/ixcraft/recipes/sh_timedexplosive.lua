RECIPE.name = "Timed Explosive"
RECIPE.description = "Crafting rec."
RECIPE.model = "models/codww2/equipment/satchel charge.mdl"
RECIPE.category = "Utility"
RECIPE.requirements = {
	["electronics"] = 3,
	["explosivepowder"] = 1
}
RECIPE.results = {
	["tnt"] = 1
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