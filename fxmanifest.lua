fx_version 'cerulean'

game 'gta5'

lua54 'yes'

author 'Snag'

version '1.1.5'

description 'Weapon Meta\'s by Snag'

dependencies {
  '/server:7290',
}

escrow_ignore {
  'server/server.lua',
}

server_script {
  'server/server.lua',
}

files {
  'metas/vehicle_weapons/*.meta', 
  'metas/weaponcomponents/*.meta', 
  'metas/weapons/*.meta',
}

--  Vehicle weapon meta files
data_file 'WEAPONINFO_FILE_PATCH' 'metas/vehicle_weapons/*.meta'
--  Weapon component meta files.
--data_file 'WEAPONCOMPONENTSINFO_FILE' 'metas/weaponcomponents/*.meta'
-- Player weapon meta files.
data_file 'WEAPONINFO_FILE_PATCH' 'metas/weapons/*.meta'
