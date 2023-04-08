--local PLUGIN = PLUGIN

--PLUGIN.name = "Glow Flashlight"
--PLUGIN.description = "Replaces the default Gmod Flashlight with a glowy light."
--PLUGIN.author = "Riggs Mackay"
--PLUGIN.schema = "Any"


--if ( CLIENT ) then
--    function PLUGIN:PostDrawOpaqueRenderables()
--        local ply = LocalPlayer()
--        if not ( ply:GetNWBool("ixFlashlight") ) then return end
        
--        local flashlight = DynamicLight( ply:EntIndex() )
--        if ( flashlight ) then
--            flashlight.pos = ply:GetShootPos()
--            flashlight.r = 255
--            flashlight.g = 255
--            flashlight.b = 255
--            flashlight.brightness = 3
--            flashlight.Decay = 1000
--            flashlight.Size = 512
--            flashlight.DieTime = CurTime() + 1
--        end
--    end
--end

--if ( SERVER ) then
--    function PLUGIN:Initialize(ply)
--        ply:SetNWBool("ixFlashlight", false)
--    end

--    function PLUGIN:PlayerSpawn(ply)
--        ply:SetNWBool("ixFlashlight", false)
--    end

--    function PLUGIN:CharacterLoaded(character)
--        local ply = character:GetPlayer()
--        ply:SetNWBool("ixFlashlight", false)
--    end

--    function PLUGIN:PlayerSwitchFlashlight(ply, enabled)
--        ply:SetNWBool("ixFlashlight", !ply:GetNWBool("ixFlashlight", false))

--        if ( ply:GetNWBool("ixFlashlight", true) == true ) then
 --           ply:EmitSound("buttons/button24.wav", 60, 100)
 --       else
 --           ply:EmitSound("buttons/button24.wav", 60, 70)
  --      end

   --     return false
--    end
--end