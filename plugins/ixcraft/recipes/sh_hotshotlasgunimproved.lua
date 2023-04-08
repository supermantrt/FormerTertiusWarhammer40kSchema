RECIPE.name = "Hot-Shot Lasgun Improved"
RECIPE.description = "Craft: Hot Shot Lasgun Improved."
RECIPE.model = "models/muschi/weapons/muschi_swep_lasgun.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["laschassis"] = 1,
	["titanium"] = 7,
	["stock"] = 1,
	["powerpackcatch"] = 2,
	["laspowernode"] = 1,
	["electronics"] = 8,
	["advelectronics"] = 7,
	["plasteel"] = 5
}
RECIPE.results = {
	["hotshotimproved"] = 1
}
RECIPE.tools = {
	"advtools",
	"schematichotshotlasgunimproved"
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