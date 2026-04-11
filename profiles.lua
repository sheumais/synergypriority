SynergyPriority = SynergyPriority or {}

local SP = SynergyPriority


function SP.IsBuiltinProfile(name)
    for _, name2 in ipairs(SP.defaultProfileNames) do
        if name == name2 then
            return true
        end
    end
    return false
end

function SP.GetCustomProfileNames()
    local names = {}
    for name, _ in pairs(SP.sVA.customProfiles) do
        table.insert(names, name)
    end
    table.sort(names)
    return names
end

function SP.SaveCustomProfile(profileName)
    if profileName == nil or profileName == "" then return false, "Profile name cannot be empty" end

    SP.sVA.customProfiles[profileName] = {}
    for k, v in pairs(SP.sVC.priorities) do
        SP.sVA.customProfiles[profileName][k] = v
    end
    SP.sVC.lastPresetChoice = profileName
    if SP.debug then
        d("[SP]: Saved custom profile '" .. profileName .. "'")
    end
    SP.RefreshProfileChoices()
    return true, nil
end

function SP.LoadCustomProfile(profileName)
    if SP.sVA.customProfiles[profileName] == nil then
        return false, "Profile '" .. profileName .. "' not found"
    end
    SP.sVC.priorities = {}
    for k, v in pairs(SP.sVA.customProfiles[profileName]) do
        SP.sVC.priorities[k] = v
    end
    SP.sVC.lastPresetChoice = profileName
    SP.ApplyPrioritySettings()
    if SP.debug then
        d("[SP]: Loaded custom profile '" .. profileName .. "'")
    end
    return true, nil
end

function SP.DeleteCustomProfile(profileName)
    if SP.sVA.customProfiles[profileName] == nil then
        return false, "Profile '" .. profileName .. "' not found"
    end
    SP.sVA.customProfiles[profileName] = nil
    if SP.sVC.lastPresetChoice == profileName then
        SP.sVC.lastPresetChoice = nil
    end
    if SP.debug then
        d("[SP]: Deleted custom profile '" .. profileName .. "'")
    end
    SP.RefreshProfileChoices()
    return true, nil
end