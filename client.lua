Citizen.CreateThread(function()
while true do
Citizen.Wait(1000)
local playerPed = PlayerPedId()
local vehicle = GetVehiclePedIsIn(playerPed, false)
local vehtemp = GetVehicleEngineTemperature(vehicle)
local vehrpm = GetVehicleCurrentRpm(vehicle)
local vehenghel = GetVehicleEngineHealth(vehicle)

if(vehtemp >= 100) then
    if(vehenghel >= 10) then
        if(vehrpm >= 0.2002) then
    local newvehenghel = vehenghel -5
    SetVehicleEngineHealth(vehicle, newvehenghel)
        end
    else
        SetVehicleEngineHealth(vehicle, 0)
    end
end
end
end)