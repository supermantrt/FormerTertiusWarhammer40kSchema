local PLUGIN = PLUGIN
PLUGIN.name = "Traits"
PLUGIN.author = "Supermantrt"
PLUGIN.description = "Adds mechanics for traits"

local PlayerTablePickpocketed = {}

if(SERVER) then
	function PLUGIN:PostPlayerLoadout(client)
		local character = client:GetCharacter()
		local unstoppableforce = character:HasTrait("unstoppableforce")
		local bloodclot = character:HasTrait("bloodclot")
		local adrenaline = character:HasTrait("adrenaline")
		local frozenbones = character:HasTrait("frozenbones")
		local emperorssilence = character:HasTrait("emperorssilence")
		local negotatitor = character:HasTrait("negotatitor")
		local bloodlust = character:HasTrait("bloodlust")
		local thievinghands = character:HasTrait("thivinghands")
		local isolationist = character:HasTrait("isolationist")
		local coward = character:HasTrait("coward")
		local vulture = character:HasTrait("looter")

		if(bloodclot == true) then 
			client:SetNetVar("nosecondwindsupermantrt", true)
			client:SetNetVar("hasbloodclot", true)
		else
			client:SetNetVar("hasbloodclot", false)
		end

		if(coward == true) then 
			client:SetNetVar("hascoward", true)
			client:SetNetVar("cowardwork", false)
			client:SetNetVar("SpeedBoost", false)
			client:SetNetVar("cowardPlayer", false)
		else
			client:SetNetVar("hascoward", false)
		end

		if(frozenbones == true) then 
			client:SetNetVar("hasfrozenbones", true)
		else
			client:SetNetVar("hasfrozenbones", false)
		end

		if(thievinghands == true) then 
--		if(timer.Exists("pickpockettimer") == false) then
			client:SetNetVar("hasthievinghands", true)
--			client:SetNetVar("Pickpockettimeout", true)
		--end
		else
			client:SetNetVar("hasthievinghands", false)
--			client:SetNetVar("Pickpockettimeout", true)
		end

		if(bloodlust == true) then 
			client:SetNetVar("hasbloodlust", true)
		else
			client:SetNetVar("hasbloodlust", false)
		end

		if(isolationist == true) then 
			client:SetNetVar("hasisolationist", true)
			client:SetNetVar("isolationistwork", true)
		else
			client:SetNetVar("hasisolationist", false)
		end

		if(negotatitor == true) then 
			client:SetNetVar("hasnegotatitor", true)
		else
			client:SetNetVar("hasnegotatitor", false)
		end

		if(emperorssilence == true) then 
			client:SetNetVar("hasemperorssilence", true)
			client:SetNetVar("emperorssilencebulletshoot", true)
			client:SetNetVar("emperorssilenceinvisibility", true)

			timer.Create("Stealth" .. client:UserID(), 0.5 , 0 , function()

				if(client:Crouching() == false) then
					if(client:GetNetVar("emperorssilencebulletshoot", true) == true) then

						client:RemoveFlags(65536)

						client:SetNetVar("emperorssilenceinvisibility", false)
						PLUGIN:CheckNpcStealth(client)
						return
					end
				end

				if(client:Crouching() == true) then
					if(client:GetNetVar("emperorssilencebulletshoot", true) == true) then

						client:AddFlags(65536)

						client:SetNetVar("emperorssilenceinvisibility", true)
						PLUGIN:CheckNpcStealth(client)
					end
				end

			end)

		else
			client:SetNetVar("hasemperorssilence", false)
			if(timer.Exists("Stealth" .. client:UserID())) then
				timer.Remove("Stealth" .. client:UserID())
			end
		end

		if(adrenaline == true) then 
			client:SetNetVar("nosecondwindsupermantrt", true)
			client:SetNetVar("hasadrenaline", true)
		else
			client:SetNetVar("hasadrenaline", false)
		end

		if(vulture == true) then 
			client:SetNetVar("alternatervulture", true)
			client:SetNetVar("hasvulture", true)
		else
			client:SetNetVar("hasvulture", false)
		end

		if(adrenaline == true and bloodclot == true) then
			client:SetNetVar("intensepain", false)
		end

		if(unstoppableforce == true) then 
			client:AddEFlags(EFL_NO_DAMAGE_FORCES)
		else
			client:RemoveEFlags(EFL_NO_DAMAGE_FORCES)
		end
	end
