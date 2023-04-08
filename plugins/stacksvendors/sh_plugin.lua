local PLUGIN = PLUGIN
PLUGIN.name = "FixStackVendor"
PLUGIN.author = "Supermantrt"
PLUGIN.description = "Fixes Stacks Vendor"


function PLUGIN:CanPlayerTradeWithVendor(client, entity, uniqueID, isSellingToVendor)
	local character = client:GetCharacter()
	local inventory = character:GetInventory()

	if(isSellingToVendor == true) then
		for _, itemTable in pairs(inventory:GetItemsByUniqueID(uniqueID)) do
			local uniqueID = itemTable.uniqueID
			local amount = 1
			if (itemTable.base && uniqueID) then
				if (itemTable.base == 'base_stackable') then
					if ( itemTable:GetData('stacks', 1) == amount ) then
						client:SetLocalVar("StackOld" , 0)
						break
					end

					if ( itemTable:GetData('stacks', 1) > amount ) then
						itemTable:SetData('stacks', itemTable:GetData('stacks', 1) - amount)
						client:SetLocalVar("StackOld" , itemTable:GetData('stacks'))
						break
					end
				end
			end
		end
	end
end

function PLUGIN:CharacterVendorTraded(client, entity, uniqueID, isSellingToVendor)
	if(isSellingToVendor == true) then
		local character = client:GetCharacter()
		local inventory = character:GetInventory()
		if(client:GetLocalVar("StackOld") ~= nil) then
		    if(client:GetLocalVar("StackOld") >= 1) then
		    	local x, y, id = inventory:Add(uniqueID)
		    	local newInv = ix.inventory.Get(id)
		    	local itemnew = newInv:GetItemAt(x,y)
		    	local newitemid = itemnew["id"]
		    	local Itemdataset = inventory:GetItemByID(newitemid, false)
		    	Itemdataset:SetData('stacks', client:GetLocalVar("StackOld"))
	    	end
		end
	end
end