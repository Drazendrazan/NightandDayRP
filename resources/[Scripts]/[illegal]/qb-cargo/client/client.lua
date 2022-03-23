---------Contact For Buy - DISCORD : Framework#9852----------
----##ILLEGAL DELIVERY##-----
-----------------------------

-------------------LOCAL KEY------------------------------------------------------------------------------------------------------------------------------------
local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
  }
--------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------CORE-----------------------------
Framework = nil 
-------------------------------------------------------

-------------------LOCAL------------------------------
local PlayerData              = {}
local ClosestBerth = 1
local carryPackage = nil
local coordsVisible = false
local ritiro3 = 0
local consegna1 = 0
local npcout2 = 0
local consegnato = 0
local CurrentDock = nil
local currentFuel
local ritiro1 = 0
local npcout = 0
local ritiro2 = 0
local conteggio2 = 0
-------------------------------------------------------
------------------------------------------------CORE---------------------------------

Citizen.CreateThread(function()
    while Framework == nil do
        TriggerEvent('Framework:GetObject', function(obj) Framework = obj end)
        Citizen.Wait(200)
    end
	
	while Framework.Functions.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end
	PlayerData = Framework.Functions.GetPlayerData()
end)

----------------onload player--------------------------------------------------------
RegisterNetEvent('Framework:Client:OnPlayerLoaded')
AddEventHandler('Framework:Client:OnPlayerLoaded', function()
    Framework.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        PlayerData = Framework.Functions.GetPlayerData()
    end)
end)

-------------------setjob------------------------------------------------------------
RegisterNetEvent('Framework:Client:OnJobUpdate')
AddEventHandler('Framework:Client:OnJobUpdate', function(JobInfo)
    PlayerData.job = JobInfo
end)
-------------------------------------------------------------------------------------

------------------------------------TEXT DRAW3D-----------------------------------
function hintToDisplay(text)
	SetTextComponentFormat("STRING")
	AddTextComponentString(text)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function DrawText3D2(x, y, z, text)
  
    local onScreen,_x,_y=World3dToScreen2d(x, y, z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 90)
end
----------------------------------------------------------------------------------

-------------------------------------------animazione-----------------------------------------------------
function LoadDict2(dict)
    RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
	  	Citizen.Wait(10)
    end
end

