--------------------Contact For Buy - DISCORD : Framework#9852------------------------------
--------------######WOODCUTTER########----------------------
Framework = nil
TriggerEvent('Framework:GetObject', function(obj) Framework = obj end)


-------------------------------------------------CREO IL SECCHIO E IL LATTE----------------------------------------
RegisterServerEvent('smerfikcraft:zlomiarzzbier2fp')
AddEventHandler('smerfikcraft:zlomiarzzbier2fp', function()
   
    local _source = source
    local xPlayer = Framework.Functions.GetPlayer(_source)
    local Item = xPlayer.Functions.GetItemByName('orange')

    if Item == nil then
  
       -- TriggerClientEvent('wiadro:postaw', _source)
        TriggerClientEvent('smerfik:zamrozcrft222fp', _source)
        TriggerClientEvent('zacznijtekst22fp', _source)
        TriggerClientEvent('smerfik:craftanimacja222fp', _source)
        TriggerClientEvent('smerfik:tekstjab22fp', _source)
        Citizen.Wait(10000)
        ---------------------------------------
        --local ilosc = math.random(10,10)
       -- xPlayer.Functions.AddItem('milk', ilosc)
        -----------------------------------------

		--TriggerClientEvent("inventory:client:ItemBox", _source, Framework.Shared.Items['milk'], "add")
        TriggerClientEvent('smerfik:odmrozcrft222fp', _source)
        --TriggerClientEvent("Framework:Notify", _source, 'Collected'.. ilosc .. ' milk', "success", 7000)
        TriggerClientEvent('smerfik:reset', _source)
   else
        if Item.amount < 50 then
        --  TriggerClientEvent('wiadro:postaw', _source)
          TriggerClientEvent('smerfik:zamrozcrft222fp', _source)
          TriggerClientEvent('zacznijtekst22fp', _source)
          TriggerClientEvent('smerfik:craftanimacja222fp', _source)
          TriggerClientEvent('smerfik:tekstjab22fp', _source)
          Citizen.Wait(10000)
          ----------------------------------------
         -- local ilosc = math.random(10,10)
         -- xPlayer.Functions.AddItem('milk', ilosc)
          ----------------------------------------

		  --TriggerClientEvent("inventory:client:ItemBox", _source, Framework.Shared.Items['milk'], "add")
          TriggerClientEvent('smerfik:odmrozcrft222fp', _source)
          -- TriggerClientEvent("Framework:Notify", _source, 'Collected'.. ilosc .. ' milk', "success", 7000)
          TriggerClientEvent('smerfik:reset', _source)
        else 

        TriggerClientEvent('smerfik:zdejmijznaczek22fp', _source)
        TriggerClientEvent("Framework:Notify", _source, 'You dont have orange!', "error", 7000)
       
         end

    end

end)
--------------------------------------------------------------------------

-----ad fruit-----------------
RegisterServerEvent('tost:addfruit')
AddEventHandler('tost:addfruit', function()

    local _source = source
    local xPlayer = Framework.Functions.GetPlayer(_source)
    local Item = xPlayer.Functions.GetItemByName('orange')

    if Item == nil then
  
       -- TriggerClientEvent('wiadro:postaw', _source)
       
        ---------------------------------------
        local ilosc = math.random(10,10)
        xPlayer.Functions.AddItem('orange', ilosc)
        -----------------------------------------
        TriggerClientEvent("inventory:client:ItemBox", _source, Framework.Shared.Items['orange'], "add")
		
   else
        if Item.amount < 50 then
        
          ----------------------------------------
          local ilosc = math.random(10,10)
          xPlayer.Functions.AddItem('orange', ilosc)
          ----------------------------------------

		  TriggerClientEvent("inventory:client:ItemBox", _source, Framework.Shared.Items['orange'], "add")
          
        else 

        TriggerClientEvent('smerfik:zdejmijznaczek22fp', _source)
        TriggerClientEvent("Framework:Notify", _source, 'You dont have room for more orange!', "error", 7000)
       
         end

    end

end)

------------------------------------NOT USE
RegisterServerEvent('smerfik:pobierzjablka22fp') 
AddEventHandler('smerfik:pobierzjablka22fp', function()
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
        xPlayer.removeMoney(3000)
end)

RegisterServerEvent('smerfik:pobierzjablka222fp') 
AddEventHandler('smerfik:pobierzjablka222fp', function()
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    xPlayer.addMoney(3000)
        TriggerClientEvent('esx:deleteVehicle', source)
end)
-------------------------------------------------------------

