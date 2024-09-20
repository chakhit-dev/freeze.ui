ESX = nil
local freeza = true

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

-- Citizen.CreateThread(function()
-- 	Citizen.Wait(1000) -- ตัวให้เมนู ขึ้นช้าหรื่อเร็ว 1000 = 1 วิ
-- 	while freeza do
--         SetNuiFocus(true, true)
-- 		FreezeEntityPosition(GetPlayerPed(-1), true)
-- 		Citizen.Wait(0)
-- 	end
-- end)

RegisterNUICallback('Freeza', function()
	freeza = false
	SetNuiFocus(false, false)
	FreezeEntityPosition(GetPlayerPed(-1), false)
	TriggerEvent('update:SCOREBOARD')
	--print('update:Freeza_CL')
end)


function opennui()
	freeza = true
	SetNuiFocus(true, true)
	FreezeEntityPosition(GetPlayerPed(-1), true)
	SendNUIMessage({
		type = 'open'
	})
end

exports("ShowFreeze", opennui)