---------Contact For Buy - DISCORD : Framework#9852----------
----##ILLEGAL DELIVERY##-----
-----------------------------

---------------------------BLIP MAP-----------------------------------------------
local blips = {
 
  -- Illegal deliveri cocke----
   {title="Illegal delivery", colour=32, id=460, x=492.31, y=-3381.82, z=6.07},
  
}
----------------------------------------------------------------------------------

---------------------------------CREATE BLIP-------------------------------------
Citizen.CreateThread(function()

  for _, info in pairs(blips) do
    info.blip = AddBlipForCoord(info.x, info.y, info.z)
	
    SetBlipSprite(info.blip, info.id)
    SetBlipDisplay(info.blip, 4)
    SetBlipScale(info.blip, 0.6)
    SetBlipColour(info.blip, info.colour)
	
    SetBlipAsShortRange(info.blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(info.title)
    EndTextCommandSetBlipName(info.blip)
	-------------------------------------------------------------
	RadiusBlip = AddBlipForRadius(info.x, info.y, info.z, 80.0)
    SetBlipRotation(RadiusBlip, 0)
	SetBlipAlpha(RadiusBlip, 100)
    SetBlipColour(RadiusBlip, 1)
	--------------------------------------------------------------
  	
  end
end)
---------------------------------------------------------------------------------
