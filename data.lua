SynergyPriority = SynergyPriority or {}

local SP = SynergyPriority

SP.ID = 0
SP.ICON = 1
SP.NAME = 2
SP.PRIORITY = 3
SP.ZONES = 4

local ID = SP.ID
local ICON = SP.ICON
local NAME = SP.NAME
local PRIORITY = SP.PRIORITY
local ZONES = SP.ZONES

SP.data = {
    [0] = {
        [ID] = 26832,
        [ICON] = "/esoui/art/icons/ability_templar_sun_strike.dds",
        [NAME] = "Blessed Shards",
        [PRIORITY] = 8,
    },
    [1] = {
        [ID] = 95922,
        [ICON] = "/esoui/art/icons/ability_templar_light_strike.dds",
        [NAME] = "Holy Shards",
        [PRIORITY] = 8,
    },
    [2] = {
        [ID] = 39301,
        [ICON] = "/esoui/art/icons/ability_undaunted_004.dds",
        [NAME] = "Combustion",
        [PRIORITY] = 8,
    },
    [3] = {
        [ID] = 63507,
        [ICON] = "/esoui/art/icons/ability_undaunted_004b.dds",
        [NAME] = "Healing Combustion",
        [PRIORITY] = 7,
    },
    [4] = {
        [ID] = 23196,
        [ICON] = "/esoui/art/icons/ability_sorcerer_lightning_splash.dds",
        [NAME] = "Conduit",
        [PRIORITY] = 9,
    },
    [5] = {
        [ID] = 22269,
        [ICON] = "/esoui/art/icons/ability_templar_cleansing_ritual.dds",
        [NAME] = "Purify",
        [PRIORITY] = 7,
    },
    [6] = {
        [ID] = 85572,
        [ICON] = "/esoui/art/icons/ability_warden_007.dds",
        [NAME] = "Harvest",
        [PRIORITY] = 7,
    },
    [7] = {
        [ID] = 39377,
        [ICON] = "/esoui/art/icons/ability_undaunted_005.dds",
        [NAME] = "Bone Wall",
        [PRIORITY] = 7,
    },
    [8] = {
        [ID] = 42194,
        [ICON] = "/esoui/art/icons/ability_undaunted_005a.dds",
        [NAME] = "Spinal Surge",
        [PRIORITY] = 7,
    },
    [9] = {
        [ID] = 39500,
        [ICON] = "/esoui/art/icons/ability_undaunted_001.dds",
        [NAME] = "Blood Funnel",
        [PRIORITY] = 7,
    },
    [10] = {
        [ID] = 41963,
        [ICON] = "/esoui/art/icons/ability_undaunted_001_a.dds",
        [NAME] = "Blood Feast",
        [PRIORITY] = 7,
    },
    [11] = {
        [ID] = 39451,
        [ICON] = "/esoui/art/icons/ability_undaunted_003.dds",
        [NAME] = "Spawn Broodling",
        [PRIORITY] = 9,
    },
    [12] = {
        [ID] = 41994,
        [ICON] = "/esoui/art/icons/ability_undaunted_003_a.dds",
        [NAME] = "Black Widow",
        [PRIORITY] = 9,
    },
    [13] = {
        [ID] = 42016,
        [ICON] = "/esoui/art/icons/ability_undaunted_003_b.dds", -- API lies and says crafting_light_armor_standard_f_005.dds
        [NAME] = "Arachnophobia",
        [PRIORITY] = 9,
    },
    [14] = {
        [ID] = 41838,
        [ICON] = "/esoui/art/icons/ability_undaunted_002.dds",
        [NAME] = "Radiate",
        [PRIORITY] = 9,
    },
    [15] = {
        [ID] = 48076,
        [ICON] = "/esoui/art/icons/ability_sorcerer_storm_atronach.dds",
        [NAME] = "Charged Lightning",
        [PRIORITY] = 8,
    },
    [16] = {
        [ID] = 32910,
        [ICON] = "/esoui/art/icons/ability_dragonknight_006.dds",
        [NAME] = "Shackle",
        [PRIORITY] = 9,
    },
    [17] = {
        [ID] = 32974,
        [ICON] = "/esoui/art/icons/ability_dragonknight_010.dds",
        [NAME] = "Ignite",
        [PRIORITY] = 9,
    },
    [18] = {
        [ID] = 31603,
        [ICON] = "/esoui/art/icons/ability_templar_solar_prison.dds",
        [NAME] = "Gravity Crush",
        [PRIORITY] = 9,
    },
    [19] = {
        [ID] = 31538,
        [ICON] = "/esoui/art/icons/ability_templar_nova.dds",
        [NAME] = "Supernova",
        [PRIORITY] = 9,
    },
    [20] = {
        [ID] = 37729,
        [ICON] = "/esoui/art/icons/ability_nightblade_015.dds",
        [NAME] = "Hidden Refresh",
        [PRIORITY] = 7,
    },
    [21] = {
        [ID] = 25170,
        [ICON] = "/esoui/art/icons/ability_nightblade_018.dds",
        [NAME] = "Soul Leech",
        [PRIORITY] = 7,
    },
    [22] = {
        [ID] = 115548,
        [ICON] = "/esoui/art/icons/ability_necromancer_004.dds",
        [NAME] = "Grave Robber",
        [PRIORITY] = 9,
    },
    [23] = {
        [ID] = 118604,
        [ICON] = "/esoui/art/icons/ability_necromancer_010_b.dds",
        [NAME] = "Pure Agony",
        [PRIORITY] = 9,
    },
    [24] = {
        [ID] = 58775,
        [ICON] = "esoui/art/icons/ability_werewolf_005_b.dds",
        [NAME] = "Feeding Frenzy",
        [PRIORITY] = 8,
    },
    [25] = {
        [ID] = 141920,
        [ICON] = "esoui/art/icons/ability_u23_bloodball_chokeonit.dds",
        [NAME] = "Sanguine Burst",
        [PRIORITY] = 8,
    },
    [26] = {
        [ID] = 88884,
        [ICON] = "/esoui/art/icons/ability_warden_005_b.dds",
        [NAME] = "Icy Escape",
        [PRIORITY] = 8,
    },
    [27] = {
        [ID] = 167044,
        [ICON] = "esoui/art/icons/achievement_trial_cr_flavor_3.dds",
        [NAME] = "Gryphon's Reprisal",
        [PRIORITY] = 9,
    },
    [28] = {
        [ID] = 191078,
        [ICON] = "/esoui/art/icons/ability_arcanist_004.dds",
        [NAME] = "Runebreak",
        [PRIORITY] = 9,
    },
    [29] = {
        [ID] = 190401,
        [ICON] = "/esoui/art/icons/ability_arcanist_016_b.dds",
        [NAME] = "Passage",
        [PRIORITY] = 0,
    },
    [30] = {
        [ID] = 142712,
        [ICON] = "/esoui/art/icons/achievement_u26_skyrim_werewolfdevour100.dds",
        [NAME] = "Heed the Call",
        [PRIORITY] = 8,
    },
    [31] = {
        [ID] = 241232,
        [ICON] = "/esoui/art/icons/ability_healer_018.dds",
        [NAME] = "Convergence Release",
        [PRIORITY] = 9,
    },
    [32] = 
    {
        [ID] = 111437,
        [ICON] = "/esoui/art/icons/ability_warden_018_c.dds",
        [NAME] = "Shield of Ursus",
        [PRIORITY] = 7,
    },
    [33] = 
    {
        [ID] = 33152,
        [ICON] = "/esoui/art/icons/ability_u26_vampire_synergy_feed.dds",
        [NAME] = "Feed",
        [PRIORITY] = 0,
    },
    [34] = 
    {
        [ID] = 76325,
        [ICON] = "/esoui/art/icons/achievement_darkbrotherhood_003.dds",
        [NAME] = "Blade of Woe",
        [PRIORITY] = 0,
    },
}

