CreateThread(function()
    while true do
        for _, NpcAreas in pairs(Config.NpcAreas) do
            ClearAreaOfPeds(
                NpcAreas.coords.x,
                NpcAreas.coords.y,
                NpcAreas.coords.z,
                NpcAreas.radius,
                1
            )
        end
        Wait(Config.refreshRate)
    end

    while true do
        for _, VehicleAreas in pairs(Config.VehicleAreas) do
            ClearAreaOfVehicles(
                VehicleAreas.coords.x,
                VehicleAreas.coords.y,
                VehicleAreas.coords.z,
                VehicleAreas.radius,
                false, 
                false, 
                false, 
                false, 
                false               
            )
        end
        Wait(Config.refreshRate)
    end



end)