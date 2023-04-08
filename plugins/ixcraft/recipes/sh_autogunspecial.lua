RECIPE.name = "Autogun Special"
RECIPE.description = "Craft: Autogun Special."
RECIPE.model = "models/muschi/weapons/muschi_swep_autogun.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["autochassisreinforced"] = 1,
	["titanium"] = 5,
	["stock"] = 1,
	["blastcompensator"] = 1,
	["internalfiremechanisim"] = 5,
	["mechanicalbits"] = 7,
	["valuable4"] = 5,
	["plasteel"] = 1
}
RECIPE.results = {
	["autogunspec"] = 1
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