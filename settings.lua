SynergyPriority = SynergyPriority or {}

local SP = SynergyPriority
local LAM = LibAddonMenu2

local panelData = {
    type = "panel",
    name = "Synergy Priority",
    displayName = "|cFFFFFFSynergy|r|c9ACD32Priority|r",
    author = "TheMrPancake, M0R",
    version = SP.version,
    registerForRefresh = true,
    registerForDefaults = true,
}

local ID = SP.ID
local ICON = SP.ICON
local NAME = SP.NAME
local PRIORITY = SP.PRIORITY
local ZONES = SP.ZONES

function SP.GetFormattedSynergyList()
    if not SP.sVA then return nil end
    local str = ""
    local combined = {}

    local baseIds = {}
    for _, v in pairs(SP.data) do
        baseIds[v[ID]] = true
        table.insert(combined, v)
    end

    for i = #SP.sVA.data, 1, -1 do
        local v = SP.sVA.data[i]
        if baseIds[v[ID]] then
            table.remove(SP.sVA.data, i)
        else
            table.insert(combined, v)
            baseIds[v[ID]] = true
        end
    end

    if SP.sVA.showAllHardcodedSynergies then
        for _, i in ipairs(SP.debug_data) do
            if not baseIds[i] then
                if GetAbilityIcon(i) ~= "/esoui/art/icons/ability_mage_065.dds" then
                    table.insert(combined, {[ID] = i, [PRIORITY] = -1})
                end
            end
        end
    end

    table.sort(combined, function(a, b)
        return a[ID] < b[ID]
    end)

    for _, value in ipairs(combined) do
        local zones = nil
        if value[ZONES] ~= nil then 
            for _, zoneId in pairs(value[ZONES]) do
                local zoneName = GetZoneNameById(zoneId)
                if zones == nil then
                    zones = zoneName
                else
                    zones = zones .. ", " .. zoneName
                end
            end
        end

        local synergy = zo_iconFormat(GetAbilityIcon(value[ID]), 16, 16)
            .. " " .. value[ID]
            .. " - " .. zo_strformat(SI_ABILITY_NAME, GetAbilityName(value[ID]))
            
        if value[PRIORITY] ~= -1 then 
            synergy = synergy .. " (" .. value[PRIORITY] .. ")"
        end

        if zones ~= nil then
            synergy = synergy .. " [" .. zones .. "]"
        end
        str = str .. synergy .. "\n"
    end

    return str
end

function SP.GetOrderedSynergyList()
    if not SP.sVA then return nil end
    local str = ""
    local combined = {}
    ZO_CombineNumericallyIndexedTables(combined, SP.data, SP.sVA.data)
    local sorted = {}
    for _, v in pairs(combined) do
        table.insert(sorted, v)
    end
    local defaultMap = {}
    for _, value in ipairs(combined) do
        defaultMap[value[ID]] = value[PRIORITY]
    end
    table.sort(sorted, function(a, b)
        return (SP.sVC.priorities[a[ID]] or a[PRIORITY]) < (SP.sVC.priorities[b[ID]] or b[PRIORITY])
    end)
    for _, value in ipairs(sorted) do
        if SP.sVC.priorities[value[ID]] ~= nil then
            local currentPrio = SP.sVC.priorities[value[ID]]
            local zones = nil
            if value[ZONES] ~= nil then
                for _, zoneId in pairs(value[ZONES]) do
                    local zoneName = GetZoneNameById(zoneId)
                    if zones == nil then
                        zones = zoneName
                    else
                        zones = zones .. ", " .. zoneName
                    end
                end
            end
            local synergy = zo_iconFormat(value[ICON], 16, 16) .. " " .. value[ID] .. " - " .. zo_strformat(SI_ABILITY_NAME, GetAbilityName(value[ID])) .. " (" .. currentPrio .. ")"
            if defaultMap[value[ID]] ~= currentPrio then
                synergy = synergy .. " |cff0000(" .. (defaultMap[value[ID]] or "??") .. ")|r"
            end
            if zones ~= nil then
                synergy = synergy .. " [" .. zones .. "]"
            end
            str = str .. synergy .. "\n"
        end
    end
    return str
end

SP.profileChoices = {}

function SP.RefreshProfileChoices()
    local names = SP.GetCustomProfileNames()
    for i = #SP.profileChoices, 1, -1 do
        SP.profileChoices[i] = nil
    end
    for _, name in ipairs(names) do
        table.insert(SP.profileChoices, name)
    end
    if SynergyPriority_SelectProfile then SynergyPriority_SelectProfile:UpdateChoices(SP.profileChoices) end
end

SP.manualSynergyPreviewText = ""
SP.manualSynergyIDText = ""
SP.manualSynergyPriorityText = ""
SP.newCustomProfileName = ""

