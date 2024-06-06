fx_version 'adamant' lua54 'yes' game 'gta5'
ui_page "html/index.html"
files {
    "html/index.html",
    "html/script.js",
    "html/style.css",
    "html/assets/*.png",
    "html/VLADIMIR.TTF",
}
server_scripts {
    'server/*.lua',
    "@oxmysql/lib/MySQL.lua",
}
client_script '@Kubus_loader/c_loader.lua'
server_script '@Kubus_loader/s_loader.lua'
my_data 'client_files' { "client/main.lua" }