---------------------------------------------------------------------------RITIRA AUTO LAVORO CARGO--------------------------------------------------------------

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        ------------LOCAL
        local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
        ---local distanza marker 
        local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Config.craft1X, Config.craft1Y, Config.craft1Z)
        
        ---end local distanza marker 
       
        local vehicled = GetVehiclePedIsIn(GetPlayerPed(-1), true)
        local playerPeds = PlayerPedId()
        ----------LOCAL AUTO
        local auto = Config.modelcar

        ---primo marker pavimento
        if dist <= 20.0 then
            
			DrawMarker(25, Config.craft1X, Config.craft1Y, Config.craft1Z-0.96, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 255, 255, 200, 0, 0, 0, 0)
           
        end
     
        ---ingresso in marker 
        if dist <= 1.0 then

            ---eseguo il controllo se sono in macchina
		    if GetPedInVehicleSeat(vehicled, -1) == GetPlayerPed(-1) then
              ---se sono in macchina non esegue nessuna funzione
            else
                ---se sono a piedi eseguo il codice
           if ritiro1 == 0 then
                ---creo il testo
                DrawText3D2(Config.craft1X, Config.craft1Y, Config.craft1Z+0.1,''..Config.textgar..'')
                
                ---creo il marker
                DrawMarker(20, QBGarage.SpawnVehicle.x, QBGarage.SpawnVehicle.y, QBGarage.SpawnVehicle.z + 0.2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.1, 0.2, 15, 255, 55, 255, true, false, false, true, false, false, false)
                
                npcout = 1
             
                ---pressione tasto E
                if IsControlJustPressed(0, Keys['E']) then 
                
                ---locali di controllo
                local hasBag4g = false
                local s1 = false
            				
				ritiro1 = 1
                
                    ----notifica preparazione auto e benzina
                    Framework.Functions.Notify('I\'m preparing your car, 100% fuel.', 'success',7000)
                    -----------------------------------------------------------------------------------

                     LoadDict2('amb@prop_human_parking_meter@male@idle_a')
                     TaskPlayAnim(GetPlayerPed(-1), 'amb@prop_human_parking_meter@male@idle_a', 'idle_a', 8.0, -8.0, -1, 1, 0.0, 0, 0, 0)
                    ----------------------------------------------------------------------------------
                    
                    ----creo la progress Bar
                    Framework.Functions.Progressbar("search_register", "Insert code card..", 5000, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                        disableInventory = true,
                    }, {}, {}, {}, function()
                                    

                    LoadDict2('amb@prop_human_parking_meter@male@exit')
                    TaskPlayAnim(GetPlayerPed(-1), 'amb@prop_human_parking_meter@male@exit', 'exit', 8.0, -8.0, -1, 1, 0.0, 0, 0, 0)
                    ClearPedTasks(GetPlayerPed(-1))
                        local timeLeft = 1000 * 1 / 1000
                
                        while timeLeft > 0 do
                            Citizen.Wait(1000)
                            timeLeft = timeLeft - 1
                           
                          
                            ClearPedTasks(GetPlayerPed(-1))
                            -----terminato il timer creo l'auto
                          TriggerServerEvent('cargo:server:truck', 'burrito2', ClosestBerth)
                       
                          ClearPedTasks(GetPlayerPed(-1))
                            --------------creo npc
                            npscreate()
                            ritiro2 = 1
                            Framework.Functions.Notify('Talk to the pusher and collect the package', 'success',7000)
                        end
                        ----cancello animazione
                        
                    end, function()
                       
                    end)
                    ---fine progress Bar

               
                end	
                -----------------------------------------------fine pressione tasto-----------------------------------------------
            else
                DrawText3D2(Config.craft1X, Config.craft1Y, Config.craft1Z+0.1,'Your Delivery car is ready outside the garage')
            end
              
                
            end
            -----------------------------------------------fine controllo se sono in  macchina---------------------------------------
		
		end	
        ---------------------------------------------------fine ingresso marker 1-------------------------------------------------------


    end
    -------fine while-------------------------------------------------------------------------------------------------
end)
-----------------------------------------------------------END PRENDI AUTO-------------------------------------------------

-----------------------------------------------GENERA AUTO----------------------------------------------
RegisterNetEvent('cargo:Auto')
AddEventHandler('cargo:Auto', function(boatModel, plate)
    --DoScreenFadeOut(250)
    --Citizen.Wait(250)
    Framework.Functions.SpawnVehicle(boatModel, function(veh)
       -- TaskWarpPedIntoVehicle(GetPlayerPed(-1), veh, -1)
       exports['qb-fuel']:SetFuelLevel(veh, GetVehicleNumberPlateText(veh), 100.0, false)
        SetVehicleNumberPlateText(veh, plate)
        SetEntityHeading(veh, QBGarage.SpawnVehicle.h)
        --TaskWarpPedIntoVehicle(GetPlayerPed(-1), veh, -1)
        SetVehicleEngineOn(veh, true, true)
        exports['qb-vehiclekeys']:SetVehicleKey(GetVehicleNumberPlateText(veh), true)
        ClearPedTasks(GetPlayerPed(-1))
    end, QBGarage.SpawnVehicle, true)
  -- SetTimeout(1000, function()
   --     DoScreenFadeIn(250)
  --  end)
 -- npcout=0
end)
------------------------------------------END GENERA AUTO--------------------------------------------

