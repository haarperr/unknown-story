RegisterServerEvent('updateJob')
AddEventHandler('updateJob', function(jobname, grade)
  TriggerEvent('esx:getPlayerFromId', source, function(xPlayer)
        xPlayer:setJob(jobname, grade)
  end)
  TriggerEvent('esx_garagejob:requestPlayerData', 'jobChanged')
end)
