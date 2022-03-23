---------Contact For Buy - DISCORD : Framework#9852----------
----##ILLEGAL DELIVERY##-----
-----------------------------

-------------------------CORE----------------------------------------------
Framework = nil
TriggerEvent('Framework:GetObject', function(obj) Framework = obj end)
---------------------------------------------------------------------------


----------------------------------------------------------PRENDI AUTO ---------------------------------------------------------

------------------------------------------------------RITIRA CAMMION LAVORO----------------------------------------
local prezzo = 10

RegisterServerEvent('cargo:server:truck')
AddEventHandler('cargo:server:truck', function(boatModel, BerthId)
    local src = source
    local Player = Framework.Functions.GetPlayer(src)
    local plate = "CARGO"..math.random(111, 999)
    
	TriggerClientEvent('cargo:Auto', src, boatModel, plate)
end)
--------------------------------------------------------------------------------------------------------------------------------


--------------------------------------------------------CARICO COCE 5KG----------------------------------------------------------

RegisterServerEvent('AdvanceQBUSccocke:cocke5k')
AddEventHandler('AdvanceQBUSccocke:cocke5k', function()
   
    local _source = source
    local xPlayer = Framework.Functions.GetPlayer(_source)
    xPlayer.Functions.AddItem('delivericok', 1)
    TriggerClientEvent("inventory:client:ItemBox", source, Framework.Shared.Items['delivericok'], "add")


end)
---------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------REMOVE COKE5 KG-----------------------------------------------------------
RegisterServerEvent('AdvanceQBUSccocke:removecocke5k')
AddEventHandler('AdvanceQBUSccocke:removecocke5k', function()
   
    local _source = source
    local xPlayer = Framework.Functions.GetPlayer(_source)
    local Item = xPlayer.Functions.GetItemByName('delivericok')

    
if Item == nil then
       TriggerClientEvent('Framework:Notify', source, 'You don\'t have the 5KG coke', "error")  
	else
	
		if Item.amount > 0 then
	
			xPlayer.Functions.RemoveItem('delivericok', Item.amount)
            TriggerClientEvent("inventory:client:ItemBox", _source, Framework.Shared.Items['delivericok'], "remove")
            xPlayer.Functions.AddItem('deliverimon', 1)
            TriggerClientEvent("inventory:client:ItemBox", _source, Framework.Shared.Items['deliverimon'], "add")
			
	
        end
	
	end

end)
------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------RICEVI SOLDI ------------------------------------------------------------
RegisterServerEvent('AdvanceQBUSccocke:soldi')
AddEventHandler('AdvanceQBUSccocke:soldi', function()
   
    local _source = source
    local xPlayer = Framework.Functions.GetPlayer(_source)
    local money = tonumber(Config.moneysold)
    local Item = xPlayer.Functions.GetItemByName('deliverimon')

    
    if Item.amount > 0 then
        -------------------------------REMOVE COCEK 5KG------------------------------------------------------------------
            xPlayer.Functions.RemoveItem('deliverimon', Item.amount)
            TriggerClientEvent("inventory:client:ItemBox", _source, Framework.Shared.Items['deliverimon'], "remove")

        ---------------------------------ADD qb------------------------------------------------------------------------
			xPlayer.Functions.AddMoney("cash", money, "sold-pawn-items")
			TriggerClientEvent('Framework:Notify', _source, 'You got the money $: '..money..'', "success", 10000)  
			
    end 

end)
-------------------------------------------------------------------------------------------------------------------------------------