ESX = exports["es_extended"]:getSharedObject()

if Config.OxLibRadialMenu then
  lib.addRadialItem({
      {
        id = 'removevest',
        label = Translation[Config.Locale]['RemoveVestMenu'],
        icon = 'shield-halved',
        onSelect = function()
          --TriggerEvent("LionArmor:PlayAnimation")
          TriggerServerEvent("LionArmor:RemoveVest")
        end
      },
  })
end

RegisterNetEvent("LionArmor:UseVest")
AddEventHandler("LionArmor:UseVest", function(state)
  local ped = PlayerPedId()
  local lib = 'clothingtie'
  local anim = 'try_tie_neutral_a'
  ESX.Streaming.RequestAnimDict(lib, function()
    TaskPlayAnim(ped, lib, anim, 8.0, 1.0, -1, 49, 0, false, false, false)
    RemoveAnimDict(lib)
    Wait(1000)
    ClearPedTasks(ped)
  end)
  if state == "off" then
    TriggerEvent('skinchanger:change', 'bproof_1', 0)
  elseif state == "on" then
    TriggerEvent('skinchanger:change', 'bproof_1', Config.Skin)
  end
end)