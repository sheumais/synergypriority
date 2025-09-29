SynergyPriority = SynergyPriority or {}

local SP = SynergyPriority
local LAM = LibAddonMenu2

local panelData = {
    type = "panel",
    name = SP.nameDisplay,
    displayName = "|cFFFFFFSynergy|cA2DE9FPriority|r",
    authors = "TheMrPancake",
    version = SP.version,
    registerForRefresh = true,
    registerForDefaults = true,
}

local presets = {
    [1] = "Default",
    [2] = "DPS",
    [3] = "Full Damage",
    [4] = "Support",
}

local preset_map = {
    [1] = SP.defaultSpec,
    [2] = SP.damageSpec,
    [3] = SP.majoSpec,
    [4] = SP.supportSpec,
}

local preset_tooltips = {
    [1] = "The vanilla experience with three changes.",
    [2] = "Prioritise all skill and set synergies equally.",
    [3] = "Prioritise damaging synergies (strongest first) over any healing or sustain synergies. Use with care!",
    [4] = "Prioritise healing and sustain synergies.",
}

local ID = SP.ID
local ICON = SP.ICON
local NAME = SP.NAME
local PRIORITY = SP.PRIORITY
local ZONES = SP.ZONES

local optionsTable = {
    {
        type = "description",
        title = nil,
        text = "Synergy priority is a scale from 0-9 where zero is the highest priority",
    },
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
                text = "This addon comes with a list of default player synergies and learns about additional synergies as you explore Tamriel. Below you can find the list of all of the synergies that the addon knows about, in the format `ID - Name (Priority) [Zone, names]`",
            },
            {
                type = "description",
                text = function() 
                    local string = "" 
                    for _, value in pairs(SP.sVA.data) do 
                        local zones = nil
                        if value[ZONES] ~= nil then 
                            for _, value in pairs(value[ZONES]) do
                                zones = zones .. GetZoneNameById(value) .. ", "
                            end
                        end
                        local synergy = value .. value[ID] .. " - " .. value[NAME] .. "(" .. value[PRIORITY] .. ")"
                        if zones then synergy = synergy .. "[" .. zones .. "]" end
                        string = string .. synergy .. "\n"
                    end
                    return string 
                end,
            }
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
            for k, v in string.gmatch(text, "%[(%d+)%]%s*=%s*(%d+)") do
                tbl[tonumber(k)] = tonumber(v)
            end
            SP.sVC.priorities = tbl
        end,
        maxChars = 3000,
        default = preset_map[1],
    },
}

function SP.RegisterLAMPanel()
    LAM:RegisterAddonPanel(SP.name, panelData)
    LAM:RegisterOptionControls(SP.name, optionsTable)
end