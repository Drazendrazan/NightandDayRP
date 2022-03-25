Framework = nil
TriggerEvent('Framework:GetObject', function(obj) Framework = obj end)

-- Code


Citizen.CreateThread(function()
    Config.CurrentLab = math.random(1, #Config.Locations["laboratories"])
end)

Framework.Functions.CreateCallback('qb-cokelab:server:GetData', function(source, cb)
    local LabData = {
        CurrentLab = Config.CurrentLab
    }
    cb(LabData)
end)

Framework.Functions.CreateUseableItem("cokekey", function(source, item)
    local Player = Framework.Functions.GetPlayer(source)
    local LabKey = item.info.lab ~= nil and item.info.lab or 1

    TriggerClientEvent('qb-cokelab:client:UseLabKey', source, LabKey)
end)

function GenerateRandomCokeLab()
    local Lab = math.random(1, #Config.Locations["laboratories"])
    return Lab
end

local ItemTable = {
    "coke_brick",
    
}

RegisterServerEvent("qb-cokelab:server:getItem")
AddEventHandler("qb-cokelab:server:getItem", function()
    local src = source
    local Player = Framework.Functions.GetPlayer(src)
    local amount = math.random(1, 3)
    Player.Functions.AddItem("coke_brick", amount)
    TriggerClientEvent('inventory:client:ItemBox', src, Framework.Shared.Items["coke_brick"], 'add')
    Citizen.Wait(500)
    local Luck = math.random(1, 10)
    local Odd = math.random(1, 10)
    if Luck == Odd then
        local random = math.random(1, 2)
        Player.Functions.AddItem("coke_brick", random)
        TriggerClientEvent('inventory:client:ItemBox', src, Framework.Shared.Items["coke_brick"], 'add')
    end
end)