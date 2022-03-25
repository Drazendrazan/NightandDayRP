ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local ItemList = {
    ["casinochips"] = 1,
}

RegisterServerEvent("qb-casino:sharlock:sell")
AddEventHandler("qb-casino:sharlock:sell", function()
    local src = source
    local price = 0
    local Player = ESX.GetPlayerFromId(src)
    if Player.inventory ~= nil and next(Player.inventory) ~= nil then 
        for k, v in pairs(Player.inventory) do 
            if Player.inventory[k] ~= nil then 
                if ItemList[Player.inventory[k].name] ~= nil then 
                    price = price + (ItemList[Player.inventory[k].name] * Player.inventory[k].count)
                    Player.removeInventoryItem(Player.inventory[k].name, Player.inventory[k].count)
                end
            end
        end
        Player.addMoney(price)
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You sold your chips', style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
        else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You have no chips..', style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
    end
end)

function SetExports()
exports["qb-blackjack"]:SetGetChipsCallback(function(source)
    local Player = ESX.GetPlayerFromId(source)
    local Chips = Player.getInventoryItem('casinochips')

    if Player.inventory ~= nil and next(Player.inventory) ~= nil then 
        Chips = Chips
    end

    return TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You have no chips..', style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
end)

    exports["qb-blackjack"]:SetTakeChipsCallback(function(source, amount)
        local Player = ESX.GetPlayerFromId(source)

        if Player ~= nil then
            Player.removeInventoryItem('casinochips', amount)
        end
    end)

    exports["qb-blackjack"]:SetGiveChipsCallback(function(source, amount)
        local Player = ESX.GetPlayerFromId(source)

        if Player ~= nil then
            Player.addInventoryItem('casinochips', amount)
        end
    end)
end

AddEventHandler("onResourceStart", function(resourceName)
	if ("qb-blackjack" == resourceName) then
        Citizen.Wait(1000)
        SetExports()
    end
end)

SetExports()

-- all credits goes to HaReL and Extra Leaks
--  Extra Leaks | discord.gg/MHb5Sba