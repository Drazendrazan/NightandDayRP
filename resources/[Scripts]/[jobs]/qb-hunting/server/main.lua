Framework = nil
TriggerEvent('Framework:GetObject', function(obj) Framework = obj end)

RegisterServerEvent('qb-hunt:reward')
AddEventHandler('qb-hunt:reward', function(Weight)
    local _source = source
    local xPlayer = Framework.Functions.GetPlayer(_source)

    if Weight >= 1 then
       xPlayer.Functions.AddItem('meath', 1)
       TriggerClientEvent('qb-inventory:client:ItemBox', _source, Framework.Shared.Items['meath'], "add")
    elseif Weight >= 9 then
        xPlayer.Functions.AddItem('meath', 2)
       TriggerClientEvent('qb-inventory:client:ItemBox', _source, Framework.Shared.Items['meath'], "add")
    elseif Weight >= 15 then
        xPlayer.Functions.AddItem('meath', 3)
       TriggerClientEvent('qb-inventory:client:ItemBox', _source, Framework.Shared.Items['meath'], "add")
    end

    
	xPlayer.Functions.AddItem('meath', math.random(1, 4))
       TriggerClientEvent('qb-inventory:client:ItemBox', _source, Framework.Shared.Items['meath'], "add")
        
end)

RegisterServerEvent('qb-hunt:sell')
AddEventHandler('qb-hunt:sell', function()
   local _source = source
   local xPlayer  = Framework.Functions.GetPlayer(_source)

    local MeatPrice = math.random(150,1050)
    local LeatherPrice = 650

    --if item == "meath" then
					local MeatP = xPlayer.Functions.GetItemByName('meath')
						if MeatP == nil then
               			TriggerClientEvent('Framework:Notify', _source, "You do not have any meat!", "error")	
					else   
					TriggerClientEvent('qb-inventory:client:ItemBox', _source, Framework.Shared.Items['meath'], "remove")	
						xPlayer.Functions.RemoveItem("meath", 1)
						xPlayer.Functions.AddMoney('cash', MeatPrice)
						TriggerClientEvent('Framework:Notify', _source, "You sold your wild meat", "success")

			end
			--end
        
end)

RegisterServerEvent('qb-hunting:server:recieve:knife')
AddEventHandler('qb-hunting:server:recieve:knife', function()
    local Player = Framework.Functions.GetPlayer(source)
    Player.Functions.AddItem("weapon_knife", 1)
    TriggerClientEvent("qb-inventory:client:ItemBox", source, Framework.Shared.Items["weapon-knife"], "add")
end)


RegisterServerEvent('qb-hunting:server:remove:knife')
AddEventHandler('qb-hunting:server:remove:knife', function()
    local Player = Framework.Functions.GetPlayer(source)
    Player.Functions.RemoveItem("weapon_knife", 1)
    TriggerClientEvent("qb-inventory:client:ItemBox", source, Framework.Shared.Items["weapon-knife"], "remove")
end)