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
        [ID] = 26832, -- this is not 48052, thats the cooldown
        [ICON] = "/esoui/art/icons/ability_templar_sun_strike.dds",
        [NAME] = "Blessed Shards",
        [PRIORITY] = 8,
    },
    [1] = {
        [ID] = 95926,
        [ICON] = "/esoui/art/icons/ability_templar_light_strike.dds",
        [NAME] = "Holy Shards",
        [PRIORITY] = 8,
    },
    [2] = {
        [ID] = 85434,
        [ICON] = "/esoui/art/icons/ability_undaunted_004.dds",
        [NAME] = "Combustion",
        [PRIORITY] = 8,
    },
    [3] = {
        [ID] = 63512,
        [ICON] = "/esoui/art/icons/ability_undaunted_004b.dds",
        [NAME] = "Healing Combustion",
        [PRIORITY] = 7,
    },
    [4] = {
        [ID] = 43769,
        [ICON] = "/esoui/art/icons/ability_sorcerer_lightning_splash.dds",
        [NAME] = "Conduit",
        [PRIORITY] = 9,
    },
    [5] = {
        [ID] = 22270,
        [ICON] = "/esoui/art/icons/ability_templar_cleansing_ritual.dds",
        [NAME] = "Purify",
        [PRIORITY] = 7,
    },
    [6] = {
        [ID] = 85576,
        [ICON] = "/esoui/art/icons/ability_warden_007.dds",
        [NAME] = "Harvest",
        [PRIORITY] = 7,
    },
    [7] = {
        [ID] = 39424,
        [ICON] = "/esoui/art/icons/ability_undaunted_005.dds",
        [NAME] = "Bone Wall",
        [PRIORITY] = 7,
    },
    [8] = {
        [ID] = 42196,
        [ICON] = "/esoui/art/icons/ability_undaunted_005a.dds",
        [NAME] = "Spinal Surge",
        [PRIORITY] = 7,
    },
    [9] = {
        [ID] = 39519,
        [ICON] = "/esoui/art/icons/ability_undaunted_001.dds",
        [NAME] = "Blood Funnel",
        [PRIORITY] = 7,
    },
    [10] = {
        [ID] = 41965,
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
        [ID] = 41997,
        [ICON] = "/esoui/art/icons/ability_undaunted_003_a.dds",
        [NAME] = "Black Widow",
        [PRIORITY] = 9,
    },
    [13] = {
        [ID] = 42019,
        [ICON] = "/esoui/art/icons/ability_undaunted_003_b.png", -- API lies and says crafting_light_armor_standard_f_005.dds
        [NAME] = "Arachnophobia",
        [PRIORITY] = 9,
    },
    [14] = {
        [ID] = 41840,
        [ICON] = "/esoui/art/icons/ability_undaunted_002.dds",
        [NAME] = "Radiate",
        [PRIORITY] = 9,
    },
    [15] = {
        [ID] = 48085,
        [ICON] = "/esoui/art/icons/ability_sorcerer_storm_atronach.dds",
        [NAME] = "Charged Lightning",
        [PRIORITY] = 8,
    },
    [16] = {
        [ID] = 67717,
        [ICON] = "/esoui/art/icons/ability_dragonknight_006.dds",
        [NAME] = "Shackle",
        [PRIORITY] = 9,
    },
    [17] = {
        [ID] = 48040,
        [ICON] = "/esoui/art/icons/ability_dragonknight_010.dds",
        [NAME] = "Ignite",
        [PRIORITY] = 9,
    },
    [18] = {
        [ID] = 48938,
        [ICON] = "/esoui/art/icons/ability_templar_solar_prison.dds",
        [NAME] = "Gravity Crush",
        [PRIORITY] = 9,
    },
    [19] = {
        [ID] = 48939,
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
        [ID] = 25172,
        [ICON] = "/esoui/art/icons/ability_nightblade_018.dds",
        [NAME] = "Soul Leech",
        [PRIORITY] = 7,
    },
    [22] = {
        [ID] = 115567,
        [ICON] = "/esoui/art/icons/ability_necromancer_004.dds",
        [NAME] = "Grave Robber",
        [PRIORITY] = 9,
    },
    [23] = {
        [ID] = 118610,
        [ICON] = "/esoui/art/icons/ability_necromancer_010_b.dds",
        [NAME] = "Pure Agony",
        [PRIORITY] = 9,
    },
    [24] = {
        [ID] = 58813,
        [ICON] = "esoui/art/icons/ability_werewolf_005_b.dds",
        [NAME] = "Feeding Frenzy",
        [PRIORITY] = 8,
    },
    [25] = {
        [ID] = 141971,
        [ICON] = "esoui/art/icons/ability_u23_bloodball_chokeonit.dds",
        [NAME] = "Sanguine Burst",
        [PRIORITY] = 8,
    },
    [26] = {
        [ID] = 88892,
        [ICON] = "/esoui/art/icons/ability_warden_005_b.dds",
        [NAME] = "Icy Escape",
        [PRIORITY] = 8,
    },
    [27] = {
        [ID] = 167044, -- slightly wrong id, updated
        [ICON] = "esoui/art/icons/achievement_trial_cr_flavor_3.dds",
        [NAME] = "Gryphon's Reprisal",
        [PRIORITY] = 9,
    },
    [28] = {
        [ID] = 191080,
        [ICON] = "/esoui/art/icons/ability_arcanist_004.dds",
        [NAME] = "Runebreak",
        [PRIORITY] = 9,
    },
    [29] = {
        [ID] = 190646,
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

}