------------------------------------------DELETE VEHICLE---------------------------------------------
Citizen.CreateThread(function()
    while true do
	Citizen.Wait(10)
		local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
		local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Config.delXAU, Config.delYAU, Config.delZAU)
        local ped = GetPlayerPed(-1)
        local vehicled = GetVehiclePedIsIn(GetPlayerPed(-1), true)
        local veh2 = GetVehiclePedIsIn(ped)

		if dist <= 25.0 then
        DrawMarker(36, Config.delXAU, Config.delYAU, Config.delZAU, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 0.5, 255, 0, 0, 255, false, false, false, true, false, false, false)
        DrawMarker(25, Config.delXAU, Config.delYAU, Config.delZAU-0.97, 0, 0, 0, 0, 0, 0, 0.90, 0.90, 0.90, 255, 0, 0, 200, 0, 0, 0, 0)
		else
		Citizen.Wait(1500)
		end
		
		if dist <= 2.5 then
				
            if GetPedInVehicleSeat(vehicled, -1) == GetPlayerPed(-1) then
                DrawText3D2(Config.delXAU, Config.delYAU, Config.delZAU, ''..Config.canve..'')
                           
                if IsControlJustPressed(0, Keys['E']) then 
                    ritiro1 = 0
                    Framework.Functions.DeleteVehicle(veh2)
                    if consegnato == 1 then
                     -----RICEVO I SOLDI e consegno i soldi al pusher
                     consegnato = 0
                     RemoveBlip(event_delivery_blip2)
                     RemoveBlip(event_delivery_blip)
                     Framework.Functions.Notify('Successful delivery', 'success', 7000) --success
                     TriggerServerEvent("AdvanceQBUSccocke:soldi") --------AdvanceQBUSccocke:soldi
                    else
                      
                    end
                    RemoveBlip(event_delivery_blip2)
                    RemoveBlip(event_delivery_blip)
                end	

            else
               
		    end		
		end
	end
end)
----------------------------------------------------------------------------------END PARCHEGGIA AUTO-------------------------------------------------------

---------------------------------------------------------------------------------CREAZIONE NPC PUSHER-------------------------------------------------------

function npscreate()
    RequestModel(Config.NPCHash)
	while not HasModelLoaded(Config.NPCHash) do
	Wait(1)

	end
if npcout == 1 then
	--PROVIDER
		meth_dealer_seller = CreatePed(1, Config.NPCHash, Config.DeliveriX, Config.DeliveriY, Config.DeliveriZ-0.96, Config.DeliveriH, false, true)
		SetBlockingOfNonTemporaryEvents(meth_dealer_seller, true)
		SetPedDiesWhenInjured(meth_dealer_seller, false)
		SetPedCanPlayAmbientAnims(meth_dealer_seller, true)
		SetPedCanRagdollFromPlayerImpact(meth_dealer_seller, false)
		SetEntityInvincible(meth_dealer_seller, true)
		FreezeEntityPosition(meth_dealer_seller, true)
        TaskStartScenarioInPlace(meth_dealer_seller, "WORLD_HUMAN_SMOKING", 0, true);
