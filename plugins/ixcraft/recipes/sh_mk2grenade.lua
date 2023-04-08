RECIPE.name = "MK2 Grenade"
RECIPE.description = "Crafting rec."
RECIPE.model = "models/bfv/gadgets/uk_no74_sticky_bomb.mdl"
RECIPE.category = "Utility"
RECIPE.requirements = {
	["valuable4"] = 2,
	["explosivepowder"] = 3,
	["explosivemechanisim"] = 1
}
RECIPE.results = {
	["mk2grenade"] = 1
}
RECIPE.tools = {
	"tools",
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