end

function PLUGIN:TableManagement(entity)
	FullTable = ents.FindInPVS(entity)
	NPCTable = {}
	PlayerTable = {}
	NPCTableAndPlayerTable = {}


	for k, v in pairs(FullTable) do
 		if(v:IsNPC()) then
 			table.insert(NPCTable, v)
 			table.insert(NPCTableAndPlayerTable, v)
 		end
	end

	for k, v in pairs(FullTable) do
 		if(v:IsPlayer() and v != entity) then
	 		table.insert(PlayerTable, v)
 			table.insert(NPCTableAndPlayerTable, v)
 		end
	end
end

function PLUGIN:AdjustStaminaOffset(client, baseOffset)
	if(client:GetNetVar("hasfrozenbones", false) == true) then
		return baseOffset*0 -- Drain/Regain stamina twice as fast.
	end
end
function PLUGIN:PlayerWeaponChanged(client, weapon )
	PLUGIN:EmperorsRageFunction(client, weapon)
end

function PLUGIN:EmperorsRageFunction(client, weapon)
	if SERVER then
		local character = client:GetCharacter()
		local emperorsrage = character:HasTrait("emperorsrage")

		EmperorRageWeps = {
			"ix_hands",
			"tfa_kf2_mace",
			"tfa_hwh40k_chain_sword",
			"tfa_doi_marinebayonet",
			"tfa_dw_techpoweraxe",
			"tfa_kf2_zweihander",
			"whip_idle",
			"tfa_doi_etoolger",
			"tfa_big_choppa",
			"tfa_zad_chainaxe",
			"tfa_choppa",
			"tfa_kf2_katana",
			"tfa_kf2_oren",
			"tfa_dw_powersword",
			"tfa_power_sabers",
			"tfa_uge_hammer"
		}

		if(emperorsrage == true) then 
			for key, value in pairs(EmperorRageWeps) do
				if value == weapon:GetClass() then
					client:SetNetVar("Weaponismeleesupermantrt", true)
					break
				end
			end
		end
	end
end

function PLUGIN:Coward(entity)
	if(timer.Exists("RefreshTable") == false) then 
		PLUGIN:TableManagement(entity)
	end

	for k, v in pairs(NPCTable) do
		local distance = v:GetPos():DistToSqr(entity:GetPos())

		if(distance >= 250000) then
			entity:SetNetVar("cowardwork", false)
		end

		if(distance <= 250000) then
			entity:SetNetVar("cowardwork", true)
			break
		end
	end

	if(entity:GetNetVar("cowardwork", false) == true and entity:GetNetVar("SpeedBoost", false) == false) then
		entity:SetRunSpeed( entity:GetRunSpeed() * 1.5 )
		entity:SetWalkSpeed( entity:GetWalkSpeed() * 1.5 )
		entity:SetNetVar("SpeedBoost", true)
	end

	if(entity:GetNetVar("SpeedBoost", false) == true and entity:GetNetVar("cowardwork", false) == false) then
		entity:SetRunSpeed( entity:GetRunSpeed() * 0.666 )
		entity:SetWalkSpeed( entity:GetWalkSpeed() * 0.666 )
		entity:SetNetVar("SpeedBoost", false)
	end

end

