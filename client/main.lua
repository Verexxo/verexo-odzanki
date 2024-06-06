ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job) 
    ESX.PlayerData.job = job 
end)

	local badge = receivedBadge
    local firstname = receivedFirstname
    local lastname = receivedLastname
	local grade_name = 0

RegisterNetEvent("verexo:send")
AddEventHandler("verexo:send", function(receivedBadge, receivedFirstname, receivedLastname, gname)
   
    badge = receivedBadge
    firstname = receivedFirstname
    lastname = receivedLastname
	grade_name = gname

   

end)


RegisterNUICallback("exit", function(data)
    
    SendNUIMessage({
        type = 'pd',
		pdopen = false
    })
	SendNUIMessage({
        type = 'ems',
		emsopen = false
    })
	SendNUIMessage({
        type = 'lsc',
		lscopen = false
    })
	SendNUIMessage({
        type = 'sasd',
		sasdopen = false
    })
	SendNUIMessage({
        type = 'lsc2',
		sasdopen = false
    })
end)



RegisterNetEvent("verexo:openbadge")
AddEventHandler("verexo:openbadge", function(type)
	Citizen.CreateThread(function()
		local plateModel = `prop_fib_badge`
		local anim = {dict = "missfbi_s4mop", name = "swipe_card"}
		while not HasModelLoaded(plateModel) do
			RequestModel(plateModel)
			Citizen.Wait(5)
		end
		while not HasAnimDictLoaded(anim.dict) do
			RequestAnimDict(anim.dict)
			Citizen.Wait(5)
		end
		local playerPed = PlayerPedId()
		local plyCoords = GetOffsetFromEntityInWorldCoords(GetEntityCoords(playerPed), 0.0, 0.0, -5.0)
		local plate = CreateObject(plateModel, plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
		Citizen.Wait(1000)
		local netId = ObjToNet(plate)
		SetNetworkIdExistsOnAllMachines(netid, true)
		SetNetworkIdCanMigrate(netid, false)
		TaskPlayAnim(playerPed, anim.dict, anim.name, 1.0, 1.0, -1, 50, 0, 0, 0, 0)
		Citizen.Wait(800)
		AttachEntityToEntity(plate, playerPed, GetPedBoneIndex(playerPed, 28422), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1, 1, 0, 1, 0, 1)
		Citizen.Wait(3000)
		ClearPedSecondaryTask(playerPed)
		DetachEntity(plate, 1, 1)
		DeleteEntity(plate)
	end)
	Citizen.Wait(2500)
	ClearPedTasks(ped)
	TriggerServerEvent("verexo:server:openbadge", type)
end)

RegisterNetEvent("verexo:client:openbadge")
AddEventHandler("verexo:client:openbadge", function(id, badge, firstname, lastname, grade_name, playerJob, type)
	local myId = PlayerId()
  	local pid = GetPlayerFromServerId(id)
	

	if pid == myId then
		SendNUIMessage({
			type = type,
			pdopen = true,
			badge = badge,
			firstname = firstname,
			lastname = lastname,
			gname = grade_name	
		})
	elseif #(GetEntityCoords(PlayerPedId()) - GetEntityCoords(GetPlayerPed(pid))) < 7.5 and NetworkIsPlayerActive(pid) then
		SendNUIMessage({
			type = type,
			pdopen = true,
			badge = badge,
			firstname = firstname,
			lastname = lastname,
			gname = grade_name
					
		})	
	end
end)


