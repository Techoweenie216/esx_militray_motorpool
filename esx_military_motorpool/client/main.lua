ESX              = nil
local PlayerData = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer   
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

local isMenuOpen = false

local options = {
	{label = "Cargo Truck", value = 'spawn_cargo1'},
	{label = "Semi Cab", value = 'spawn_semi'},
	{label = "Jeep", value = 'spawn_jeep'},
	{label = "Dune Buggy", value = 'spawn_buggy1'},
	{label = "Dune Buggy (armed)", value = 'spawn_buggy2'},
	{label = "APC (armed)", value = 'spawn_apc'},
	-- added on vehicle
	{label = "Humvee (armed)", value = 'spawn_humvee'},
	{label = "Halftrack (armed)", value = 'spawn_halftrack'},
	{label = "Rhino Tank (armed)", value = 'spawn_rhino'},
	{label = "Tank 1", value = 'spawn_khanjali'},
	-- added on vehicle
	{label = "Abrams Desert", value = 'spawn_abrams'},
	-- added on vehicle
	{label = "Abrams Camo", value = 'spawn_abrams2'},
	}
	
function OpenMenu()
	isMenuOpen = true
	
	ESX.UI.Menu.Open('default', GetCurrentResourceName(),'general_menu', {
		title = "Motorpool Menu",
		align = "upperleft",
		elements = options
	}, function(data, menu)
		menu.close()
		isMenuOpen = false
			
			if data.current.value == 'spawn_cargo1' then		
				SpawnCargo1()
			end
			if data.current.value == 'spawn_semi' then		
				SpawnSemi()
			end
			if data.current.value == 'spawn_jeep' then		
				SpawnJeep()
			end
			if data.current.value == 'spawn_buggy1' then		
				SpawnBuggy1()
			end
			if data.current.value == 'spawn_buggy2' then		
				SpawnBuggy2()
			end
			if data.current.value == 'spawn_apc' then		
				SpawnAPC()
			end
			if data.current.value == 'spawn_humvee' then		
				SpawnHumvee()
			end
			if data.current.value == 'spawn_halftrack' then		
				SpawnHalftrack()
			end
			if data.current.value == 'spawn_rhino' then		
				SpawnRhino()
			end
			if data.current.value == 'spawn_khanjali' then		
				SpawnKhanjali()
			end
			-- added on vehicle
			if data.current.value == 'spawn_abrams' then		
				SpawnAbrams()
			end
			-- added on vehicle	
			if data.current.value == 'spawn_abrams2' then		
				SpawnAbrams2()
			end
		end,
		function(data,menu)
			menu.Close()
			isMenuOpen = false
		end)
end

function SpawnCargo1()
		vehiclehash = GetHashKey('barracks')
        	RequestModel(vehiclehash)
		Citizen.Wait(400)
		if ESX.Game.IsSpawnPointClear(vector3(-1875.07, 3097.99, 32.81),1) then
			local spawnedVeh = CreateVehicle(vehiclehash, -1875.07, 3097.99, 32.81, 152.72, 0)
            SetVehicleDirtLevel(spawnedVeh, 0.0)
			Citizen.Wait(500)
			SetVehicleFuelLevel(spawnedVeh, 100.0)					
			--no need to set the color to black
			--SetVehicleCustomPrimaryColour(spawnedVeh, 0,0,0)
			Citizen.Wait(500)
		else	
			ParkingisFull()
		end
end
function SpawnSemi()
		vehiclehash = GetHashKey('barracks2')
        	RequestModel(vehiclehash)
		Citizen.Wait(400)
		if ESX.Game.IsSpawnPointClear(vector3(-1875.07, 3097.99, 32.81),1) then
			local spawnedVeh = CreateVehicle(vehiclehash, -1875.07, 3097.99, 32.81, 152.72, 0)
            SetVehicleDirtLevel(spawnedVeh, 0.0)
			Citizen.Wait(500)
			SetVehicleFuelLevel(spawnedVeh, 100.0)
			--no need to set the color to black
			--SetVehicleCustomPrimaryColour(spawnedVeh, 0,0,0)
			Citizen.Wait(500)
		else	
			ParkingisFull()
		end
