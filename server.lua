local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")

-- URL do webhook
local webhookURL = ""

local function sendWebhookMessage(embed)
    PerformHttpRequest(webhookURL, function(err, text, headers) end, "POST", json.encode({embeds = {embed}}), {["Content-Type"] = "application/json"})
end

local function logDisconnect(user_id, reason, coords)
    local identity = vRP.userIdentity(user_id)
    local player_name = identity.name .. " " .. identity.name2
    local location = string.format("X: %.2f, Y: %.2f, Z: %.2f", coords.x, coords.y, coords.z)

    local embed = {
        title = "⚠️ Desconexão Detectada",
        description = "Um jogador se desconectou do servidor.",
        color = 15105570, -- Amarelo
        fields = {
            {
                name = "👤 Jogador",
                value = string.format("**ID:** %d\n**Nome:** %s", user_id, player_name),
                inline = true
            },
            {
                name = "📄 Motivo da Desconexão",
                value = reason or "Não especificado",
                inline = true
            },
            {
                name = "📍 Localização",
                value = location,
                inline = false
            },
            {
                name = "📅 Data e Hora",
                value = os.date("**Data:** %d/%m/%Y\n**Hora:** %H:%M:%S"),
                inline = false
            }
        }
    }

    sendWebhookMessage(embed)

    TriggerClientEvent("anti-cl:displayDisconnect", -1, vector3(coords.x, coords.y, coords.z), player_name, user_id, reason)
end

AddEventHandler("playerDropped", function(reason)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        local coords = GetEntityCoords(GetPlayerPed(source))
        logDisconnect(user_id, reason, coords)
    end
end)
