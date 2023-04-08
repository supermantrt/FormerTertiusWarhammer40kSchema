RECIPE.name = "Ogryn Ripper Gun"
RECIPE.description = "Crafting rec."
RECIPE.model = "models/props_junk/cardboard_box001a.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["ogrynchassis"] = 1,
	["titanium"] = 3,
	["repeatermechanisim"] = 2,
	["mechanicalbits"] = 7,
	["heatresistantmaterial"] = 3,
	["internalfiremechanisim"] = 5
	
}
RECIPE.results = {
	["vossstubber"] = 1
}
RECIPE.tools = {
	"advtools",
	"schematicrippergun"
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