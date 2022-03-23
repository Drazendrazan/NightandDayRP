Framework = nil
TriggerEvent('Framework:GetObject', function(obj) Framework = obj end)

local keys = {
	[1] = {label = "Red Decryption Key", itemName = "red-card", colorId = 1},
	[2] = {label = "Green Decryption Key", itemName = "green-card", colorId = 6},
	[3] = {label = "Blue Decryption Key", itemName = "blue-card", colorId = 2},
}

local activeKeys = {}
local keysUsed = 0
local delayKeyChange = false
local weaponDropped = false

local heistId = 0

local dropItems = {

	{itemName = "weapon_assaultrifle", label = "Assault Rifle", chance = 65},
	{itemName = "weapon_assaultrifle_mk2", label = "Assault Rifle Mk II", chance = 30},
}

local totalChances = 0
local pickupLocations = 415

local activeDrops = {}
local dropIds = 0

Citizen.CreateThread(function()
	for i = 1, #dropItems do
		totalChances = totalChances + dropItems[i].chance
	end
end)

RegisterServerEvent('lrp-gunheist:wonHacking')
AddEventHandler('lrp-gunheist:wonHacking', function()
	local src = source
	local Player = Framework.Functions.GetPlayer(src)
	local chipSlot = Player.Functions.GetItemByName('electronickit')
	local firstcolor = keys[activeKeys[1]].colorId
	local secondcolor = keys[activeKeys[2]].colorId
	local thirdcolor = keys[activeKeys[3]].colorId
	if Player then
		if chipSlot.amount > 0 then
			delayKeyChange = true
			
			if firstcolor == 6 then
				TriggerClientEvent('chatMessage', source, "FIRST", "report",  keys[activeKeys[1]].label)
			elseif firstcolor == 2 then
				TriggerClientEvent('chatMessage', source,"FIRST", "normal", keys[activeKeys[1]].label)
			elseif firstcolor == 1 then
				TriggerClientEvent('chatMessage', source, "FIRST", "error", keys[activeKeys[1]].label)
			end

			if secondcolor == 6 then
				TriggerClientEvent('chatMessage', source, "SECOND", "report",  keys[activeKeys[2]].label)
			elseif secondcolor == 2 then
				TriggerClientEvent('chatMessage', source,"SECOND", "normal", keys[activeKeys[2]].label)
			elseif secondcolor == 1 then
				TriggerClientEvent('chatMessage', source, "SECOND", "error", keys[activeKeys[2]].label)
			end

			if thirdcolor == 6 then
				TriggerClientEvent('chatMessage', source, "THIRD", "report",  keys[activeKeys[3]].label)
			elseif thirdcolor == 2 then
				TriggerClientEvent('chatMessage', source,"THIRD", "normal", keys[activeKeys[3]].label)
			elseif thirdcolor == 1 then
				TriggerClientEvent('chatMessage', source, "THIRD", "error", keys[activeKeys[3]].label)
			end
		end
	end
end)


 
RegisterServerEvent('lrp-gunheist:server:useDecryptionKey')
AddEventHandler('lrp-gunheist:server:useDecryptionKey', function(item)
	local src = source
	local Player = Framework.Functions.GetPlayer(src)
	

	if Player then
		local keySlot = Player.Functions.GetItemByName(item)

		if keySlot.amount > 0 then
			Player.Functions.RemoveItem(item, 1)
			delayKeyChange = true
			if keys[activeKeys[keysUsed + 1]].itemName == item then
				keysUsed = keysUsed + 1
				if keysUsed == 3 then
					TriggerClientEvent('lrp-gunheist:hackingMinigame', src)
				else
					TriggerClientEvent('Framework:Notify', src, "Correct key!")
				end
			else
				TriggerClientEvent('Framework:Notify', src, "Wrong key!", "error")
			end
		end
	end
end)

