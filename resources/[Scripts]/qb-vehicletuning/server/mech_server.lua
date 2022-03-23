Framework = nil

TriggerEvent('Framework:GetObject', function(obj) Framework = obj end)

RegisterServerEvent('mechanic:server:RemoveItem')
AddEventHandler('mechanic:server:RemoveItem', function(item)
    local src = source
    local ply = Framework.Functions.GetPlayer(src)
    ply.Functions.RemoveItem(item, 1)
end)

Framework.Functions.CreateUseableItem("repairkit", function(source, item)
    local Player = Framework.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("mechanic:client:RepairVehicle", source)
    end
end)

Framework.Functions.CreateUseableItem("advancedrepairkit", function(source, item)
    local Player = Framework.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("mechanic:client:AdvancedRepairVehicle", source)
    end
end)

-- Framework.Functions.CreateUseableItem("cleaningkit", function(source, item)
--     local Player = Framework.Functions.GetPlayer(source)
-- 	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
--         TriggerClientEvent("mechanic:client:CleanVehicle", source)
--     end
-- end)