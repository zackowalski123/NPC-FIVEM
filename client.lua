Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        -- Blokuj spawnowanie NPC policjantów
        SetPedDensityMultiplierThisFrame(0.0)
        SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0)
        
        -- Blokuj spawnowanie pojazdów NPC (w tym policyjnych)
        SetVehicleDensityMultiplierThisFrame(0.0)
        SetRandomVehicleDensityMultiplierThisFrame(0.0)
        SetParkedVehicleDensityMultiplierThisFrame(0.0)
        
        -- Zatrzymaj radiowozy
        local playerCoords = GetEntityCoords(PlayerPedId())
        ClearAreaOfCops(playerCoords.x, playerCoords.y, playerCoords.z, 100.0, false)
    end
end)
