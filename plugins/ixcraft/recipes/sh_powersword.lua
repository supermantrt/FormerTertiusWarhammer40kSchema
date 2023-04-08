RECIPE.name = "Power Sword"
RECIPE.description = "Crafting rec."
RECIPE.model = "models/muschi/weapons/muschi_swep_power_sword_astartes.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["wood"] = 5,
	["advelectronics"] = 3,
	["electronics"] = 5,
	["titanium"] = 5,
	["powerbank"] = 1,
	["mechanicalbits"] = 10,
	["cryofuelcell"] = 3,
	["ceramite"] = 7,
	["powerswordelectronic"] = 1
}
RECIPE.results = {
	["powersword"] = 1
}
RECIPE.tools = {
	"advtools",
	"schematicpowersword"
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