function PLUGIN:Vulture(entity)
	if(timer.Exists("RefreshTable") == false) then 
		PLUGIN:TableManagement(entity)
	end

	local vulture1 = {}
	local vulture2 = {}

	PrintTable(table.GetDifference(vulture1, vulture2)) --Print the difference.

	for k, v in pairs(PlayerTable) do
		local distance = v:GetPos():DistToSqr(entity:GetPos())

		if(distance <= 250000 and entity:GetNetVar("alternatervulture", true) == true) then
			entity:SetNetVar("alternatervulture", false)
			table.insert(vulture1, v)
		end
		if(distance <= 250000 and entity:GetNetVar("alternatervulture", true) == false) then
			entity:SetNetVar("alternatervulture", true)
			table.insert(vulture2, v)
		end
	end

	if( table.IsEmpty(vulture1) == false and table.IsEmpty(vulture2) == false) then

		local vulture3 = table.GetDifference(vulture1, vulture2)
		PrintTable(vulture3)

	end



	if(entity:GetNetVar("cowardwork", false) == true and entity:GetNetVar("SpeedBoost", false) == false) then
		entity:SetRunSpeed( entity:GetRunSpeed() * 1.5 )
		entity:SetWalkSpeed( entity:GetWalkSpeed() * 1.5 )
		entity:SetNetVar("SpeedBoost", true)
	end

	if(entity:GetNetVar("SpeedBoost", false) == true and entity:GetNetVar("cowardwork", false) == false) then
		entity:SetRunSpeed( entity:GetRunSpeed() * 0.666 )
		entity:SetWalkSpeed( entity:GetWalkSpeed() * 0.666 )
		entity:SetNetVar("SpeedBoost", false)
	end

