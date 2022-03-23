local Framework = nil

TriggerEvent("Framework:GetObject", function(obj) 
    Framework = obj 
end)

RegisterServerEvent('qb-badge:open')
AddEventHandler('qb-badge:open', function(ID, targetID, type)
	local Player = Framework.Functions.GetPlayer(ID)

	local data = {
		name = Player.PlayerData.charinfo.firstname.." "..Player.PlayerData.charinfo.lastname,
		functie = Player.PlayerData.job.grade,
		dob = Player.PlayerData.charinfo.dob
	}

	TriggerClientEvent('qb-badge:open', targetID, data)
	TriggerClientEvent('qb-badge:shot', targetID, source )
end)

Framework.Functions.CreateUseableItem('specialbadge', function(source, item)
    TriggerClientEvent('qb-badge:openPD', source, true)
end)