-- [SYNERGY_ID] = PRIORITY
-- Priority from 0-9 with zero being the highest

SP.defaultSpec = {
    [41965] = 5, -- Blood Feast
    [39519] = 6, -- Blood Funnel
    [48085] = 6, -- Charged Lightning
    [85434] = 7, -- Combustion
}

SP.majoSpec = {
    [41965] = 5, -- Blood Feast
    [43769] = 7, -- Conduit
    [39451] = 6, -- Spawn Broodling
    [41997] = 6, -- Black Widow
    [42019] = 6, -- Arachnophobia
    [41840] = 7, -- Radiate
    [67717] = 6, -- Shackle
    [48040] = 6, -- Ignite
    [48938] = 6, -- Gravity Crush
    [48939] = 8, -- Supernova
    [85434] = 7, -- Combustion
    [25172] = 6, -- Soul Leech
    [37729] = 9, -- Hidden Refresh
    [39519] = 9, -- Blood Funnel
    [48085] = 9, -- Charged Lightning
    [26832] = 9, -- Blessed Shards
    [95926] = 9, -- Holy Shards
    [63512] = 9, -- Healing Combustion
    [22270] = 9, -- Purify
    [85576] = 9, -- Harvest
    [39424] = 9, -- Bone Wall
    [42196] = 9, -- Spinal Surge
    [58813] = 9, -- Feeding Frenzy
    [115567] = 8, -- Grave Robber
    [118610] = 8, -- Pure Agony
    [141971] = 9, -- Sanguine Burst
    [167044] = 9, -- Gryphon's Reprisal
    [191080] = 7, -- Runebreak
}

SP.supportSpec = {
    [41965] = 5, -- Blood Feast
    [39519] = 6, -- Blood Funnel
    [48085] = 6, -- Charged Lightning
    [26832] = 7, -- Blessed Shards
    [95926] = 7, -- Holy Shards
    [85434] = 7, -- Combustion
    [63512] = 8, -- Healing Combustion
    [43769] = 9, -- Conduit
    [22270] = 7, -- Purify
    [85576] = 7, -- Harvest
    [39424] = 7, -- Bone Wall
    [42196] = 7, -- Spinal Surge
    [39451] = 9, -- Spawn Broodling
    [41997] = 9, -- Black Widow
    [42019] = 9, -- Arachnophobia
    [41840] = 9, -- Radiate
    [67717] = 9, -- Shackle
    [48040] = 9, -- Ignite
    [48938] = 9, -- Gravity Crush
    [48939] = 9, -- Supernova
    [37729] = 7, -- Hidden Refresh
    [25172] = 9, -- Soul Leech
    [58813] = 8, -- Feeding Frenzy
    [115567] = 9, -- Grave Robber
    [118610] = 9, -- Pure Agony
    [141971] = 9, -- Sanguine Burst
    [167044] = 9, -- Gryphon's Reprisal
    [191080] = 9, -- Runebreak
}