end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------CREAZONE PRENDI PACCO DAL PUSHER------------------------------------

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        ------------LOCAL------------------------------------------------------

        local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
        ---local distanza marker 
        local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Config.DeliveriX, Config.DeliveriY, Config.DeliveriZ)
        
        ---end local distanza marker 
       
        local vehicled = GetVehiclePedIsIn(GetPlayerPed(-1), true)
        local playerPeds = PlayerPedId()

        ----primo marker pavimento
        if ritiro2 == 1 then
		if dist <= 20.0 then
			DrawMarker(25, Config.DeliveriX, Config.DeliveriY, Config.DeliveriZ-0.96, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 255, 255, 200, 0, 0, 0, 0)
           
        end
     
        ----ingresso in marker
        if dist <= 1.0 then

            ------eseguo il controllo se sono in macchina----------------------
		    if GetPedInVehicleSeat(vehicled, -1) == GetPlayerPed(-1) then
              ----se sono in macchina non esegue nessuna funzione
            else
                ----se sono a piedi eseguo il codice
           
                -------------creo il testo
                DrawText3D2(Config.DeliveriX, Config.DeliveriY, Config.DeliveriZ+0.1,'~g~[E]~w~ COLLECT PACKAGE')
                ---------------------------------------------------------------------------
               
                -----------pressione tasto E
                if IsControlJustPressed(0, Keys['E']) then 
                
                -----------locali di controllo
                local hasBag4g = false
				local s1 = false
				
                   
                     LoadDict2('amb@prop_human_parking_meter@male@idle_a')
                     TaskPlayAnim(GetPlayerPed(-1), 'amb@prop_human_parking_meter@male@idle_a', 'idle_a', 8.0, -8.0, -1, 1, 0.0, 0, 0, 0)
                    ----------------------------------------------------------------------------------
                    
                    ----creo la progress Bar
                    Framework.Functions.Progressbar("search_register", "PREPARATION OF THE PACKAGE FOR DELIVERY", 5000, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                        disableInventory = true,
                    }, {}, {}, {}, function()
                                    

                    LoadDict2('amb@prop_human_parking_meter@male@exit')
                    TaskPlayAnim(GetPlayerPed(-1), 'amb@prop_human_parking_meter@male@exit', 'exit', 8.0, -8.0, -1, 1, 0.0, 0, 0, 0)
                    ClearPedTasks(GetPlayerPed(-1))
                        local timeLeft = 1000 * 1 / 1000
                
                        while timeLeft > 0 do
                            Citizen.Wait(1000)
                            timeLeft = timeLeft - 1
                           
                          
                            ClearPedTasks(GetPlayerPed(-1))
                           
                          ClearPedTasks(GetPlayerPed(-1))
                            
                            ------------------------------------------CREA pACCO
                            PickupPackage()
                            coordsVisible = true
                            --------------------------------------------------------------------------------------------
                            npcout = 0
                            DeletePed(meth_dealer_seller)
                            ritiro2 = 0
                            ---------INSERT ITEM COCKE
                            TriggerServerEvent("AdvanceQBUSccocke:cocke5k")
                        end
                        ----cancello animazione
                        
                    end, function()
                       
                    end)
                    ----------------fine progress Bar

                 -----------------------------------------------fine pressione tasto
            else
                DrawText3D2(Config.craft1X, Config.craft1Y, Config.craft1Z+0.1,'get out of the car')
            end
              
                
            end
            -----------------------------------------------fine controllo se sono in  macchina---------------------------------------
		end	
		end	
        ---------------------------------------------------fine ingresso marker 1-------------------------------------------------------


    end
    -------fine while-------------------------------------------------------------------------------------------------
end)
-----------------------------------------------------------fine creazione prendi auto-------------------------------------------------

------------------------------CREO PACCO-----------------------------------------
function PickupPackage()
    local pos = GetEntityCoords(GetPlayerPed(-1), true)
    RequestAnimDict("anim@heists@box_carry@")
    while (not HasAnimDictLoaded("anim@heists@box_carry@")) do
        Citizen.Wait(7)
    end
    TaskPlayAnim(GetPlayerPed(-1), "anim@heists@box_carry@" ,"idle", 5.0, -1, -1, 50, 0, false, false, false)
    local model = GetHashKey("prop_cs_cardbox_01")
    RequestModel(model)
    while not HasModelLoaded(model) do Citizen.Wait(0) end
    local object = CreateObject(model, pos.x, pos.y, pos.z, true, true, true)
    AttachEntityToEntity(object, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 57005), 0.05, 0.1, -0.3, 300.0, 250.0, 20.0, true, true, false, true, 1, true)
    carryPackage = object
    
end
------------------------------------------------------------------------------------

------------------------------------CANCELLO PACCO-----------------------------
function DropPackage()
    ClearPedTasks(GetPlayerPed(-1))
    DetachEntity(carryPackage, true, true)
    DeleteObject(carryPackage)
    carryPackage = nil
end
----------------------------------------------------------------------------------

-------------------------------------------------------------------CARICA IN MACCHINA-----------------------------------------------------------------------------------

