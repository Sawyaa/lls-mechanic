--[[


    Do NOT CHANGE any of the code in this file,
    
    if you do so, do it on your own risk and no support will be given


]]

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('lls-mechanic:removeCash')
AddEventHandler('lls-mechanic:removeCash', function(amount)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)

    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_'..xPlayer.job.name, function(account)
		societyAccount = account
	end)
    amount = tonumber(amount)
    if (not amount or amount <= 0) then return end
    
    local esxPlayer = ESX.GetPlayerFromId(src)
    if amount <= societyAccount.money then
        societyAccount.removeMoney(amount)
		print(json.encode(societyAccount.money))
    else
        TriggerClientEvent('esx:showNotification', source, 'La société ~r~n\'a pas assez d\'argent~s~ sur son compte.')
    end
end)

ESX.RegisterServerCallback('GetSocietyMoney', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addonaccount:getSharedAccount', 'society_'..xPlayer.job.name, function(account)
		acount = account.money
	end)

	cb({
		acount = acount
	})
end)

RegisterServerEvent('lls-mechanic:refreshOwnedVehicle')
AddEventHandler('lls-mechanic:refreshOwnedVehicle', function(vehicleProps)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT vehicle FROM owned_vehicles WHERE plate = @plate', {
		['@plate'] = vehicleProps.plate
	}, function(result)
		if result[1] then
			local vehicle = json.decode(result[1].vehicle)

			if vehicleProps.model == vehicle.model then
				MySQL.Async.execute('UPDATE owned_vehicles SET vehicle = @vehicle WHERE plate = @plate', {
					['@plate'] = vehicleProps.plate,
					['@vehicle'] = json.encode(vehicleProps)
				})
			else
				print(('esx_lscustom: %s attempted to upgrade vehicle with mismatching vehicle model!'):format(xPlayer.identifier))
			end
		end
	end)
end)