RegisterServerEvent('lrp-gunheist:createHeistLoop')
AddEventHandler('lrp-gunheist:createHeistLoop', function()
	heistId = heistId + 1

	local thisId = heistId

	Citizen.CreateThread(function()
		keysUsed = 0
		weaponDropped = false

		local key1 = math.random(3)
		local key2
		local key3

		while not key2 or not key3 do
			local possibleKey = math.random(3)

			if not key2 and possibleKey ~= key1 then
				key2 = possibleKey
			end

			if possibleKey ~= key1 and possibleKey ~= key2 then
				key3 = possibleKey
			end

			Citizen.Wait(0)
		end

		activeKeys = {key1, key2, key3}
	end)

	Citizen.Wait(300000)

	if heistId == thisId then
		if delayKeyChange then
			Citizen.Wait(300000)
			delayKeyChange = false
		end

		if heistId == thisId then
			TriggerEvent('lrp-gunheist:createHeistLoop')
		end
	end
end)

RegisterServerEvent('lrp-gunheist:obtainDrops')
AddEventHandler('lrp-gunheist:obtainDrops', function()
	TriggerClientEvent('lrp-gunheist:obtainDrops', source, activeDrops)
end)


RegisterServerEvent('checkDrill')

AddEventHandler('checkDrill', function(dropId) 
	local src = source
	local Player = Framework.Functions.GetPlayer(src)
	local drill = Player.Functions.GetItemByName('drill')
	if drill ~= nil and drill.amount > 0 then
		TriggerClientEvent('do', src, dropId)
	else
		TriggerClientEvent('Framework:Notify', src, 'you have no drill!', 'error')
	end
end)

RegisterServerEvent('lrp-gunheist:pickUpDrop')
AddEventHandler('lrp-gunheist:pickUpDrop', function(dropId)
	local src = source
	local Player = Framework.Functions.GetPlayer(src)
	local drillSlot = Player.Functions.GetItemByName('drill')

	if activeDrops[dropId] then
		

		if Player then
			if drillSlot ~= nil and drillSlot.amount >= 1 then
				Player.Functions.RemoveItem('drill', 1)
				local dropData = activeDrops[dropId]

				activeDrops[dropId] = nil

				Player.Functions.AddItem(dropData.itemName, 1)

				TriggerClientEvent('Framework:Notify', src, "Picked up " .. dropData.label)
				TriggerClientEvent('clearTasks', src)

				TriggerClientEvent('lrp-gunheist:manipulateDrop', -1, dropId)
			else
				TriggerClientEvent("Framework:Notify", src, "You need to have a drill on you...", "error")
			end
		end
	end
end)

RegisterServerEvent('lrp-gunheist:hackingCompleted')
AddEventHandler('lrp-gunheist:hackingCompleted', function()
	local src = source

	if not weaponDropped then
		weaponDropped = true

		local itemLottery = math.random(totalChances)
		local loopedThrough = 0
		local item

		for i = 1, #dropItems do
			loopedThrough = loopedThrough + dropItems[i].chance

			if itemLottery <= loopedThrough then
				item = dropItems[i]

				break
			end
		end

		if item then
			dropIds = dropIds + 1
			activeDrops[dropIds] = {pickupLocation = math.random(pickupLocations), itemName = item.itemName, label = item.label}

			TriggerClientEvent('lrp-gunheist:manipulateDrop', -1, dropIds, activeDrops[dropIds])
			TriggerClientEvent('lrp-gunheist:createBlipOnDrop', src, dropIds, item.label)
			TriggerEvent('lrp-gunheist:createHeistLoop')
		end
	end
end)

TriggerEvent('lrp-gunheist:createHeistLoop')


Framework.Functions.CreateUseableItem('electronickit', function(source, item) 
    local Player = Framework.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
		TriggerClientEvent('lrp-gunheist:useChip', source)
	end
end)

Framework.Functions.CreateUseableItem("green-card", function(source, item)
    local Player = Framework.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
		local itemName = item.name
		TriggerClientEvent('lrp-gunheist:useDecryptionKey', source,  'green-card')
    end
end)

Framework.Functions.CreateUseableItem("red-card", function(source, item)
    local Player = Framework.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
		local itemName = item.name
		TriggerClientEvent('lrp-gunheist:useDecryptionKey', source,  'red-card')
    end
end)

Framework.Functions.CreateUseableItem("blue-card", function(source, item)
    local Player = Framework.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
		local itemName = item.name
		TriggerClientEvent('lrp-gunheist:useDecryptionKey', source, 'blue-card')
    end
end)
