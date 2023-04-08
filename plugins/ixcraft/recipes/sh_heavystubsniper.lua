RECIPE.name = "Heavy Stub Rifle"
RECIPE.description = "Craft: Heavy Stub Rifle."
RECIPE.model = "models/weapons/w_ins2_warface_barret_m98b.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["autochassisreinforced"] = 1,
	["titanium"] = 3,
	["stock"] = 1,
	["blastcompensator"] = 1,
	["internalfiremechanisim"] = 2,
	["mechanicalbits"] = 2,
	["opticscope"] = 1
}
RECIPE.results = {
	["barrett"] = 1
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