local PLUGIN = PLUGIN

-- messy but idc.
function PLUGIN:SearchLootContainer(ent, ply, loot)
    if not ( ply:IsCombine() or ply:IsDispatch() ) then
        if not ent.containerAlreadyUsed or ent.containerAlreadyUsed <= CurTime() then
            if not ( ply.isEatingConsumeable == true ) then -- support for my plugin
                local character = ply:GetCharacter()


                local Crafting = false
                local Drug = false
                local General = false
                local Valuable = false
                local Horror = false

                local randomAmountChance = math.random(1,3)
                local lootAmount = 1
                local HasQuickHands = character:HasTrait("quickhands")
                local LootLength = 5
                local ScavengingSkill = character:GetSkill("scavenging")
                local ScavengingSkillTime = ScavengingSkill/200
                local RandomNumberValuableScavenging = math.ceil(20 - ScavengingSkill/10)
                local Scavengeamount = math.floor(3 + ScavengingSkill/25)

                local randomChance = math.random(1,RandomNumberValuableScavenging)

                if(CurTime() > ply:GetNetVar("LootFatigueTimer", 0)) then
                    ply:SetNetVar("LootFatigueTimer", nil )
                    ply:SetNetVar("AmountLootedPlayer", 0 )
                end

                if(ply:GetNetVar("LootFatigueTimer") == nil) then
                    ply:SetNetVar("LootFatigueTimer", CurTime() + ix.config.Get("LootFagtigueTimeout", 1800) )
                end

                if(ix.config.Get("LootAmountAllowed", 5) <= ply:GetNetVar("AmountLootedPlayer", 0)) then
                    ply:Notify("I should focus on something else")
                    return
                end               

                print(ply:GetNetVar("LootFatigueTimer", 0))
                print(ply:GetNetVar("AmountLootedPlayer", 0))
                if(HasQuickHands) then
                    LootLength = LootLength / 2
                end

                LootLength = LootLength - ScavengingSkillTime

                if(LootLength < 1) then
                    LootLength = 1
                end


                for k, v in pairs(loot) do
                    if(v == "Crafting") then
                        Crafting = true
                    end
                    if(v == "Drug") then
                        Drug = true
                    end
                    if(v == "General") then
                        General = true
                    end
                    if(v == "Horror") then
                        Horror = true
                    end
                    if(v == "Valuable") then
                        Valuable = true
                    end
                end

                local randomLootItem = table.Random(PLUGIN.randomLoot.general)
                if ( randomAmountChance == 3 ) then
                    lootAmount = math.random(1,Scavengeamount)
                else
                    lootAmount = 1
                end

                ply:Freeze(true)
                ply:SetAction("Searching...", LootLength, function()
                    ply:Freeze(false)
                    for i = 1, lootAmount do
                        if (randomChance == math.random(1,RandomNumberValuableScavenging)) then
                            randomLootItem = table.Random(PLUGIN.randomLoot.valuable)
                            ply:ChatNotify("You have gained "..ix.item.Get(randomLootItem):GetName()..".")
                            ply:GetCharacter():GetInventory():Add(randomLootItem)
                        end
                        if (General == true) then
                            randomLootItem = table.Random(PLUGIN.randomLoot.general)
                            ply:ChatNotify("You have gained "..ix.item.Get(randomLootItem):GetName()..".")
                            ply:GetCharacter():GetInventory():Add(randomLootItem)
                        end
                        if (Horror == true) then
                            randomLootItem = table.Random(PLUGIN.randomLoot.horror)
                            ply:ChatNotify("You have gained "..ix.item.Get(randomLootItem):GetName()..".")
                            ply:GetCharacter():GetInventory():Add(randomLootItem)
                        end
                        if (Drug == true) then
                            randomLootItem = table.Random(PLUGIN.randomLoot.drug)
                            ply:ChatNotify("You have gained "..ix.item.Get(randomLootItem):GetName()..".")
                            ply:GetCharacter():GetInventory():Add(randomLootItem)
                        end
                        if (Crafting == true) then
                            randomLootItem = table.Random(PLUGIN.randomLoot.crafting)
                            ply:ChatNotify("You have gained "..ix.item.Get(randomLootItem):GetName()..".")
                            ply:GetCharacter():GetInventory():Add(randomLootItem)
                        end
                    end
                    character:UpdateSkill("scavenging", 0.05)
                    ply:SetNetVar("AmountLootedPlayer", ply:GetNetVar("AmountLootedPlayer",0) + 1)
                end)
                ent.containerAlreadyUsed = CurTime() + 99999999999999
            else
                if not ent.ixContainerNotAllowedEat or ent.ixContainerNotAllowedEat <= CurTime() then
                    ply:Notify("You cannot loot anything while you are eating!")
                    ent.ixContainerNotAllowedEat = CurTime() + 1
                end
            end
        else
            if not ent.ixContainerNothingInItCooldown or ent.ixContainerNothingInItCooldown <= CurTime() then
                ply:ChatNotify("There is nothing in the container!")
                ent.ixContainerNothingInItCooldown = CurTime() + 1
            end
        end
    else
        if not ent.ixContainerNotAllowed or ent.ixContainerNotAllowed <= CurTime() then
            ply:ChatNotify("Your Faction is not allowed to loot containers.")
            ent.ixContainerNotAllowed = CurTime() + 1
        end
    end
end

function Schema:SpawnRandomLoot(position, rareItem)
    local randomLootItem = table.Random(PLUGIN.randomLoot.common)

    if (rareItem == true) then
        randomLootItem = table.Random(PLUGIN.randomLoot.rare)
    end

    ix.item.Spawn(randomLootItem, position)
end