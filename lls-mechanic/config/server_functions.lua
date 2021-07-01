--[[
    Removes cash money from the current balance of the player
        playerId : the server player's id
        amount : the amount of the cash to remove
]]
function removePlayerCashMoney(playerId, amount)
    playerId = tonumber(playerId)
    amount = math.floor(tonumber(amount))
    
    if (not playerId or playerId < 1 or not GetPlayerName(playerId)) then return end
    if (not amount or amount <= 0) then return end

    if (not ESX) then return end
    
    local esxPlayer = ESX.GetPlayerFromId(playerId)
    if (esxPlayer) then
        esxPlayer.removeMoney(amount)
    end
end
