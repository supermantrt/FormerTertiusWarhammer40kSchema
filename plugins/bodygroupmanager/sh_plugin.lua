
local PLUGIN = PLUGIN

PLUGIN.name = "Bodygroup Manager"
PLUGIN.author = "Gary Tate"
PLUGIN.description = "Allows players and administration to have an easier time customising bodygroups."

ix.lang.AddTable("english", {
	cmdEditBodygroup = "Customise the bodygroups of a target."
})

if SERVER then
	util.AddNetworkString( "ixTestDerma2" )
else
	net.Receive( "ixTestDerma2", function()
		local frame = vgui.Create( "DFrame" )
		frame:SetPos( 1000, 1000 )
		frame:SetSize( 500, 1000 )
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

ix.command.Add("DermaTest2", {
	syntax = "",
	description = "Tests Derma2",
	OnRun = function(self, client, skill)
		net.Start( "ixTestDerma2" )
		net.Send(client)
	end
})


ix.command.Add("CharEditBodygroup", {
	description = "@cmdEditBodygroup",
	adminOnly = true,
	arguments = {
		bit.bor(ix.type.player, ix.type.optional)
	},
	OnRun = function(self, client, target)
		net.Start("ixBodygroupView")
			net.WriteEntity(target or client)
		net.Send(client)
	end
})

properties.Add("ixEditBodygroups", {
	MenuLabel = "#Edit Bodygroups",
	Order = 10,
	MenuIcon = "icon16/user_edit.png",

	Filter = function(self, entity, client)
		return (entity:IsPlayer() and #entity:GetBodyGroups() > 1 and ix.command.HasAccess(client, "CharEditBodygroup"))
	end,

	Action = function(self, entity)
		local panel = vgui.Create("ixBodygroupView")
		panel:Display(entity)
	end
})

ix.util.Include("sv_hooks.lua")
ix.util.Include("cl_hooks.lua")