Citizen.CreateThread(function()
    
    while true do
        Citizen.Wait(250)
        if coordsVisible then
            local ped = GetPlayerPed(-1)
            local coords = GetEntityCoords(ped)
            local veh = GetClosestVehicle(coords.x, coords.y, coords.z, 3.000, 0, 70)
            local vCoords = GetEntityCoords(veh)
            local dist = GetDistanceBetweenCoords(coords.x, coords.y, coords.z, vCoords.x, vCoords.y, vCoords.z, false)
            LoadDict2('anim@heists@box_carry@')
        
            if not IsEntityPlayingAnim(GetPlayerPed(-1), "anim@heists@box_carry@", "idle", 3 ) and dajdoAuta == true then
            TaskPlayAnim(GetPlayerPed(-1), 'anim@heists@box_carry@', "idle", 3.0, -8, -1, 63, 0, 0, 0, 0 )
            end
            
            if veh and (dist < 3.0) then
                coordsVisible = false
            -----NOTIFICA CARICO
            Framework.Functions.Notify('Parcel loaded, check the GPS go to the delivery point', 'success', 7000)
            ----------------------------------------------------------------------------------------------------------
            LoadDict2('anim@heists@narcotics@trash')
            TaskPlayAnim(GetPlayerPed(-1), 'anim@heists@narcotics@trash', "throw_a", 3.0, -8, -1, 63, 0, 0, 0, 0 )
            Citizen.Wait(900)
            ClearPedTasks(GetPlayerPed(-1))
           --------------------------------------------------------------------------------------------------------------
            DropPackage()
            -----------------------------------------------CREA PUNTO DI CONSEGNA-----------------------
            ritiro3 = 1
           
            ------------------------------------------------------CREO BLIP-----------------------------
            event_delivery_blip	= AddBlipForCoord(Config.consegnaX,Config.consegnaY,Config.consegnaZ)
            SetBlipSprite(event_delivery_blip,94)
            SetBlipColour(event_delivery_blip,1)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString('Drug Delivery')
            EndTextCommandSetBlipName(event_delivery_blip)
            SetBlipAsShortRange(event_delivery_blip,true)
            SetBlipAsMissionCreatorBlip(event_delivery_blip,true)
            SetBlipRoute(event_delivery_blip, 1)

            ---------------INSERISCI LA FUNZIONE PER AVVISARE LA POLIZIA-------------------------------------------------------------
            
            alertpolice()

            --------------------------------------------------------------------------------------------------------------------------

             end
            end 
    end
    end)

    function alertpolice()
    -----NOTIFICA ALLERTA
    Citizen.Wait(50000)
    Framework.Functions.Notify('Beware the police intercepted the shipment', 'error', 10000)

    end
    ---------------------------------CREAZONE MARKER CONSEGNA------------------------------------

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        ------------LOCAL------------------------------------------------------

        local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
        ---local distanza marker
        local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Config.consegnaX, Config.consegnaY, Config.consegnaZ)
        
        ---end local distanza marker
       
        local vehicled = GetVehiclePedIsIn(GetPlayerPed(-1), true)
        local playerPeds = PlayerPedId()

        -------------------------------------------primo marker pavimento----------------------------------------
        if ritiro3 == 1 then
		if dist <= 20.0 then
			DrawMarker(25, Config.consegnaX, Config.consegnaY, Config.consegnaZ-0.96, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 255, 255, 200, 0, 0, 0, 0)
            --DrawMarker(36, Config.craftAX, Config.craftAY, Config.craftAZ + 0.2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.5, 0.5, 15, 255, 55, 255, true, false, false, true, false, false, false)
        end
     
        -------------------------------------------ingresso in marker 1--------------------------------------------
        if dist <= 7.0 then

            ---------------------------------------eseguo il controllo se sono in macchina----------------------
		    if GetPedInVehicleSeat(vehicled, -1) == GetPlayerPed(-1) then
              ----se sono in macchina 
              DrawText3D2(Config.consegnaX, Config.consegnaY, Config.consegnaZ+0.1,"~w~GET OUT OF THE VAN AND GET THE PACKAGE")
            else
                ----se sono a piedi eseguo il codice---------------------------------------
           
                -------------creo il testo-------------------------------------------------
                DrawText3D2(Config.consegnaX, Config.consegnaY, Config.consegnaZ+0.1,"~g~[E]~w~ TAKE THE PACKAGE FROM THE VAN AND DELIVER IT TO THE PUSHER")
                ---------------------------------------------------------------------------
                -------------creo il marker------------------------------------------------
                --DrawMarker(20, QBGarage.SpawnVehicle.x, QBGarage.SpawnVehicle.y, QBGarage.SpawnVehicle.z + 0.2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.1, 0.2, 15, 255, 55, 255, true, false, false, true, false, false, false)
                ---------------------------------------------------------------------------
                
              -- ritiro1 = 1
                -----------pressione tasto E-----------------------------------------------
                if IsControlJustPressed(0, Keys['E']) then 
                    ritiro3 = 0
                -----------locali di controllo---------------------------------------------
                local hasBag4g = false
				local s1 = false
				

                     LoadDict2('amb@prop_human_parking_meter@male@idle_a')
                     TaskPlayAnim(GetPlayerPed(-1), 'amb@prop_human_parking_meter@male@idle_a', 'idle_a', 8.0, -8.0, -1, 1, 0.0, 0, 0, 0)
                    ----------------------------------------------------------------------------------
                    
                    ----creo la progress Bar----------------------------------------------------------
                    Framework.Functions.Progressbar("search_register", "I TAKE THE PACKAGE", 5000, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                        disableInventory = true,
                    }, {}, {}, {}, function()
                                    

                    LoadDict2('amb@prop_human_parking_meter@male@exit')
                    TaskPlayAnim(GetPlayerPed(-1), 'amb@prop_human_parking_meter@male@exit', 'exit', 8.0, -8.0, -1, 1, 0.0, 0, 0, 0)
                    ClearPedTasks(GetPlayerPed(-1))
                        local timeLeft = 1000 * 1 / 1000
                
                        while timeLeft > 0 do
                            Citizen.Wait(1000)
                            timeLeft = timeLeft - 1
                           
                          
                            ClearPedTasks(GetPlayerPed(-1))
                           
                          ClearPedTasks(GetPlayerPed(-1))
                            ------------------------------------------------------------------------------------------------------
                            ------------------------------------------CREA pACCO---------------------------------------
                            PickupPackage()
                           
                            --------------------------------------------------------------------------------------------
                            consegna1 = 1
                            npcout2 = 1
                            npscreate2()
                            RemoveBlip(event_delivery_blip)
                        end
                        ----cancello animazione
                        
                    end, function()
                       
                    end)
                    ----------------fine progress Bar-----------------------------------------------------------------------------
                
                -----------------------------------------------fine pressione tasto-----------------------------------------------
            else
               -- DrawText3D2(Config.craft1X, Config.craft1Y, Config.craft1Z+0.1,'I\'m getting the car ready, talk to the pusher nearby')
            end
              
                
            end
            -----------------------------------------------fine controllo se sono in  macchina---------------------------------------
		end	
		end	
        ---------------------------------------------------fine ingresso marker 1-------------------------------------------------------


    end
    -------fine while-------------------------------------------------------------------------------------------------
