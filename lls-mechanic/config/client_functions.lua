--[[
    Returns the current player cash money
]]
function getPlayerCashMoney()
    if (not ESX) then return 0 end
    
    return ESX.GetPlayerData().money
end

--[[
    Called every time a change is applied to the vehicle, you can use that to save your vehicle data in the database for exaple
        vehicle : the vehicle that changed
]]
function saveVehicleData(vehicle)
end