end
--[[
function PLUGIN:Isolationist(entity)
	if(timer.Exists("RefreshTable") == false) then 
		PLUGIN:TableManagement(entity)
	end

	for k, v in pairs(PlayerTable) do
		local distance = v:GetPos():DistToSqr(entity:GetPos())

		if(distance >= 250000) then
			entity:SetNetVar("isolationistwork", false)
		end

		if(distance <= 250000) then
			entity:SetNetVar("isolationistwork", true)
			entity:SetRunSpeed( entity:GetRunSpeed() * 0.8 )
			entity:SetWalkSpeed( entity:GetWalkSpeed() * 0.8 )
			entity:SetNetVar("SpeedBoost", false)
			break
		end
	end

	if(entity:GetNetVar("isolationistwork", false) == false) then
		entity:SetRunSpeed( entity:GetRunSpeed() * 1.25 )
		entity:SetWalkSpeed( entity:GetWalkSpeed() * 1.25 )
	end

end
]]
function PLUGIN:Secondwind(target, dmginfo)

	-- bloodclot secondiwnd

	if(dmginfo:GetDamage() > 1000) then
		return
	end

	if(target:GetNetVar("hasbloodclot", false) == true and target:GetNetVar("hasadrenaline", false) == false) then

		local playermaxhp = target:GetMaxHealth()

		if(target:Health() <= dmginfo:GetDamage() and  target:GetNetVar("nosecondwindsupermantrt", false) == true) then

			-- Second wind start

			dmginfo:SetDamage(0)
			target:Notify("Second Wind!")
			target:SetHealth( playermaxhp / 2 )
			target:SetNetVar("nosecondwindsupermantrt", false)
			target:GodEnable()

			-- Second wind end

			timer.Create("graceperiodbloodlust" .. target:UserID(), 3, 1, function()
				target:GodDisable()
			end)

			-- check if passive regen happens

			if( timer.Exists( "passiveregenbloodclotsecondwind" .. target:UserID() ) == false ) then
				if(timer.Exists( "passiveregenbloodclot" .. target:UserID() )) then
					timer.Remove( "passiveregenbloodclot" .. target:UserID() )
				end

				-- second wind regen
				timer.Create("passiveregenbloodclotsecondwind" .. target:UserID(), 2, 7, function()
					if(playermaxhp > target:Health()) then 
						target:SetHealth( target:Health() + ( playermaxhp / 5 ) )
					else
						timer.Remove( "passiveregenbloodclotsecondwind" .. target:UserID() )
						target:SetHealth( playermaxhp )
					end
				end)
			end
		end


		-- normal regen bloodclot

		if( timer.Exists( "passiveregenbloodclot" .. target:UserID() ) == false and timer.Exists( "passiveregenbloodclotsecondwind" .. target:UserID() ) == false and target:GetNetVar("nosecondwindsupermantrt", false) == true) then
			timer.Create("passiveregenbloodclot" .. target:UserID(), 1, 2, function()
				if(playermaxhp > target:Health()) then 
					target:SetHealth( target:Health() + ( playermaxhp / 10 ) )
				else
					timer.Remove( "passiveregenbloodclot" .. target:UserID() )
					target:SetHealth( playermaxhp )
				end
			end)
		end	
	end

	-- adrenaline second wind

	if(target:GetNetVar("hasadrenaline", false) == true and target:GetNetVar("hasbloodclot", false) == false) then

		-- adrenaline second wind start

		if(target:Health() <= dmginfo:GetDamage() and  target:GetNetVar("nosecondwindsupermantrt", false) == true) then
			dmginfo:SetDamage(0)
			target:Notify("Second Wind!")
			target:SetHealth( 1 )
			target:SetNetVar("nosecondwindsupermantrt", false)
			target:GodEnable()
			timer.Create("graceperiodadreneline" .. target:UserID(), 3, 1, function()
				target:GodDisable()
			end)

			-- adrenaline second wind speed


			if( timer.Exists( "passiveregenadrensecondwind" .. target:UserID()) == false ) then

				target:SetRunSpeed( target:GetRunSpeed() * 2 )
				target:SetWalkSpeed( target:GetWalkSpeed() * 2 )

				timer.Create("passiveregenadrensecondwind" .. target:UserID(), 20, 1, function()
					target:SetRunSpeed( target:GetRunSpeed() * 0.5 )
					target:SetWalkSpeed( target:GetWalkSpeed() * 0.5 )	
				end)
			end
		end

		-- adrenaline speed

		if( timer.Exists( "passiveregenadren" .. target:UserID() ) == false and timer.Exists( "passiveregenadrensecondwind" .. target:UserID() ) == false and target:GetNetVar("nosecondwindsupermantrt", false) == true ) then
			local secondwindspeedrun2 = target:GetRunSpeed()
			local secondwindspeedwalk2 = target:GetWalkSpeed()
			target:SetRunSpeed( target:GetRunSpeed() * 1.25 )
			target:SetWalkSpeed( target:GetWalkSpeed() * 1.25 )
			timer.Create("passiveregenadren" .. target:UserID(), 10, 1, function()
				target:SetRunSpeed( target:GetRunSpeed() * 0.8 )
				target:SetWalkSpeed( target:GetWalkSpeed() * 0.8 )	
			end)
		end
	end



	if(target:GetNetVar("hasbloodclot", false) == true and target:GetNetVar("hasadrenaline", false) == true) then
		local playermaxhp = target:GetMaxHealth()
		-- adrenaline second wind start
		if(target:Health() <= dmginfo:GetDamage() and  target:GetNetVar("nosecondwindsupermantrt", false) == true) then
			dmginfo:SetDamage(0)
			target:Notify("Second Wind!")
			target:SetHealth( playermaxhp / 4 )
			target:SetNetVar("nosecondwindsupermantrt", false)
			target:SetNetVar("intensepain", true)
			target:GodEnable()
			timer.Create("graceperiidintensepain" .. target:UserID(), 3, 1, function()
				target:GodDisable()
			end)

			if( timer.Exists( "passiveregenbloodclotsecondwind" .. target:UserID() ) == false ) then
				if(timer.Exists( "passiveregenbloodclot" .. target:UserID())) then
					timer.Remove( "passiveregenbloodclot" .. target:UserID())
				end

				-- second wind regen
				timer.Create("passiveregenbloodclotsecondwind" .. target:UserID(), 2, 7, function()
					if(playermaxhp > target:Health()) then 
						target:SetHealth( target:Health() + ( playermaxhp / 5 ) )
					else
						timer.Remove( "passiveregenbloodclotsecondwind" .. target:UserID() )
					end
				end)
			end


			if( timer.Exists( "passiveregenadrensecondwind" .. target:UserID()) == false ) then
				if(timer.Exists( "passiveregenadren" .. target:UserID())) then
					timer.Remove( "passiveregenadren" .. target:UserID())
				end

				target:SetRunSpeed( target:GetRunSpeed() * 1.5 )
				target:SetWalkSpeed( target:GetWalkSpeed() * 1.5 )

				timer.Create("passiveregenadrensecondwind" .. target:UserID(), 20, 1, function()
					target:SetRunSpeed( target:GetRunSpeed() * 0.666 )
					target:SetWalkSpeed( target:GetWalkSpeed() * 0.666 )	
				end)
			end
		end

		-- adrenaline speed

		if( timer.Exists( "passiveregenadren" .. target:UserID()) == false and timer.Exists( "passiveregenadrensecondwind" .. target:UserID()) == false and target:GetNetVar("nosecondwindsupermantrt", false) == true ) then
			local secondwindspeedrun2 = target:GetRunSpeed()
			local secondwindspeedwalk2 = target:GetWalkSpeed()
			target:SetRunSpeed( target:GetRunSpeed() * 1.25 )
			target:SetWalkSpeed( target:GetWalkSpeed() * 1.25 )
			timer.Create("passiveregenadren" .. target:UserID(), 10, 1, function()
				target:SetRunSpeed( target:GetRunSpeed() * 0.8 )
				target:SetWalkSpeed( target:GetWalkSpeed() * 0.8 )	
			end)
		end


		if( timer.Exists( "passiveregenbloodclot" .. target:UserID() ) == false and timer.Exists( "passiveregenbloodclotsecondwind" .. target:UserID() ) == false and target:GetNetVar("nosecondwindsupermantrt", false) == true) then
			timer.Create("passiveregenbloodclot" .. target:UserID(), 1, 2, function()
				if(playermaxhp > target:Health()) then 
					target:SetHealth( target:Health() + ( playermaxhp / 10 ) )
				else
					timer.Remove( "passiveregenbloodclot" .. target:UserID())
				end
			end)
		end

		if(target:GetNetVar("intensepain", false) == true) then
			target:SetNetVar("intensepain", false)
			timer.Create("malice" .. target:UserID(), 30, 1, function()
				target:Notify("That was too much...")
				target:SetRunSpeed( target:GetRunSpeed() * 0.75 )
				target:SetWalkSpeed( target:GetWalkSpeed() * 0.75 )
				if( target:Health() - ( playermaxhp / 3 ) >= 0 ) then 
					target:SetHealth( target:Health() - ( playermaxhp / 3 ) )
				else
					target:Kill()
				end
			end)
		end
	end
