local bluePlayerReady = false
local redPlayerReady = false
local fight = {}

Framework = nil
TriggerEvent('Framework:GetObject', function(obj) Framework = obj end)

RegisterServerEvent('qb-fight:join')
AddEventHandler('qb-fight:join', function(betAmount, side)
		local src = source
		local xPlayer = Framework.Functions.GetPlayer(src)

		if side == 0 then
			bluePlayerReady = true
		else
			redPlayerReady = true
		end

        local fighter = {
            id = source,
            amount = betAmount
        }
        table.insert(fight, fighter)

		balance = xPlayer.PlayerData.money["cash"]
        if (balance > betAmount) or betAmount == 0 then
		xPlayer.Functions.RemoveMoney("cash", betAmount, "fightring")

            if side == 0 then
                TriggerClientEvent('qb-fight:playerJoined', -1, 1, source)
            else
                TriggerClientEvent('qb-fight:playerJoined', -1, 2, source)
            end

            if redPlayerReady and bluePlayerReady then 
                TriggerClientEvent('qb-fight:startFight', -1, fight)
            end

        else
        end
end)

local count = 240
local actualCount = 0
function countdown(copyFight)
    for i = count, 0, -1 do
        actualCount = i
        Citizen.Wait(1000)
    end

    if copyFight == fight then
        TriggerClientEvent('qb-fight:fightFinished', -1, -2)
        fight = {}
        bluePlayerReady = false
        redPlayerReady = false
    end
end

RegisterServerEvent('qb-fight:finishFight')
AddEventHandler('qb-fight:finishFight', function(looser)
       TriggerClientEvent('qb-fight:fightFinished', -1, looser)
       fight = {}
       bluePlayerReady = false
       redPlayerReady = false
end)

RegisterServerEvent('qb-fight:leaveFight')
AddEventHandler('qb-fight:leaveFight', function(id)
       if bluePlayerReady or redPlayerReady then
            bluePlayerReady = false
            redPlayerReady = false
            fight = {}
            TriggerClientEvent('qb-fight:playerLeaveFight', -1, id)
       end
end)

RegisterServerEvent('qb-fight:pay')
AddEventHandler('qb-fight:pay', function(amount)
	local src = source
    local xPlayer = Framework.Functions.GetPlayer(src)
end)

RegisterServerEvent('qb-fight:raiseBet')
AddEventHandler('qb-fight:raiseBet', function(looser)
       TriggerClientEvent('qb-fight:raiseActualBet', -1)
end)

RegisterServerEvent('qb-fight:showWinner')
AddEventHandler('qb-fight:showWinner', function(id)
       TriggerClientEvent('qb-fight:winnerText', -1, id)
end)