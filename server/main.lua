ESX = exports['es_extended']:getSharedObject()


RegisterServerEvent("verexo:server:openbadge", function(type)

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local PlayerPed = GetPlayerPed(_source)
    local PlayerCoords = GetEntityCoords(PlayerPed)
    local gradename = nil
    local job = xPlayer.getJob()
    local jobNamw = job.name

 

    if xPlayer then
        
        if job then
            local grade = job.grade

            local result = MySQL.Sync.fetchAll("SELECT label FROM job_grades WHERE job_name = @job_name AND grade = @grade", {
                ['@job_name'] = job.name,
                ['@grade'] = grade
            })

            if result and result[1] then
                local gradeLabel = result[1].label
                gradename = gradeLabel
            end
        end
    end
    local query = "SELECT * FROM `users` WHERE `identifier` = @identifier"
    local params = {["@identifier"] = xPlayer.identifier}

    local user = MySQL.Sync.fetchAll(query, params)[1] or false
    

    if user then
        
        if user.badge and user.badge ~= "" and user.badge ~= "-" then
            local firstname = user.firstname or "Nieznane"
            local lastname = user.lastname or "Nieznane"
            local badge = user.badge
            TriggerClientEvent("verexo:client:openbadge", -1, _source, badge, firstname, lastname, gradename, jobNamw, type)
        end
    end
end)