-- [SYNERGY_ID] = PRIORITY
-- Priority from 0-9 with zero being the highest

SP.defaultSpec = {
    [41963] = 5, -- Blood Feast
    [39500] = 6, -- Blood Funnel
    [48076] = 6, -- Charged Lightning
    [39301] = 7, -- Combustion
}

SP.majoSpec = {
    [41963] = 5, -- Blood Feast
    [23196] = 7, -- Conduit
    [39451] = 6, -- Spawn Broodling
    [41994] = 6, -- Black Widow
    [42016] = 6, -- Arachnophobia
    [41838] = 7, -- Radiate
    [32910] = 6, -- Shackle
    [32974] = 6, -- Ignite
    [31603] = 6, -- Gravity Crush
    [31538] = 8, -- Supernova
    [39301] = 7, -- Combustion
    [25170] = 6, -- Soul Leech
    [37729] = 9, -- Hidden Refresh
    [39500] = 6, -- Blood Funnel
    [48076] = 9, -- Charged Lightning
    [26832] = 9, -- Blessed Shards
    [95922] = 9, -- Holy Shards
    [63507] = 9, -- Healing Combustion
    [22269] = 9, -- Purify
    [85572] = 9, -- Harvest
    [39377] = 9, -- Bone Wall
    [42194] = 9, -- Spinal Surge
    [58775] = 9, -- Feeding Frenzy
    [115548] = 8, -- Grave Robber
    [118604] = 8, -- Pure Agony
    [141920] = 9, -- Sanguine Burst
    [167044] = 9, -- Gryphon's Reprisal
    [191078] = 7, -- Runebreak
}

SP.supportSpec = {
    [41963] = 5, -- Blood Feast
    [39500] = 6, -- Blood Funnel
    [48076] = 6, -- Charged Lightning
    [26832] = 7, -- Blessed Shards
    [95922] = 7, -- Holy Shards
    [39301] = 7, -- Combustion
    [63507] = 8, -- Healing Combustion
    [23196] = 9, -- Conduit
    [22269] = 7, -- Purify
    [85572] = 7, -- Harvest
    [39377] = 7, -- Bone Wall
    [42194] = 7, -- Spinal Surge
    [39451] = 9, -- Spawn Broodling
    [41994] = 9, -- Black Widow
    [42016] = 9, -- Arachnophobia
    [41838] = 9, -- Radiate
    [32910] = 9, -- Shackle
    [32974] = 9, -- Ignite
    [31603] = 9, -- Gravity Crush
    [31538] = 9, -- Supernova
    [37729] = 7, -- Hidden Refresh
    [25170] = 9, -- Soul Leech
    [58775] = 8, -- Feeding Frenzy
    [115548] = 9, -- Grave Robber
    [118604] = 9, -- Pure Agony
    [141920] = 9, -- Sanguine Burst
    [167044] = 9, -- Gryphon's Reprisal
    [191078] = 9, -- Runebreak
}