end
function SpawnJeep()
		vehiclehash = GetHashKey('crusader')
        	RequestModel(vehiclehash)
		Citizen.Wait(400)
		if ESX.Game.IsSpawnPointClear(vector3(-1875.07, 3097.99, 32.81),1) then
			local spawnedVeh = CreateVehicle(vehiclehash, -1875.07, 3097.99, 32.81, 152.72, 0)
            SetVehicleDirtLevel(spawnedVeh, 0.0)
			Citizen.Wait(500)
			SetVehicleFuelLevel(spawnedVeh, 100.0)	
			--no need to set the color to black
			--SetVehicleCustomPrimaryColour(spawnedVeh, 0,0,0)
			Citizen.Wait(500)
		else	
			ParkingisFull()
		end
end
function SpawnBuggy1()
		vehiclehash = GetHashKey('dune')
        	RequestModel(vehiclehash)
		Citizen.Wait(400)
		if ESX.Game.IsSpawnPointClear(vector3(-1875.07, 3097.99, 32.81),1) then
			local spawnedVeh = CreateVehicle(vehiclehash, -1875.07, 3097.99, 32.81, 152.72, 0)
            SetVehicleDirtLevel(spawnedVeh, 0.0)
			Citizen.Wait(500)
			SetVehicleFuelLevel(spawnedVeh, 100.0)	
			--no need to set the color to black
			--SetVehicleCustomPrimaryColour(spawnedVeh, 0,0,0)
			Citizen.Wait(500)
		else	
			ParkingisFull()
		end
end
function SpawnBuggy2()
		vehiclehash = GetHashKey('dune3')
        	RequestModel(vehiclehash)
		Citizen.Wait(400)
		if ESX.Game.IsSpawnPointClear(vector3(-1881.575, 3098.787,32.81),1) then
			local spawnedVeh = CreateVehicle(vehiclehash, -1881.575, 3098.787, 32.81, 152.72, 0)
            SetVehicleDirtLevel(spawnedVeh, 0.0)
			Citizen.Wait(500)
			SetVehicleFuelLevel(spawnedVeh, 100.0)	
			--no need to set the color to black
			--SetVehicleCustomPrimaryColour(spawnedVeh, 0,0,0)
			Citizen.Wait(500)
		else	
			ParkingisFull()
		end
end
function SpawnAPC()
		vehiclehash = GetHashKey('apc')
        	RequestModel(vehiclehash)
		Citizen.Wait(400)
	if ESX.Game.IsSpawnPointClear(vector3(-1881.575, 3098.787,32.81),1) then
		local spawnedVeh = CreateVehicle(vehiclehash, -1881.575, 3098.787, 32.81, 152.72, 0)
            SetVehicleDirtLevel(spawnedVeh, 0.0)
			Citizen.Wait(500)
			SetVehicleFuelLevel(spawnedVeh, 100.0)	
			--no need to set the color to black
			--SetVehicleCustomPrimaryColour(spawnedVeh, 0,0,0)
			Citizen.Wait(500)
		else	
			ParkingisFull()
		end
end
function SpawnHumvee()
		vehiclehash = GetHashKey('uparmorhmvdes')
        	RequestModel(vehiclehash)
		Citizen.Wait(400)
	if ESX.Game.IsSpawnPointClear(vector3(-1881.575, 3098.787,32.81),1) then
		local spawnedVeh = CreateVehicle(vehiclehash, -1881.575, 3098.787, 32.81, 152.72, 0)
            SetVehicleDirtLevel(spawnedVeh, 0.0)
			Citizen.Wait(500)
			SetVehicleFuelLevel(spawnedVeh, 100.0)	
			--no need to set the color to black
			--SetVehicleCustomPrimaryColour(spawnedVeh, 0,0,0)
			Citizen.Wait(500)
		else	
			ParkingisFull()
		end