end

function PLUGIN:EntityTakeDamage(target, dmginfo)
	if ( target:IsPlayer() ) then
		PLUGIN:Secondwind(target, dmginfo)

		if ( target:GetNetVar("Weaponismeleesupermantrt", false) == true ) then
			if( dmginfo:GetAttacker():IsPlayer() == true ) then
				dmginfo:ScaleDamage(0.25)			
			end
		end
		if( target:GetNetVar("hasadrenaline", false) == true or target:GetNetVar("hasbloodclot", false) == true) then
			if ( timer.Exists( "graceperiodadreneline" .. target:UserID()) == false and timer.Exists( "graceperiodbloodlust" .. target:UserID()) == false and timer.Exists( "graceperiidintensepain" .. target:UserID()) == false ) then
				target:GodDisable()
			end
		end
		if( target:GetNetVar("isolationistwork", false) == true and target:GetNetVar("hasisolationist", false) == true) then
			dmginfo:ScaleDamage(0.5)
		end
		if( target:GetNetVar("isolationistwork", false) == false and target:GetNetVar("hasisolationist", false) == true) then
			dmginfo:ScaleDamage(1.75)
		end

		if(target:GetNetVar("hascoward", false) == true) then 
			for k, v in pairs(PlayerTable) do
				local distance = v:GetPos():DistToSqr(target:GetPos())

				if(distance <= 50000) then
					if(math.random(0,101) <= 20) then
						if(dmginfo:GetAttacker() != v) then 
							dmginfo:ScaleDamage(0)
							v:TakeDamage(dmginfo:GetDamage(), target, dmginfo:GetInflictor())
							target:Notify("I pulled someone in front of me")
						end
					end
				end
			end
		end
	end
