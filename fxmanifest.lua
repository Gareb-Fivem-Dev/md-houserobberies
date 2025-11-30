name "md-houserobberies v2"
author "Mustache Dom"
description "Steal Things From Houses"
fx_version 'cerulean'
game 'gta5'
version '2.9'

provide 'qb-interior' -- Allow other scripts to see this as qb-interior

shared_scripts {
    'config.lua',
    '@ox_lib/init.lua',
}

client_scripts {
   'client/interiors.lua',
   'client/main.lua',
   'client/Bridge.lua',
}
server_script {
'server/**.lua'
}

lua54 'yes'
