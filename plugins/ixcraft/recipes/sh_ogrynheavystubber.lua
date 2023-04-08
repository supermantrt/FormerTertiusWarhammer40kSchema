RECIPE.name = "Ogryn Heavy Stubber"
RECIPE.description = "Crafting rec."
RECIPE.model = "models/props_junk/cardboard_box001a.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["ogrynchassis"] = 1,
	["titanium"] = 4,
	["repeatermechanisim"] = 5,
	["mechanicalbits"] = 10,
	["heatresistantmaterial"] = 3,
	["internalfiremechanisim"] = 5
	
}
RECIPE.results = {
	["vossstubber"] = 1
}
RECIPE.tools = {
	"advtools",
	"schematicogrynheavystubber"
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