end

function PLUGIN:PlayerDeath(victim)
	if ( timer.Exists( "malice" .. victim:UserID()) ) then
		timer.Remove("malice" .. victim:UserID())
	end
	if(victim:GetNetVar("hasemperorssilence", false) == true) then
		victim:SetNetVar("emperorssilenceinvisibility", false)
	end
	if(timer.Exists("graceperiodbloodlust" .. victim:UserID()) or timer.Exists("graceperiodadreneline" .. victim:UserID()) or timer.Exists("graceperiidintensepain" .. victim:UserID())) then
		return
	end
end

function PLUGIN:PlayerButtonDown(ply, button )
	if not (SERVER) then return end

	if(ply:GetNetVar("hasisolationist", false) == true) then
--		PLUGIN:Isolationist(ply)
	end

	if(ply:GetNetVar("hascoward", false) == true) then
		PLUGIN:Coward(ply)
	end

end

function PLUGIN:KeyPress(ply, key)

	if(ply:GetNetVar("hasthievinghands", false) == true and key == IN_USE) then
		PLUGIN:Pickpocket(ply)
	end
--[[
	if(ply:GetNetVar("hasvulture", false) == true and key == IN_USE) then
		PLUGIN:Vulture(ply)
	end
	]]
end

function PLUGIN:EntityFireBullets(entity, data)
	if(entity:IsPlayer()) then
		if(entity:GetNetVar("hasemperorssilence", false) == true and entity:Crouching() == true and entity:GetNetVar("emperorssilencebulletshoot", true) == true) then

			entity:SetNetVar("emperorssilencebulletshoot", false)
			PLUGIN:Invisibility(entity)

			timer.Create("stealthreset" .. entity:UserID(), 10, 1, function()
				entity:SetNetVar("emperorssilencebulletshoot", true)
				entity:SetNetVar("emperorssilenceinvisibility", true)
			end)

			entity:RemoveFlags(65536)
		end
	end
end

function PLUGIN:PlayerFootstep( ply )
	if(ply:GetNetVar("hasemperorssilence", false) == true ) then
		return true 
	end
end

function PLUGIN:CheckNpcStealth(entity)
	if(timer.Exists("RefreshTable")  == false) then 
		PLUGIN:TableManagement(entity)
	end

	for k, v in pairs(NPCTableAndPlayerTable) do

		local distance = v:GetPos():DistToSqr(entity:GetPos())
		if(v:IsNPC() == true) then
			if(distance <= 70000) then
				entity:RemoveFlags(65536)
			end

			if(v:GetEnemy() == entity and distance >= 70000) then
 				v:SetNPCState(2)
 				v:ClearEnemyMemory(entity)
 				v:SetSchedule(10)
 			end
		end

		if(distance <= 350000) then
			entity:SetNetVar("emperorssilenceinvisibility", false)
		end
		if(distance >= 350000) then
			entity:SetNetVar("emperorssilenceinvisibility", true)
		end
	end

	PLUGIN:Invisibility(entity)

end

function PLUGIN:CanPlayerTradeWithVendor(client, entity, uniqueID, isSellingToVendor)
	if(client:GetNetVar("hasnegotatitor", false) == true) then
		if(isSellingToVendor == true) then
			local character = client:GetCharacter()
			local inventory = character:GetInventory()
		end
		entity:SetNetVar("negotatitorold", entity.scale)
		entity.scale = entity.scale + 0.1

		if(entity.scale > 1) then
			entity.scale = 1
		end
	end
end

function PLUGIN:CharacterVendorTraded(client, entity, uniqueID, isSellingToVendor)
	if(client:GetNetVar("hasnegotatitor", false) == true) then
		if(isSellingToVendor == true) then
			local character = client:GetCharacter()
			local inventory = character:GetInventory()

			if(math.Rand(0,100) > 80) then
				inventory:Add(uniqueID)
				client:Notify("Here take this")
			end
		end
		entity.scale = entity:GetNetVar("negotatitorold", 0.5)
	end
