ITEM.name = "Flashlight"
ITEM.model = ("models/Items/battery.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A standard flashlight that can be toggled."
ITEM.category = "misc"

ITEM:Hook("drop", function(item)
	item.player:Flashlight(false)
end)