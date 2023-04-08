
local PLUGIN = PLUGIN

local PANEL = {}

function PANEL:Init()

	local pWidth, pHeight = ScrW() * 0.75, ScrH() * 0.75
	self:SetSize(pWidth, pHeight)
	self:Center()
	self:SetBackgroundBlur(true)
	self:SetDeleteOnClose(true)

	self:MakePopup()
	self:SetTitle("Bodygroup Manager")

	self.bodygroups = self:Add("DScrollPanel")
	self.bodygroups:Dock(RIGHT)

end

vgui.Register("ixTesting", PANEL, "DFrame")
