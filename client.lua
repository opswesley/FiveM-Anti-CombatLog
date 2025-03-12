RegisterNetEvent("anti-cl:displayDisconnect")
AddEventHandler("anti-cl:displayDisconnect", function(coords, player_name, user_id, reason)
    Citizen.CreateThread(function()
        local endTime = GetGameTimer() + 18000 -- Exibe o texto por 18 segundos

        while GetGameTimer() < endTime do
            Citizen.Wait(0)
            
            -- Pega a posição do jogador atual
            local playerCoords = GetEntityCoords(PlayerPedId())
            local distance = #(playerCoords - coords)
            if distance <= 30.0 then
                local scale = 0.45 * (1 - (distance / 30.0))
                DrawStyledText3D(coords.x, coords.y, coords.z, string.format("[Desconectado]\nNome: %s\nID: %d\nMotivo: %s", player_name, user_id, reason), scale)
            end
        end
    end)
end)
function DrawStyledText3D(x, y, z, text, scale)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    if onScreen then
        SetTextScale(scale, scale)
        SetTextFont(4)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 230)
        SetTextOutline()
        SetTextDropShadow(1, 1, 1, 1, 200)
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x, _y)
        ClearDrawOrigin()
    end
end
