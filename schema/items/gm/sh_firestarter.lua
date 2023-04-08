
ITEM.name = "Firestarter"
ITEM.model = Model("models/fallout_nv/clutter/camp/campfire02.mdl")
ITEM.description = "You can use this to start fires."
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
		client:SetAction("firestarting", 5, function()
			client:ForceSequence("throwitem", nil, 1.5)
			local campfire = ents.Create( "ix_station_campfire" )
			campfire:SetPos( data.endpos )
			campfire:Spawn()
			campfire:DropToFloor()
			local fire = ents.Create( "pfx1_00" )
			fire:SetPos( data.endpos )
			fire:Spawn()
			fire:SetCollisionGroup( COLLISION_GROUP_WORLD )
			fire:DropToFloor()
			client:Freeze(false)
		end)
	end
}