end
function SpawnHalftrack()
		vehiclehash = GetHashKey('halftrack')
        	RequestModel(vehiclehash)
		Citizen.Wait(400)
	if ESX.Game.IsSpawnPointClear(vector3(-1881.575, 3098.787,32.81),1) then
		local spawnedVeh = CreateVehicle(vehiclehash, -1881.575, 3098.787, 32.81, 152.72, 0)
            SetVehicleDirtLevel(spawnedVeh, 0.0)
			Citizen.Wait(500)
			SetVehicleFuelLevel(spawnedVeh, 100.0)	
			--no need to set the color to black
			--SetVehicleCustomPrimaryColour(spawnedVeh, 0,0,0)
			Citizen.Wait(500)
		else	
			ParkingisFull()
		end
end
function SpawnRhino()
		vehiclehash = GetHashKey('rhino')
        	RequestModel(vehiclehash)
		Citizen.Wait(400)
	if ESX.Game.IsSpawnPointClear(vector3(-1888.92, 3103.496, 32.81),1) then
		local spawnedVeh = CreateVehicle(vehiclehash, -1888.92, 3103.496, 32.81, 152.72, 0)
            SetVehicleDirtLevel(spawnedVeh, 0.0)
			Citizen.Wait(500)
			SetVehicleFuelLevel(spawnedVeh, 100.0)	
			--no need to set the color to black
			--SetVehicleCustomPrimaryColour(spawnedVeh, 0,0,0)
			Citizen.Wait(500)
		else	
			ParkingisFull()
		end
end
function SpawnKhanjali()
		vehiclehash = GetHashKey('khanjali')
        	RequestModel(vehiclehash)
		Citizen.Wait(400)
	if ESX.Game.IsSpawnPointClear(vector3(-1888.92, 3103.496, 32.81),1) then
		local spawnedVeh = CreateVehicle(vehiclehash, -1888.92, 3103.496, 32.81, 152.72, 0)
            SetVehicleDirtLevel(spawnedVeh, 0.0)
			Citizen.Wait(500)
			SetVehicleFuelLevel(spawnedVeh, 100.0)	
			--no need to set the color to black
			--SetVehicleCustomPrimaryColour(spawnedVeh, 0,0,0)
			Citizen.Wait(500)
		else	
			ParkingisFull()
		end
end
function SpawnAbrams()
		vehiclehash = GetHashKey('abrams')
        	RequestModel(vehiclehash)
		Citizen.Wait(400)
	if ESX.Game.IsSpawnPointClear(vector3(-1888.92, 3103.496, 32.81),1) then
		local spawnedVeh = CreateVehicle(vehiclehash, -1888.92, 3103.496, 32.81, 152.72, 0)
            SetVehicleDirtLevel(spawnedVeh, 0.0)
			Citizen.Wait(500)
			SetVehicleFuelLevel(spawnedVeh, 100.0)	
			--no need to set the color to black
			--SetVehicleCustomPrimaryColour(spawnedVeh, 0,0,0)
			Citizen.Wait(500)
		else	
			ParkingisFull()
		end
end
function SpawnAbrams2()
		vehiclehash = GetHashKey('abrams2')
        RequestModel(vehiclehash)
		Citizen.Wait(400)
		if ESX.Game.IsSpawnPointClear(vector3(-1888.92, 3103.496, 32.81),1) then
			local spawnedVeh = CreateVehicle(vehiclehash, -1888.92, 3103.496, 32.81, 152.72, 0)
            SetVehicleDirtLevel(spawnedVeh, 0.0)
			Citizen.Wait(500)
			SetVehicleFuelLevel(spawnedVeh, 100.0)	
			--no need to set the color to black
			--SetVehicleCustomPrimaryColour(spawnedVeh, 0,0,0)
			Finished = true
			Citizen.Wait(500)
		else	
			ParkingisFull()
		end
end
function ParkingisFull()
	ESX.ShowNotification('Spawn point(s) are occupied. Cannot give vehicle')
end


Citizen.CreateThread(function()
    local location = vector3(-1889.75, 3125.53, 32.81)
    while true do 
        Citizen.Wait(0)
		local ped = GetPlayerPed(-1)
		local playerCoords = GetEntityCoords(ped)
		local distance = #(playerCoords - location)
	
		if distance < 4.0 then
			ESX.Game.Utils.DrawText3D(location, "Press ~y~[H] ~w~for the motorpool menu", 4, 4)
		
				if IsControlJustReleased(0,74) and not isMenuOpen then	
					OpenMenu()
				end
		end		



	end
    
end)
