RECIPE.name = "Vehicle Repair Tool"
RECIPE.description = "Crafting rec."
RECIPE.model = "models/props_junk/cardboard_box001a.mdl"
RECIPE.category = "Utility"
RECIPE.requirements = {
	["valuable4"] = 4,
	["scrap"] = 5,
	["tools"] = 1,
	["electronics"] = 3
}
RECIPE.results = {
	["vehiclerepairtool"] = 1
}
RECIPE.tools = {
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