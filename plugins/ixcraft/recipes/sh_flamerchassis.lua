RECIPE.name = "Flamer Chassis"
RECIPE.description = "Craft: Flamer Chassis."
RECIPE.model = "models/muschi/weapons/muschi_swep_autogun_sniper.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["valuable4"] = 7,
	["scrap"] = 5,
	["mechanicalbits"] = 2,
	["electronics"] = 2,
	["ceramite"] = 3
}
RECIPE.results = {
	["flamerchassis"] = 1
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