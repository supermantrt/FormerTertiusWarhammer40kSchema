RECIPE.name = "Arbities Shotgun"
RECIPE.description = "Craft: Arbities Shotgun."
RECIPE.model = "models/blitz/weapons/arbites_shotgun_w.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["arbchassis"] = 1,
	["titanium"] = 7,
	["stock"] = 1,
	["blastcompensator"] = 1,
	["internalfiremechanisim"] = 10,
	["mechanicalbits"] = 12,
	["valuable4"] = 7,
	["plasteel"] = 5
}
RECIPE.results = {
	["arbshot"] = 1
}
RECIPE.tools = {
	"advtools",
	"schematicarbitiesshotugn"
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