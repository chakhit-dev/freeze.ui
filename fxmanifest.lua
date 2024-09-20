-- NC PROTECT+
client_scripts { '@nc_PROTECT+/exports/protected.lua', '@nc_PROTECT+/exports/cl.lua' }

fx_version 'bodacious'
game 'gta5'

author 'lnw freeze'
version '1.0.0'

client_script {
    'client.lua',
}

ui_page 'nui/index.html'

files {
    'nui/index.html',
    'nui/index.js',
    'nui/style.css',
    'nui/click.ogg',
    'nui/*.png'
}

lua54 'yes'