end

function PLUGIN:OnNPCKilled(npc, attacker, inflictor)
	if(attacker:GetNetVar("hasbloodlust", false) == true) then
		if(attacker:GetMaxHealth() > attacker:Health()) then 
			attacker:SetHealth( attacker:Health() + ( attacker:GetMaxHealth() / 5 ) )
		else
			attacker:SetHealth( attacker:GetMaxHealth() )
		end
	end
end




function PLUGIN:Pickpocket(ply)
	if SERVER then

		local data = {}
				data.start = ply:GetShootPos()
				data.endpos = data.start + ply:GetAimVector() * 96
				data.filter = ply

		local target = util.TraceLine(data).Entity

		local tablecount = 0

		ply:SetNetVar("PickpocketAddPlayer", false)

		if(target:IsPlayer() == false) then
			return
		end

		if(target:GetCharacter():HasFlags("N")) then
			return
		end

		if(ply:GetNetVar("Pickpockettimeout", true) == false) then
			ply:Notify("I Cant Pickpocket Right Now")
			return
		end

		for k, v in pairs(PlayerTablePickpocketed) do
			tablecount = tablecount + 1

			if(tablecount > 3) then
				table.remove(PlayerTablePickpocketed, 1)
			end
		end

		for k, v in pairs(PlayerTablePickpocketed) do
			if(target == v) then
				ply:Notify("I have already pickpocketed them!")
				return
			end
		end

		if(math.random(0,101) < 20 ) then
			ply:Notify("I failed to pickpocket")
			target:Notify("Some has tried to pickpocket me!")
			ply:SetNetVar("Pickpockettimeout", false)
			table.insert(PlayerTablePickpocketed, target)
			if(timer.Exists("pickpockettimer" .. ply:UserID()) == false) then
				timer.Create("pickpockettimer" .. ply:UserID(), 1800 , 1, function()
					ply:SetNetVar("Pickpockettimeout", true)
				end)
			end

			return

		end

		if(target:IsPlayer() == true and ply:GetNetVar("Pickpockettimeout", true) == true) then
			
			local oldMoney = ply:GetCharacter():GetMoney()
			local oldMoneyTarget = target:GetCharacter():GetMoney()


			ply:SetNetVar("attemptpickpocket", true)

			local name = hook.Run("GetDisplayedName", target) or target:Name()
			local inventory = target:GetCharacter():GetInventory()

			ix.storage.Open(ply, inventory, {
				entity = target,
				name = name,
				bMultipleUsers = true,
				searchTime = 1
			})

			timer.Create("Pickpocket" .. ply:UserID(), 1, 0, function()

				if(target:GetEyeTrace().Entity == ply) then
					ply:Notify("They looked at me while i tried to pickpocket them")
					target:Notify("Some has tried to pickpocket me!")
					ply:SetNetVar("Pickpockettimeout", false)
					ply:SetNetVar("PickpocketAddPlayer", true)


					if(ply:GetNetVar("PickpocketAddPlayer", false) == true) then
						table.insert(PlayerTablePickpocketed, target)
					end

					if(timer.Exists("pickpockettimer" .. ply:UserID()) == false) then
						timer.Create("pickpockettimer" .. ply:UserID(), 1800 , 1, function()
							ply:SetNetVar("Pickpockettimeout", true)
						end)
					end
					return
				end


				if(ix.storage.InUseBy(inventory, ply)) then
					if (ply:GetPos():DistToSqr(target:GetPos()) > 7000) then 
						ix.storage.Close(inventory)
					end
				end


				if(ix.storage.InUseBy(inventory, ply) == false) then
					local NewMoney = ply:GetCharacter():GetMoney()
					local DifferenceMoney = NewMoney - oldMoney

					ix.log.AddRaw(ply:Name() .. " pickpocketed " .. target:Name(), false)

					if((DifferenceMoney) > 200) then

						ply:GetCharacter():SetMoney(oldMoney + 200)
						target:GetCharacter():SetMoney(oldMoneyTarget - 200)
						ply:Notify("I Took 200 Thrones")
						ply:SetNetVar("PickpocketAddPlayer", true)

						if(timer.Exists("pickpockettimer" .. ply:UserID()) == false) then
							timer.Create("pickpockettimer" .. ply:UserID(), 1800 , 1, function()
								ply:SetNetVar("Pickpockettimeout", true)
							end)
						end
					end

					if(ply:GetNetVar("PickpocketAddPlayer", false) == true) then
						table.insert(PlayerTablePickpocketed, target)
					end

					timer.Remove("Pickpocket" .. ply:UserID())

				end
			end)
		end
	end