local optionsTable = {
    {
        type = "dropdown",
        name = "Active Profile",
        tooltip = "Select a profile to apply its priority settings",
        choices = SP.profileChoices,
        getFunc = function()
            SP.RefreshProfileChoices()
            return SP.sVC and SP.sVC.lastPresetChoice or ""
        end,
        setFunc = function(selected)
            if selected == nil or selected == "" then return end
            local ok, err = SP.LoadCustomProfile(selected)
            if err then
                d("[SP]: " .. (err or "Unknown error in Select Active Profile"))
            end
        end,
        width = "full",
        reference = "SynergyPriority_SelectProfile",
    },
    {
        type = "submenu",
        name = "Manage Profiles",
        controls = {
            {
                type = "editbox",
                name = "New Profile Name",
                tooltip = "Enter a name for the new profile, then click Save",
                getFunc = function() return SP.newCustomProfileName end,
                setFunc = function(value) SP.newCustomProfileName = value end,
                maxChars = 32,
                width = "full",
                reference = "SynergyPriority_NewProfileNameBox",
            },
            {
                type = "button",
                name = "Save Current as Profile",
                tooltip = "Saves your current priority settings as a named custom profile",
                func = function()
                    local name = SP.newCustomProfileName
                    local ok, err = SP.SaveCustomProfile(name)
                    if err then
                        d("[SP]: " .. (err or "Unknown error in Save Current Profile"))
                    end
                end,
            },
            {
                type = "button",
                name = "Delete Active Profile",
                tooltip = "Permanently deletes the active profile. Built-in profiles cannot be deleted.",
                isDangerous = true,
                disabled = function()
                    return SP.IsBuiltinProfile(SP.sVC.lastPresetChoice)
                end,
                func = function()
                    local name = SP.sVC.lastPresetChoice
                    local ok, err = SP.DeleteCustomProfile(name)
                    if err then
                        d("[SP]: " .. (err or "Unknown error in Delete Active Profile"))
                    end
                end,
            },
        }
    },
    {
        type = "submenu",
        name = "Synergy List",
        controls = {
            {
                type = "description",
                text = "This addon comes with a list of default player synergies and learns about additional synergies as you explore Tamriel.",
            },
            {
                type = "description",
                title = nil,
                text = "Synergy priority is a scale from 0-9 where zero is the highest priority. Below you can find the list of all of the synergies that the addon knows about, in the format:\nID - Name (Priority) [Zone, names]",
            },
            {
                type = "submenu",
                name = "Current Priority",
                controls = {
                    {
                        type = "description",
                        title = nil,
                        text = "The list of current ordered priorities. Format is ID - Name (Priority) |cff0000(Default Priority)|r ([Zone, names])",
                    },
                    {
                        type = "description",
                        text = function() return SP.GetOrderedSynergyList() or "Error loading synergy list" end,
                    },
                }
            },
            {
                type = "description",
                text = function() return SP.GetFormattedSynergyList() or "Error loading synergy list" end,
            },
            {
                type = "button",
                name = "Toggle all synergies",
                tooltip = "Allows viewing all hardcoded synergies with unknown priority.",
                func = function()
                    SP.sVA.showAllHardcodedSynergies = not SP.sVA.showAllHardcodedSynergies
                end,
            },
        }
    },
    {
        type = "editbox",
        name = "Priority Import/Export",
        tooltip = "Copy this string to share your current priorities, or paste one here to import it",
        getFunc = function()
            local t = {}
            for k, v in pairs(SP.sVC.priorities) do
                table.insert(t, string.format("[%d] = %d", k, v))
            end
            return table.concat(t, ", ")
        end,
        setFunc = function(text)
            local tbl = {}
            for k, v in string.gmatch(text, "%[(%d+)%]%s*=%s*(%d+)") do -- does this regex need to change to account for negative or nil priority values?
                tbl[tonumber(k)] = tonumber(v)
            end
            SP.sVC.priorities = tbl
            SP.ApplyPrioritySettings()
        end,
        maxChars = 3000,
        width = "full",
        isMultiline = true,
        isExtraWide = true,
    },
    {
        type = "editbox",
        name = "Synergy ID",
        tooltip = "Enter the ability ID of the synergy to override",
        getFunc = function() return SP.manualSynergyIDText or "" end,
        setFunc = function(value)
            SP.manualSynergyIDText = value
            local id = tonumber(value)
            if id then
                local icon = GetAbilityIcon(id)
                local name = GetAbilityName(id)
                if icon and icon ~= "" and name and name ~= "" then
                    SP.manualSynergyPreviewText = zo_iconFormat(icon, 16, 16) .. " " .. zo_strformat(SI_ABILITY_NAME, name)
                end
            else
                SP.manualSynergyPreviewText = ""
            end
        end,
        maxChars = 10,
        reference = "SynergyPriority_ManualSynergyID",
    },
    {
        type = "editbox",
        name = "Priority",
        tooltip = "Enter the priority override value (0 = highest)",
        getFunc = function() return SP.manualSynergyPriorityText or "" end,
        setFunc = function(value) SP.manualSynergyPriorityText = value end,
        maxChars = 2,
        reference = "SynergyPriority_ManualPriority",
    },
    {
        type = "description",
        title = nil,
        width = "half",
        text = function() return SP.manualSynergyPreviewText or "" end,
    },
    {
        type = "button",
        name = "Add Override",
        tooltip = "Adds the priority as an override to the Synergy",
        func = function()
            local id = tonumber(SP.manualSynergyIDText)
            local prio = tonumber(SP.manualSynergyPriorityText)
            if not id then return end
            if not prio then return end
            if prio == -1 then
                SP.sVC.priorities[id] = nil
            elseif prio >= 0 then
                SP.sVC.priorities[id] = prio
            end
            SP.ApplyPrioritySettings()
            SP.manualSynergyIDText = ""
            SP.manualSynergyPriorityText = ""
            SP.manualSynergyPreviewText = ""
        end,
        width = "half",
    },
}

function SP.RegisterLAMPanel()
    LAM:RegisterAddonPanel(SP.name.."Settings", panelData)
    LAM:RegisterOptionControls(SP.name.."Settings", optionsTable)
    SP.RefreshProfileChoices()
end