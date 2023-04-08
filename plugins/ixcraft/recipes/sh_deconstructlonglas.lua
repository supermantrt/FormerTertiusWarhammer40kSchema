RECIPE.name = "Deconstruct: Longlas"
RECIPE.description = "Deconstruct"
RECIPE.model = "models/muschi/weapons/muschi_swep_lasgun.mdl"
RECIPE.category = "Crafting"
RECIPE.requirements = {
	["longlas"] = 1
}
RECIPE.results = {
	["titanium"] = 3,
	["stock"] = 1,
	["laspowernode"] = 1,
	["electronics"] = 5,
	["advelectronics"] = 5,
}
RECIPE.tools = {
	"advtools",
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