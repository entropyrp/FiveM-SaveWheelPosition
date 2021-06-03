Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)
		ped = GetPlayerPed(-1)
        if IsPedInAnyVehicle(ped, false) then
			if GetIsTaskActive(ped,2) then
				vehicle = GetVehiclePedIsUsing(ped)
				angle = GetVehicleSteeringAngle(vehicle)
				Citizen.Wait(100)
				SetVehicleSteeringAngle(vehicle, angle)
			end
        end
    end
end)