end)

------------------------creazione NPC CONSEGNA--------------------

function npscreate2()
    RequestModel(Config.NPCHash)
	while not HasModelLoaded(Config.NPCHash) do
	Wait(1)

	end
if npcout2 == 1 then
	--PROVIDER
		meth_dealer_seller2 = CreatePed(1, Config.NPCHash, Config.npcconsegnaX, Config.npcconsegnaY, Config.npcconsegnaZ-0.96, Config.npcconsegnaH, false, true)
		SetBlockingOfNonTemporaryEvents(meth_dealer_seller2, true)
		SetPedDiesWhenInjured(meth_dealer_seller2, false)
		SetPedCanPlayAmbientAnims(meth_dealer_seller2, true)
		SetPedCanRagdollFromPlayerImpact(meth_dealer_seller2, false)
		SetEntityInvincible(meth_dealer_seller2, true)
		FreezeEntityPosition(meth_dealer_seller2, true)
        TaskStartScenarioInPlace(meth_dealer_seller2, "WORLD_HUMAN_SMOKING", 0, true);
end
end

----------------------------------------------------CONSEGNA PACCO-------------------------------------------------

Citizen.CreateThread(function()
    while true do
        Wait(5)
        local coords  = GetEntityCoords(GetPlayerPed(-1))
        if (GetDistanceBetweenCoords(coords, Config.npcconsegnaX, Config.npcconsegnaY, Config.npcconsegnaZ, true) < 5.0) then
            local coords      = GetEntityCoords(PlayerPedId())
            local zaplata = 0
            local hasBagd = false
            local s1d = false
            local hasBagdfb = false
            local s1dfb = false
            if consegna1 == 1 then
			if(GetDistanceBetweenCoords(coords, Config.npcconsegnaX, Config.npcconsegnaY, Config.npcconsegnaZ, true) < 3.0) then
				DrawText3D2(Config.npcconsegnaX, Config.npcconsegnaY, Config.npcconsegnaZ, '~y~[E] ~b~DELIVERY')
				DrawMarker(27, Config.npcconsegnaX, Config.npcconsegnaY, Config.npcconsegnaZ-0.97, 0, 0, 0, 0, 0, 0, 0.90, 0.90, 0.90, 255, 255, 255, 200, 0, 0, 0, 0)
								
                if IsControlJustReleased(0, Keys['E']) then
                    Framework.Functions.TriggerCallback('Framework:HasItem', function(result)
                        hasBagd = result
                        s1d = true
                end, 'delivericok')
                while(not s1d) do
                        Citizen.Wait(100)
                    end
                    if (hasBagd) then
                    DropPackage()
                    SellKurczaki2fb2()
                else
                    Framework.Functions.Notify('You have no 5KG COKE.', 'error')
                    end
                
                end
            end
        end

        end
    end
end)


