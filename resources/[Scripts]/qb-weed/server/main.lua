Framework = nil

TriggerEvent('Framework:GetObject', function(obj) Framework = obj end)

local playersProcessingCannabis = {}

RegisterServerEvent('qb-weed:pickedUpCannabis')
AddEventHandler('qb-weed:pickedUpCannabis', function()
	local src = source
	local Player = Framework.Functions.GetPlayer(src)

	  if 	TriggerClientEvent("Framework:Notify", src, "Picked up some Ganja Pata!!", "Success", 8000) then
		  Player.Functions.AddItem('cannabis', 1) ---- change this shit 
		  TriggerClientEvent("inventory:client:ItemBox", source, Framework.Shared.Items['cannabis'], "add")
	  end
  end)


RegisterServerEvent('qb-weed:processCannabis')
AddEventHandler('qb-weed:processCannabis', function()
		local src = source
		local Player = Framework.Functions.GetPlayer(src)
		Player.Functions.AddItem('joint', 1)-----change this
		TriggerClientEvent("inventory:client:ItemBox", source, Framework.Shared.Items['joint'], "add")
		TriggerClientEvent('Framework:Notify', src, 'Joint Processed successfully', "success")                                                                         				
end)

RegisterServerEvent('qb-weed:processCannabissanto')
AddEventHandler('qb-weed:processCannabissanto', function()
		local src = source
		local Player = Framework.Functions.GetPlayer(src)
		
		Player.Functions.RemoveItem('marijuana', 1)----change this
		TriggerClientEvent("inventory:client:ItemBox", source, Framework.Shared.Items['marijuana'], "remove")                                                                         				
end)


RegisterServerEvent('qb-weed:processCannabisxD')
AddEventHandler('qb-weed:processCannabisxD', function()
		local src = source
    	local Player = Framework.Functions.GetPlayer(src)
		Player.Functions.AddItem('marijuana', 1)-----change this
		TriggerClientEvent("inventory:client:ItemBox", source, Framework.Shared.Items['marijuana'], "add")
		TriggerClientEvent('Framework:Notify', src, 'Ganja Processed successfully', "success")                                                                         				
end)

RegisterServerEvent('qb-weed:processCannabisxDsanto')
AddEventHandler('qb-weed:processCannabisxDsanto', function()
		local src = source
    	local Player = Framework.Functions.GetPlayer(src)
		Player.Functions.RemoveItem('cannabis', 1)----change this
		TriggerClientEvent("inventory:client:ItemBox", source, Framework.Shared.Items['cannabis'], "remove")                                                                    				
end)


function CancelProcessing(playerId)
	if playersProcessingCannabis[playerId] then
		ClearTimeout(playersProcessingCannabis[playerId])
		playersProcessingCannabis[playerId] = nil
	end
end

RegisterServerEvent('qb-weed:cancelProcessing')
AddEventHandler('qb-weed:cancelProcessing', function()
	CancelProcessing(source)
end)

AddEventHandler('Framework:playerDropped', function(playerId, reason)
	CancelProcessing(playerId)
end)

RegisterServerEvent('qb-weed:onPlayerDeath')
AddEventHandler('qb-weed:onPlayerDeath', function(data)
	local src = source
	CancelProcessing(src)
end)

Framework.Functions.CreateCallback('weed:process', function(source, cb)
	local src = source
	local Player = Framework.Functions.GetPlayer(src)
	 
	if Player.PlayerData.item ~= nil and next(Player.PlayerData.items) ~= nil then
		for k, v in pairs(Player.PlayerData.items) do
		    if Player.Playerdata.items[k] ~= nil then
				if Player.Playerdata.items[k].name == "cannabis" then
					cb(true)
			    else
					TriggerClientEvent("Framework:Notify", src, "You do not have any Ganja Pata", "error", 10000)
					cb(false)
				end
	        end
		end	
	end
end)

Framework.Functions.CreateCallback('weed:processxD', function(source, cb)
	local src = source
	local Player = Framework.Functions.GetPlayer(src)
	 
	if Player.PlayerData.item ~= nil and next(Player.PlayerData.items) ~= nil then
		for k, v in pairs(Player.PlayerData.items) do
		    if Player.Playerdata.items[k] ~= nil then
				if Player.Playerdata.items[k].name == "marijuana" then
					cb(true)
			    else
					TriggerClientEvent("Framework:Notify", src, "You do not have any Ganja", "error", 10000)
					cb(false)
				end
	        end
		end	
	end
end)
