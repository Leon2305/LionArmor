fx_version 'cerulean'
game { 'gta5' }

lua54 'yes'
shared_scripts {
    'config.lua',
    '@ox_lib/init.lua'
}

client_scripts {
	--'@NativeUILua_Reloaded/src/NativeUIReloaded.lua',
	'client.lua'
}

server_scripts {
	--'@oxmysql/lib/MySQL.lua',
    'server.lua',
}