-----------------------------------------------VENDI IL LATTE-------------------------------------------------
RegisterServerEvent('smerfikcraft:skup22fp')
AddEventHandler('smerfikcraft:skup22fp', function()
   
    --local jabka = xPlayer.getInventoryItem('milk').count

    local _source = source
    local xPlayer = Framework.Functions.GetPlayer(_source)
    local Item = xPlayer.Functions.GetItemByName('orange')
    


    --if Item.amount >= 1 then
    if Item == nil then
        TriggerClientEvent('Framework:Notify', source, 'No orange', "error")  
    else
        if Item.amount >= 2 then
           -- for i = 1, 2 do
          
        TriggerClientEvent('tp:milkingfp', _source)
        TriggerClientEvent('odlacz:propa3fp', _source)
      
       -- local price =  math.random(50, 200) 
        
        xPlayer.Functions.RemoveItem('orange', 2)----change this emptybottle
        TriggerClientEvent("inventory:client:ItemBox", source, Framework.Shared.Items['orange'], "remove")
        xPlayer.Functions.RemoveItem('emptybottle', 2)----change this emptybottle
        TriggerClientEvent("inventory:client:ItemBox", source, Framework.Shared.Items['emptybottle'], "remove")
        TriggerClientEvent('sprzedawanie:jablekanim22fp', _source)
       -- Citizen.Wait(2000)
       -- xPlayer.Functions.AddMoney("cash", price, "sold-pawn-items")
       -- TriggerClientEvent('Framework:Notify', _source, 'You sold', "success")  
       xPlayer.Functions.AddItem('orangejuice', 1)
	   TriggerClientEvent("inventory:client:ItemBox", source, Framework.Shared.Items['orangejuice'], "add")
        TriggerClientEvent('odlacz:propa2fp', _source)
       -- TriggerClientEvent('Framework:Notify', _source, 'Milked cow of buckets:' .. price .. '$', "success")  
        TriggerClientEvent('tp:misc-jobs:unlockControlsfp', _source)
  
          --  end
        else
            TriggerClientEvent('Framework:Notify', _source, 'You dont have orange or milk bottle', "success")  
            TriggerClientEvent('tp:misc-jobs:unlockControlsfp', _source)
        end
     end
end)
------------------------------------------------------------------------------------------

--------------sell juice orange
RegisterServerEvent('milk:sellfp')
AddEventHandler('milk:sellfp', function()

    local xPlayer = Framework.Functions.GetPlayer(source)
	local Item = xPlayer.Functions.GetItemByName('orangejuice')
   
	
	if Item == nil then
       TriggerClientEvent('Framework:Notify', source, 'No orangejuice', "error")  
	else
	 
        
		
		if Item.amount > 0 then
			--for i = 1, Item.amount do
            local reward = 0
            for i = 1, Item.amount do
                reward = reward + math.random(50, 100)
            end
			xPlayer.Functions.RemoveItem('orangejuice', 1)----change this
			TriggerClientEvent("inventory:client:ItemBox", source, Framework.Shared.Items['orangejuice'], "remove")
			xPlayer.Functions.AddMoney("cash", reward, "sold-pawn-items")
			TriggerClientEvent('Framework:Notify', source, 'you sold orangejuice', "success")  
			--end
        end
		
		
     
	end
	
		
	
end)

--------------sell orange 
RegisterServerEvent('milk:sellfpor')
AddEventHandler('milk:sellfpor', function()

    local xPlayer = Framework.Functions.GetPlayer(source)
	local Item = xPlayer.Functions.GetItemByName('orange')
   
	
	if Item == nil then
       TriggerClientEvent('Framework:Notify', source, 'No orange', "error")  
	else
	 
        
		
		if Item.amount > 0 then
			--for i = 1, Item.amount do
            local reward = 0
            for i = 1, Item.amount do
                reward = reward + math.random(1, 10)
            end
			xPlayer.Functions.RemoveItem('orange', 1)----change this
			TriggerClientEvent("inventory:client:ItemBox", source, Framework.Shared.Items['orange'], "remove")
			xPlayer.Functions.AddMoney("cash", reward, "sold-pawn-items")
			TriggerClientEvent('Framework:Notify', source, 'you sold orange', "success")  
			--end
        end
		
		
     
	end
	
		
	
end)