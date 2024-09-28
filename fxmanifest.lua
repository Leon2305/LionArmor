fx_version 'cerulean'
game { 'gta5' }

author 'Leon'
version '1.0.0'

lua54 'yes'
shared_scripts {
    'config.lua',
    '@ox_lib/init.lua'
}

client_scripts {
	'client.lua'
}

server_scripts {
    'server.lua',
}
