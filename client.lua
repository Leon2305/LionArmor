ESX = exports["es_extended"]:getSharedObject()

if Config.OxLibRadialMenu then
  lib.addRadialItem({
      {
        id = 'removevest',
        label = Translation[Config.Locale]['RemoveVestMenu'],
        icon = 'shield-halved',
        onSelect = function()
          TriggerServerEvent("LionArmor:RemoveVest")
        end
      },
  })
end