function SellKurczaki2fb2()
    -- local
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    local inventory = Framework.Functions.GetPlayerData().inventory
    local count = 0
    ----
    if(count == 0) then
        consegna1 = 0
    Framework.Functions.Progressbar("search_register", "DELIVERY IN PROGRESS", 5000, false, true, {disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                        disableInventory = true,
                    }, {}, {}, {}, function()end, function()
                        
                    end)
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 0.9, -0.98))
    prop8 = CreateObject(GetHashKey('hei_prop_heist_box'), x, y, z,  true,  true, true)
    
    SetEntityHeading(prop8, GetEntityHeading(GetPlayerPed(-1)))
    
    
    -------------------CREO BLIP
    LoadDict2('amb@medic@standing@tendtodead@idle_a')
    TaskPlayAnim(GetPlayerPed(-1), 'amb@medic@standing@tendtodead@idle_a', 'idle_a', 8.0, -8.0, -1, 1, 0.0, 0, 0, 0)
    Citizen.Wait(5000)
    LoadDict2('amb@medic@standing@tendtodead@exit')
    TaskPlayAnim(GetPlayerPed(-1), 'amb@medic@standing@tendtodead@exit', 'exit', 8.0, -8.0, -1, 1, 0.0, 0, 0, 0)
    ClearPedTasks(GetPlayerPed(-1))
    DeleteEntity(prop8)
    DeletePed(meth_dealer_seller2)
    ClearPedTasksImmediately(PlayerPedId())
    TriggerServerEvent("AdvanceQBUSccocke:removecocke5k")
    
    
    Framework.Functions.Notify('Check the GPS Go back to the point to drop off the van and get the money!!', 'success', 7000) --success
    

    route()

    else
    
    
    end
    conteggio2=0
end

---------------------------------FINE CONSEGNA PACCO------------------------------------------------------------------------------

-----------------------------------CREO BLIP E PERCORSO RESTITUZIONE AUTO-----------------------
function route()
    consegnato = 1
    consegna1 = 0
    event_delivery_blip2 = AddBlipForCoord(Config.delXAU, Config.delYAU, Config.delZAU)
    SetBlipSprite(event_delivery_blip2,94)
    SetBlipColour(event_delivery_blip2,1)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString('DELIVERY')
    EndTextCommandSetBlipName(event_delivery_blip2)
    SetBlipAsShortRange(event_delivery_blip2,true)
    SetBlipAsMissionCreatorBlip(event_delivery_blip2,true)
    SetBlipRoute(event_delivery_blip2, 1)
end
-------------------------------------------------------------------------------------------------