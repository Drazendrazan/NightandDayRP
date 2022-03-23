Framework= nil
TriggerEvent('Framework:GetObject', function(obj) Framework= obj end)

RegisterServerEvent('og-chickenjob:getNewChicken')
AddEventHandler('og-chickenjob:getNewChicken', function()
    local src = source
    local Player = Framework.Functions.GetPlayer(src)
    local pick = ''

      if TriggerClientEvent("Framework:Notify", src, "You Received 3 Alive chicken!", "Success", 8000) then
          Player.Functions.AddItem('alivechicken', 3)
          TriggerClientEvent("inventory:client:ItemBox", source, Framework.Shared.Items['alivechicken'], "add")
      end
end)

RegisterServerEvent('og-chickenjob:startChicken')
AddEventHandler('og-chickenjob:startChicken', function()
    local src = source
    local Player = Framework.Functions.GetPlayer(src)

      if TriggerClientEvent("Framework:Notify", src, "Lets Catch The Chicken Dumbass!", "Success", 8000) then
        -- Player.Functions.RemoveMoney('cash', 500)
          
      end
end)

RegisterServerEvent('og-chickenjob:getcutChicken')
AddEventHandler('og-chickenjob:getcutChicken', function()
    local src = source
    local Player = Framework.Functions.GetPlayer(src)
    local pick = ''

      if TriggerClientEvent("Framework:Notify", src, "Well! You slaughtered chicken.", "Success", 8000) then
          Player.Functions.RemoveItem('alivechicken', 1)
          Player.Functions.AddItem('slaughteredchicken', 1)
          TriggerClientEvent("inventory:client:ItemBox", source, Framework.Shared.Items['alivechicken'], "remove")
          TriggerClientEvent("inventory:client:ItemBox", source, Framework.Shared.Items['slaughteredchicken'], "add")
      end
end)

RegisterServerEvent('og-chickenjob:getpackedChicken')
AddEventHandler('og-chickenjob:getpackedChicken', function()
    local src = source
    local Player = Framework.Functions.GetPlayer(src)
    local pick = ''

      if TriggerClientEvent("Framework:Notify", src, "You Packed Slaughtered chicken .", "Success", 8000) then
          Player.Functions.RemoveItem('slaughteredchicken', 1)
          Player.Functions.AddItem('packedchicken', 1)
          TriggerClientEvent("inventory:client:ItemBox", source, Framework.Shared.Items['slaughteredchicken'], "remove")
          TriggerClientEvent("inventory:client:ItemBox", source, Framework.Shared.Items['packedchicken'], "add")
      end
end)


local ItemList = {
    ["packedchicken"] = math.random(450, 650),
}

RegisterServerEvent('og-chickenjob:sell')
AddEventHandler('og-chickenjob:sell', function()
    local src = source
    local price = 0
    local Player = Framework.Functions.GetPlayer(src)
    if Player.PlayerData.items ~= nil and next(Player.PlayerData.items) ~= nil then 
        for k, v in pairs(Player.PlayerData.items) do 
            if Player.PlayerData.items[k] ~= nil then 
                if ItemList[Player.PlayerData.items[k].name] ~= nil then 
                    price = price + (ItemList[Player.PlayerData.items[k].name] * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem(Player.PlayerData.items[k].name, Player.PlayerData.items[k].amount, k)
                end
            end
        end
        Player.Functions.AddMoney("cash", price, "sold-items")
        TriggerClientEvent('Framework:Notify', src, "You have sold your items")
    else
        TriggerClientEvent('Framework:Notify', src, "You don't have items")
    end
end)


