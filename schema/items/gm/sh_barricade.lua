ITEM.name = "Expandable Barricade"
ITEM.model = Model("models/jackswan/wk_wire.mdl")
ITEM.description = "You can use this to create a barricade"
ITEM.price = 0
ITEM.flag = "g"
ITEM.category = "GM"



ITEM.functions.Use = {
	OnRun = function(itemTable)
		local client = itemTable.player
		local data = {}
			data.start = client:GetShootPos()
			data.endpos = data.start + client:GetAimVector() * 96
			data.filter = client
		client:Freeze(true)
		client:SetAction("barricading", 5, function()
			client:ForceSequence("throwitem", nil, 1.5)
			local barricadewire = ents.Create( "wire" )
			barricadewire:SetPos( data.endpos )
			barricadewire:SetAngles( client:GetAngles() )
			barricadewire:Spawn()
			barricadewire:DropToFloor()
			client:Freeze(false)
		end)
	end
}