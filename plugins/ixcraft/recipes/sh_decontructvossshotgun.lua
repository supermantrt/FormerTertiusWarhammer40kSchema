RECIPE.name = "Deconstruct: Voss Shotgun"
RECIPE.description = "Deconstruct"
RECIPE.model = "models/blitz/weapons/arbites_shotgun_w.mdl"
RECIPE.category = "Crafting"
RECIPE.requirements = {
	["voss_shotgun"] = 1
}
RECIPE.results = {
	["vossshotgunchassis"] = 1,
	["titanium"] = 5,
	["stock"] = 1,
	["blastcompensator"] = 1,
	["internalfiremechanisim"] = 5,
	["mechanicalbits"] = 7,
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