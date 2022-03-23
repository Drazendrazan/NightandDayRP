Framework = nil
TriggerEvent('Framework:GetObject', function(obj) Framework = obj end)

local ItemTable = {
    "metalscrap",
    "plastic",
    "copper",
    "iron",
    "aluminum",
    "steel",
    "glass",
}

RegisterServerEvent("qb-recycle:server:getItem")
AddEventHandler("qb-recycle:server:getItem", function()
    local src = source
    local Player = Framework.Functions.GetPlayer(src)
    for i = 1, math.random(1, 5), 1 do
        local randItem = ItemTable[math.random(1, #ItemTable)]
        local amount = math.random(10, 25)
        Player.Functions.AddItem(randItem, amount)
        TriggerClientEvent('qb-inventory:client:ItemBox', src, Framework.Shared.Items[randItem], 'add')
        Citizen.Wait(500)
    end

    local Luck = math.random(1, 10)
    local Odd = math.random(1, 10)
    if Luck == Odd then
        local random = math.random(10, 27)
        Player.Functions.AddItem("rubber", random)
        TriggerClientEvent('qb-inventory:client:ItemBox', src, Framework.Shared.Items["rubber"], 'add')
    end
end)