end

function PLUGIN:CanPlayerDropItem(client, item)
	if(client:GetNetVar("attemptpickpocket", false)) then
		return false
	end
end


function PLUGIN:Invisibility(ply)
    if ( SERVER ) then

    	local AlphaLerp = 255

    	if(ply:IsRunning() == true or ply:Crouching() == false) then
    		ply:SetNetVar("emperorssilenceinvisibility", false)
    	end
 
		if ( ply:GetNetVar("hasemperorssilence", false) == true and ply:GetNetVar("emperorssilencebulletshoot", true) == true and ply:GetNetVar("emperorssilenceinvisibility", true) == true) then
			ply:SetRenderMode( RENDERMODE_TRANSALPHA )

			AlphaLerp = Lerp( 20 * FrameTime(), AlphaLerp, 0 )
			ply:SetColor( Color(255,255,255, 0 ) )
			
		end


		if ( ply:GetNetVar("hasemperorssilence", false) == true and (ply:GetNetVar("emperorssilencebulletshoot", true) == false or ply:GetNetVar("emperorssilenceinvisibility", true) == false)) then

			AlphaLerp = ( Lerp( 5 * FrameTime(), AlphaLerp, 255 ) )
			ply:SetColor(  Color(255,255,255,255 ) )

			if(timer.Exists("stealthreset") == false) then
    			timer.Create("stealthresetinvis", 10, 1, function()
					ply:SetNetVar("emperorssilencebulletshoot", true)
					ply:SetNetVar("emperorssilenceinvisibility", true)
				end)
			end

		end	 
    end
end

function PLUGIN:CanTransferItem(item, currentInv, oldInv)
	if SERVER then

		if(oldInv:GetID() == 0) then
			return
		end

		local ply = oldInv:GetOwner()

		if(ply == nil) then
			return
		end

		if(ply:GetNetVar("hasthievinghands", false) == true) then
			if(ply:GetNetVar("attemptpickpocket", false) == true and ply:GetNetVar("Pickpockettimeout", true) == true) then

				if(item:GetData("equip")) then
					ply:SetNetVar("attemptpickpocket", false)
					ply:SetNetVar("Pickpockettimeout", false)
					ply:SetNetVar("PickpocketAddPlayer", true)
					ply:Notify("I cannot take equipped items")

					ix.storage.Close(currentInv)
					if(timer.Exists("pickpockettimer" .. ply:UserID()) == false) then
						timer.Create("pickpockettimer" .. ply:UserID(), 1800, 1, function()
							ply:SetNetVar("Pickpockettimeout", true)
						end)
					end
				end

				if(item.width <= 2 and item.height <= 2) then
					ply:SetNetVar("attemptpickpocket", false)
					ply:SetNetVar("Pickpockettimeout", false)
					ply:SetNetVar("PickpocketAddPlayer", true)

					ix.storage.Close(currentInv)

					if(timer.Exists("pickpockettimer" .. ply:UserID()) == false) then
						timer.Create("pickpockettimer" .. ply:UserID(), 1800, 1, function()
							ply:SetNetVar("Pickpockettimeout", true)
						end)
					end
				end
				if(item.width >= 2 and item.height >= 2) then
					return false
				end
			end
		end
	end
end