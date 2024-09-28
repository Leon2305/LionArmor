ESX = exports["es_extended"]:getSharedObject()

AddEventHandler('onServerResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    local Item = exports.ox_inventory:Items(Config.ItemName)
    if Item == null then
        print(Translation[Config.Locale]['ItemNotFound'])
    end
end)

AddEventHandler('ox_inventory:usedItem', function(playerId, name, slotId, metadata)
    if name == Config.ItemName then
        local ped = GetPlayerPed(playerId)
        SetPedArmour(ped, metadata.durability)
        if GetResourceState("ox_lib") ~= 'missing' then
            TriggerClientEvent('ox_lib:notify', playerId, {
                id = 'LionArmor',
                title = 'System',
                description = Translation[Config.Locale]['VestUsed'],
                showDuration = true,
                position = 'top-right',
                type = 'success',
                iconAnimation = 'bounce'
            })
        else
            --integrate own notify system
        end
    end
end)

RegisterServerEvent("LionArmor:RemoveVest")
AddEventHandler("LionArmor:RemoveVest", function()
    local ped = GetPlayerPed(source)
    if GetPedArmour(ped) > 0 then
        SetPedArmour(ped, 0)
        metadata = {
            durability = GetPedArmour(ped)
        }
        exports.ox_inventory:AddItem(source, Config.ItemName, 1, metadata)
        if GetResourceState("ox_lib") ~= 'missing' or Config.Notify ~= "ox_lib" then
            TriggerClientEvent('ox_lib:notify', source, {
                id = 'armour',
                title = 'System',
                description = Translation[Config.Locale]['VestRemoved'],
                showDuration = true,
                position = 'top-right',
                type = 'success',
                iconAnimation = 'bounce'
            })
        else
            --integrate own notify system
        end
    else
        if GetResourceState("ox_lib") ~= 'missing' or Config.Notify ~= "ox_lib" then
            TriggerClientEvent('ox_lib:notify', source, {
                id = 'armour',
                title = 'System',
                description = Translation[Config.Locale]['NoVest'],
                showDuration = true,
                position = 'top-right',
                type = 'error',
                iconAnimation = 'bounce'
            })
        else
            --integrate own notify system
        end
    end
end)