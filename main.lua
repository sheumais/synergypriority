SynergyPriority = SynergyPriority or {}

local SP = SynergyPriority

SP.name = "SynergyPriority"
SP.nameDisplay = "Synergy Priority"
SP.version = "1.0"
SP.debug = false

local ID = SP.ID
local ICON = SP.ICON
local NAME = SP.NAME
local PRIORITY = SP.PRIORITY
local ZONES = SP.ZONES

local apiversion = GetAPIVersion()

function SP.IsNewSynergy(synergyId, zoneId)
    for _, value in pairs(SP.sVA.data) do
        if value[ID] == synergyId then
            if value[ZONES] ~= nil and zoneId ~= nil then
                table.insert(value[ZONES], zoneId)
                if SP.debug then
                    d("[SP]: Adding new zone " .. zoneId .. " to synergy " .. value[NAME])
                end
                if #value[ZONES] > 3 then
                    value[ZONES] = nil
                    if SP.debug then
                        d("[SP]: Removing zone list for synergy " .. value[NAME] .. " because it is too generic to support zone identification")
                    end
                end
            end
            return false
        end
    end
    return true
end

function SP.OnSynergyAbilityChanged()
    local n = GetNumberOfAvailableSynergies()
    for i=1,n do
        local synergyName, icon, _, priority, abilityId, _ = GetSynergyInfoAtIndex(i)
        local zoneId = GetUnitWorldPosition("player")
        if SP.IsNewSynergy(abilityId, zoneId) then
            table.insert(SP.sVA.data, {
                [ID] = abilityId,
                [ICON] = icon,
                [NAME] = synergyName,
                [PRIORITY] = priority,
                [ZONES] = {zoneId}
            })
            if SP.debug then 
                d("[SP]: Found new synergy " .. synergyName .. " with abilityId " .. abilityId .. " and priority " .. priority)
            end
        end
    end
end

function SP.ApplyPrioritySettings()
    if apiversion >= 101048 then
        ClearAllSynergyPriorityOverrides()
    end

    for abilityId, priority in pairs(SP.sVC.priorities) do
        if apiversion >= 101048 then
            SetSynergyPriorityOverride(abilityId, priority)
        end
        if SP.debug == 1 then
            d("[SP]: Setting " .. abilityId .. " to " .. priority)
        end
    end
end

SP.defaultCharacterTable = {
    lastPresetChoice = "Default",
    priorities = SP.defaultSpec
}

SP.defaultGlobalTable = {
    data = SP.data,
}

function SP.OnAddOnLoaded(_, addonName)
    if addonName ~= SP.name then return end
    EVENT_MANAGER:UnregisterForEvent(SP.name, EVENT_ADD_ON_LOADED)

    SP.sVA = ZO_SavedVars:NewAccountWide("SynergyPrioritySavedVariables", 1, nil, SP.defaultGlobalTable, GetWorldName())
    SP.sVC = ZO_SavedVars:NewCharacterIdSettings("SynergyPrioritySavedVariables", 1, nil, SP.defaultCharacterTable, GetWorldName())

    if apiversion >= 101048 then
        EVENT_MANAGER:RegisterForEvent(SP.name, EVENT_SYNERGY_ABILITY_CHANGED, SP.OnSynergyAbilityChanged)
    end
    EVENT_MANAGER:RegisterForEvent(SP.name, EVENT_PLAYER_ACTIVATED, SP.ApplyPrioritySettings)
    SP.RegisterLAMPanel()
end

EVENT_MANAGER:RegisterForEvent(SP.name, EVENT_ADD_ON_LOADED, SP.OnAddOnLoaded)
