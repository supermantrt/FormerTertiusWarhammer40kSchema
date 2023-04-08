RECIPE.name = "Deconstruct: Arbities Shotgun"
RECIPE.description = "Deconstruct"
RECIPE.model = "models/blitz/weapons/arbites_shotgun_w.mdl"
RECIPE.category = "Crafting"
RECIPE.requirements = {
    ["arbshot"] = 1
}
RECIPE.results = {
    ["arbchassis"] = 1,
	["titanium"] = 7,
	["stock"] = 1,
	["blastcompensator"] = 1,
	["internalfiremechanisim"] = 7,
	["mechanicalbits"] = 11,
	["valuable4"] = 5,
	["plasteel"] = 4
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