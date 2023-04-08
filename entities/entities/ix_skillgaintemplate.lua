
AddCSLuaFile()

ENT.Type = "anim"
ENT.PrintName = "Skill Gain Template"
ENT.Category = "HL2 RP"
ENT.Spawnable = true
ENT.AdminOnly = true
ENT.PhysgunDisable = true
ENT.bNoPersist = true
ENT.MaxRenderDistance = math.pow(256, 2)

if (SERVER) then
	function ENT:Initialize()
		self:SetModel("models/props_interiors/vendingmachinesoda01a.mdl") -- Set Model
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		self:SetUseType(SIMPLE_USE)

		local physics = self:GetPhysicsObject()
		physics:EnableMotion(false)
		physics:Sleep()

		self.nextUseTime = 0
	end

	function ENT:SpawnFunction(client, trace)
		local skilltemplate = ents.Create("ix_skillgaintemplate")

		skilltemplate:SetPos(trace.HitPos + Vector(0, 0, 48))
		skilltemplate:SetAngles(Angle(0, (skilltemplate:GetPos() - client:GetPos()):Angle().y - 180, 0))
		skilltemplate:Spawn()
		skilltemplate:Activate()

		return skilltemplate
	end

	function ENT:Use(client)

		if (self.nextUseTime > CurTime()) then
			return
		end

		self.nextUseTime = CurTime() + 3600 -- Set Cooldown

--		client:GetCharacter():UpdateAttrib("agi", 0.1)
--		client:GetCharacter():UpdateSkill("faith", 0.1)

	end
else

	function ENT:Draw()
		self:DrawModel()
	end
end
