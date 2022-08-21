 CreateThread( function()
   local version = GetResourceMetadata(GetCurrentResourceName(), 'version')
   SetConvarServerInfo("snag_weapon_metas", "V"..version)
   Citizen.Wait(5000)
   PerformHttpRequest('https://raw.githubusercontent.com/CyCoSnag/snag_weapon_metas/master/version.json', function(code, res, headers)
       if code == 200 then
           local response = json.decode(res)
           if response.version ~= version then
             print(([[^1-------------------------------------------------------
snag_weapon_metas has an update available! Version: %s
Visit https://github.com/CyCoSnag/snag_weapon_metas or
or https://snag.tebex.io/ for the latest update.
Changlog: %s
-------------------------------------------------------^0]]):format(response.version, response.changelog))
          end
      else
          print('snag_weapon_metas unable to check version')
      end
  end, 'GET')
end)