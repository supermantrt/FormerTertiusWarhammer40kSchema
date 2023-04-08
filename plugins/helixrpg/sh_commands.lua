-- [[ COMMANDS ]] --

ix.command.Add("GetSkill", {
	syntax = "<skill>",
	description = "Gets a skill.",
	arguments = {
		ix.type.text
	},
	OnRun = function(self, client, skill)
		--[[for k, v in pairs( ix.skills.list ) do
			print(k)
			print(v)
		end]]
		char = client:GetCharacter()

		skilltab = char:GetAttributes()

		if ( table.IsEmpty(skilltab) ) then
			print( "Skill table is empty")
		else
			for k, v in pairs( skilltab ) do 
				print(k)
				print(v)
			end
		end
	end
})

if SERVER then
	util.AddNetworkString( "ixTestDerma" )
else
	net.Receive( "ixTestDerma", function()
		local frame = vgui.Create( "DFrame" )
		frame:SetPos( 500, 500 )
		frame:SetSize( 200, 300 )
		frame:SetTitle( "Frame" )
		frame:MakePopup()
		 
		local grid = vgui.Create( "DGrid", frame )
		grid:SetPos( 10, 30 )
		grid:SetCols( 5 )
		grid:SetColWide( 36 )
		 
		for i = 1, 30 do
			local but = vgui.Create( "DButton" )
			but:SetText( i )
			but:SetSize( 30, 20 )
			grid:AddItem( but )
		end
	end)
end

ix.command.Add("DermaTest", {
	syntax = "",
	description = "Tests Derma",
	OnRun = function(self, client, skill)
		net.Start( "ixTestDerma" )
		net.Send(client)
	end
})
