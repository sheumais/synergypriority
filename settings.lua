SynergyPriority = SynergyPriority or {}

local SP = SynergyPriority
local LAM = LibAddonMenu2

local panelData = {
    type = "panel",
    name = "Synergy Priority",
    displayName = "|cFFFFFFSynergy|r|cA2DE9FPriority|r",
    author = "TheMrPancake, M0R",
    version = SP.version,
    registerForRefresh = true,
    registerForDefaults = true,
}

local presets = {
    [1] = "Default",
    [2] = "Full Damage",
    [3] = "Support",
}

local preset_map = {
    [1] = SP.defaultSpec,
    [2] = SP.majoSpec,
    [3] = SP.supportSpec,
}

local preset_tooltips = {
    [1] = "The vanilla experience with three changes",
    [2] = "Prioritise damaging synergies (strongest first)",
    [3] = "Prioritise healing and sustain synergies",
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
    ZO_CombineNumericallyIndexedTables(combined, SP.data, SP.sVA.data)

    local sorted = {}
    for _, v in pairs(combined) do
        table.insert(sorted, v)
    end

    table.sort(sorted, function(a, b)
        return a[ID] < b[ID]
    end)

    for _, value in ipairs(sorted) do
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

        local synergy = zo_iconFormat(value[ICON], 16, 16) .. " " .. value[ID] .. " - " .. value[NAME] .. " (" .. value[PRIORITY] .. ")"
        if zones ~= nil then
            synergy = synergy .. " [" .. zones .. "]"
        end
        str = str .. synergy .. "\n"
    end

    return str
end

local optionsTable = {
    {
        type = "dropdown",
        name = "Default profiles",
        tooltip = "Select from a list of synergy priority presets based on role",
        warning = "Overrides existing choices. Select with care",
        choices = presets,
        default = presets[1],
        choicesTooltips = preset_tooltips,
        getFunc = function() return SP.sVC.lastPresetChoice end,
        setFunc = function(selected)
            for index, name in ipairs(presets) do
                if name == selected then
                    SP.sVC.lastPresetChoice = name
                    SP.sVC.priorities = preset_map[index]
                    SP.ApplyPrioritySettings()
                end
            end
        end,
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
                type = "button",
                name = "Reset Known Synergies",
                tooltip = "This will reset the known synergies to the default and cannot be undone.",
                isDangerous = true,
                func = function(value)
                    SP.ResetKnownSynergies()
                end,
            },
            {
                type = "description",
                text = function() return SP.GetFormattedSynergyList() or "Error loading synergy list" end,
            },
        }
    },
    {
        type = "editbox",
        name = "Priority Import/Export",
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
        default = preset_map[1],
    },
}

function SP.RegisterLAMPanel()
    LAM:RegisterAddonPanel(SP.name.."Settings", panelData)
    LAM:RegisterOptionControls(SP.name.."Settings", optionsTable)
end