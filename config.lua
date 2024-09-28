Config = {}
Translation = {}

Config.Locale = GetConvar('esx:locale', 'en')
Config.ItemName = "vest" --Item name in ox_inventory
Config.Notify = "ox_lib" --Provide your notification system. If it’s not ox lib, you’ll need to integrate it into the server.lua
Config.OxLibRadialMenu = true --True if you're using the oxlib radial menu and want a menu option to remove the bulletproof vest, otherwise false

Translation = {
    ['de'] = {
        ['VestUsed'] = 'Du hast eine Kugelsichere Weste angezogen',
        ['VestRemoved'] = 'Du hast deine Kugelsichere Weste ausgezogen',
        ['NoVest'] = 'Du hast keine Kugelsichere Weste an',
        ['RemoveVestMenu'] = 'Weste ausziehen',
        ['ItemNotFound'] = 'LionScripts:Das Item ist nicht im Inventar registriert'
    },

    ['en'] = {
        ['VestUsed'] = 'You have equipped a bulletproof vest',
        ['VestRemoved'] = 'You have taken off your bulletproof vest',
        ['NoVest'] = 'You are not wearing a bulletproof vest',
        ['RemoveVestMenu'] = 'Take off vest',
        ['ItemNotFound'] = 'LionScripts: The item is not registered in the inventory'
    }
}