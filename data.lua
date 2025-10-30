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

local SYNERGY_BLESSED_SHARDS = 26832
local SYNERGY_HOLY_SHARDS = 95922
local SYNERGY_COMBUSTION = 39301
local SYNERGY_HEALING_COMBUSTION = 63507
local SYNERGY_CONDUIT = 23196
local SYNERGY_PURIFY = 22269
local SYNERGY_HARVEST = 85572
local SYNERGY_BONE_WALL = 39377
local SYNERGY_SPINAL_SURGE = 42194
local SYNERGY_BLOOD_FUNNEL = 39500
local SYNERGY_BLOOD_FEAST = 41963
local SYNERGY_SPAWN_BROODLING = 39451
local SYNERGY_BLACK_WIDOW = 41994
local SYNERGY_ARACHNOPHOBIA = 42016
local SYNERGY_RADIATE = 41838
local SYNERGY_CHARGED_LIGHTNING = 48076
local SYNERGY_SHACKLE = 32910
local SYNERGY_IGNITE = 32974
local SYNERGY_GRAVITY_CRUSH = 31603
local SYNERGY_SUPERNOVA = 31538
local SYNERGY_HIDDEN_REFRESH = 37729
local SYNERGY_SOUL_LEECH = 25170
local SYNERGY_GRAVE_ROBBER = 115548
local SYNERGY_PURE_AGONY = 118604
local SYNERGY_FEEDING_FRENZY = 58775
local SYNERGY_SANGUINE_BURST = 141920
local SYNERGY_ICY_ESCAPE = 88884
local SYNERGY_GRYPHONS_REPRISAL = 167044
local SYNERGY_RUNEBREAK = 191078
local SYNERGY_PASSAGE = 190401
local SYNERGY_HEED_THE_CALL = 142712
local SYNERGY_CONVERGENCE_RELEASE = 241232
local SYNERGY_SHIELD_OF_URSUS = 111437
local SYNERGY_FEED = 33152
local SYNERGY_BLADE_OF_WOE = 76325

SP.data = {
    [0]  = {
       [ID] = SYNERGY_BLESSED_SHARDS,
       [ICON] = "/esoui/art/icons/ability_templar_sun_strike.dds",
       [NAME] = "Blessed Shards",
       [PRIORITY] = 8
    },
    [1]  = {
       [ID] = SYNERGY_HOLY_SHARDS,
       [ICON] = "/esoui/art/icons/ability_templar_light_strike.dds",
       [NAME] = "Holy Shards",
       [PRIORITY] = 8
    },
    [2]  = {
       [ID] = SYNERGY_COMBUSTION,
       [ICON] = "/esoui/art/icons/ability_undaunted_004.dds",
       [NAME] = "Combustion",
       [PRIORITY] = 8
    },
    [3]  = {
       [ID] = SYNERGY_HEALING_COMBUSTION,
       [ICON] = "/esoui/art/icons/ability_undaunted_004b.dds",
       [NAME] = "Healing Combustion",
       [PRIORITY] = 7
    },
    [4]  = {
       [ID] = SYNERGY_CONDUIT,
       [ICON] = "/esoui/art/icons/ability_sorcerer_lightning_splash.dds",
       [NAME] = "Conduit",
       [PRIORITY] = 9
    },
    [5]  = {
       [ID] = SYNERGY_PURIFY,
       [ICON] = "/esoui/art/icons/ability_templar_cleansing_ritual.dds",
       [NAME] = "Purify",
       [PRIORITY] = 7
    },
    [6]  = {
       [ID] = SYNERGY_HARVEST,
       [ICON] = "/esoui/art/icons/ability_warden_007.dds",
       [NAME] = "Harvest",
       [PRIORITY] = 7
    },
    [7]  = {
       [ID] = SYNERGY_BONE_WALL,
       [ICON] = "/esoui/art/icons/ability_undaunted_005.dds",
       [NAME] = "Bone Wall",
       [PRIORITY] = 7
    },
    [8]  = {
       [ID] = SYNERGY_SPINAL_SURGE,
       [ICON] = "/esoui/art/icons/ability_undaunted_005a.dds",
       [NAME] = "Spinal Surge",
       [PRIORITY] = 7
    },
    [9]  = {
       [ID] = SYNERGY_BLOOD_FUNNEL,
       [ICON] = "/esoui/art/icons/ability_undaunted_001.dds",
       [NAME] = "Blood Funnel",
       [PRIORITY] = 7
    },
    [10] = {
       [ID] = SYNERGY_BLOOD_FEAST,
       [ICON] = "/esoui/art/icons/ability_undaunted_001_a.dds",
       [NAME] = "Blood Feast",
       [PRIORITY] = 7
    },
    [11] = {
       [ID] = SYNERGY_SPAWN_BROODLING,
       [ICON] = "/esoui/art/icons/ability_undaunted_003.dds",
       [NAME] = "Spawn Broodling",
       [PRIORITY] = 9
    },
    [12] = {
       [ID] = SYNERGY_BLACK_WIDOW,
       [ICON] = "/esoui/art/icons/ability_undaunted_003_a.dds",
       [NAME] = "Black Widow",
       [PRIORITY] = 9
    },
    [13] = {
       [ID] = SYNERGY_ARACHNOPHOBIA,
       [ICON] = "/esoui/art/icons/ability_undaunted_003_b.dds",
       [NAME] = "Arachnophobia",
       [PRIORITY] = 9
    },
    [14] = {
       [ID] = SYNERGY_RADIATE,
       [ICON] = "/esoui/art/icons/ability_undaunted_002.dds",
       [NAME] = "Radiate",
       [PRIORITY] = 9
    },
    [15] = {
       [ID] = SYNERGY_CHARGED_LIGHTNING,
       [ICON] = "/esoui/art/icons/ability_sorcerer_storm_atronach.dds",
       [NAME] = "Charged Lightning",
       [PRIORITY] = 8
    },
    [16] = {
       [ID] = SYNERGY_SHACKLE,
       [ICON] = "/esoui/art/icons/ability_dragonknight_006.dds",
       [NAME] = "Shackle",
       [PRIORITY] = 9
    },
    [17] = {
       [ID] = SYNERGY_IGNITE,
       [ICON] = "/esoui/art/icons/ability_dragonknight_010.dds",
       [NAME] = "Ignite",
       [PRIORITY] = 9
    },
    [18] = {
       [ID] = SYNERGY_GRAVITY_CRUSH,
       [ICON] = "/esoui/art/icons/ability_templar_solar_prison.dds",
       [NAME] = "Gravity Crush",
       [PRIORITY] = 9
    },
    [19] = {
       [ID] = SYNERGY_SUPERNOVA,
       [ICON] = "/esoui/art/icons/ability_templar_nova.dds",
       [NAME] = "Supernova",
       [PRIORITY] = 9
    },
    [20] = {
       [ID] = SYNERGY_HIDDEN_REFRESH,
       [ICON] = "/esoui/art/icons/ability_nightblade_015.dds",
       [NAME] = "Hidden Refresh",
       [PRIORITY] = 7
    },
    [21] = {
       [ID] = SYNERGY_SOUL_LEECH,
       [ICON] = "/esoui/art/icons/ability_nightblade_018.dds",
       [NAME] = "Soul Leech",
       [PRIORITY] = 7
    },
    [22] = {
       [ID] = SYNERGY_GRAVE_ROBBER,
       [ICON] = "/esoui/art/icons/ability_necromancer_004.dds",
       [NAME] = "Grave Robber",
       [PRIORITY] = 9
    },
    [23] = {
       [ID] = SYNERGY_PURE_AGONY,
       [ICON] = "/esoui/art/icons/ability_necromancer_010_b.dds",
       [NAME] = "Pure Agony",
       [PRIORITY] = 9
    },
    [24] = {
       [ID] = SYNERGY_FEEDING_FRENZY,
       [ICON] = "esoui/art/icons/ability_werewolf_005_b.dds",
       [NAME] = "Feeding Frenzy",
       [PRIORITY] = 8
    },
    [25] = {
       [ID] = SYNERGY_SANGUINE_BURST,
       [ICON] = "esoui/art/icons/ability_u23_bloodball_chokeonit.dds",
       [NAME] = "Sanguine Burst",
       [PRIORITY] = 8
    },
    [26] = {
       [ID] = SYNERGY_ICY_ESCAPE,
       [ICON] = "/esoui/art/icons/ability_warden_005_b.dds",
       [NAME] = "Icy Escape",
       [PRIORITY] = 8
    },
    [27] = {
       [ID] = SYNERGY_GRYPHONS_REPRISAL,
       [ICON] = "esoui/art/icons/achievement_trial_cr_flavor_3.dds",
       [NAME] = "Gryphon's Reprisal",
       [PRIORITY] = 9
    },
    [28] = {
       [ID] = SYNERGY_RUNEBREAK,
       [ICON] = "/esoui/art/icons/ability_arcanist_004.dds",
       [NAME] = "Runebreak",
       [PRIORITY] = 9
    },
    [29] = {
       [ID] = SYNERGY_PASSAGE,
       [ICON] = "/esoui/art/icons/ability_arcanist_016_b.dds",
       [NAME] = "Passage",
       [PRIORITY] = 0
    },
    [30] = {
       [ID] = SYNERGY_HEED_THE_CALL,
       [ICON] = "/esoui/art/icons/achievement_u26_skyrim_werewolfdevour100.dds",
       [NAME] = "Heed the Call",
       [PRIORITY] = 8
    },
    [31] = {
       [ID] = SYNERGY_CONVERGENCE_RELEASE,
       [ICON] = "/esoui/art/icons/ability_healer_018.dds",
       [NAME] = "Convergence Release",
       [PRIORITY] = 9
    },
    [32] = {
       [ID] = SYNERGY_SHIELD_OF_URSUS,
       [ICON] = "/esoui/art/icons/ability_warden_018_c.dds",
       [NAME] = "Shield of Ursus",
       [PRIORITY] = 7
    },
    [33] = {
       [ID] = SYNERGY_FEED,
       [ICON] = "/esoui/art/icons/ability_u26_vampire_synergy_feed.dds",
       [NAME] = "Feed",
       [PRIORITY] = 0
    },
    [34] = {
       [ID] = SYNERGY_BLADE_OF_WOE,
       [ICON] = "/esoui/art/icons/achievement_darkbrotherhood_003.dds",
       [NAME] = "Blade of Woe",
       [PRIORITY] = 0
    },
}

-- [SYNERGY_ID] = PRIORITY

SP.defaultSpec = {
  [SYNERGY_BLOOD_FEAST] = 5,
  [SYNERGY_BLOOD_FUNNEL] = 6,
  [SYNERGY_CHARGED_LIGHTNING] = 6,
  [SYNERGY_COMBUSTION] = 7,
}

SP.majoSpec = {
  [SYNERGY_BLOOD_FEAST] = 5,
  [SYNERGY_CONDUIT] = 7,
  [SYNERGY_SPAWN_BROODLING] = 6,
  [SYNERGY_BLACK_WIDOW] = 6,
  [SYNERGY_ARACHNOPHOBIA] = 6,
  [SYNERGY_RADIATE] = 7,
  [SYNERGY_SHACKLE] = 6,
  [SYNERGY_IGNITE] = 6,
  [SYNERGY_GRAVITY_CRUSH] = 6,
  [SYNERGY_SUPERNOVA] = 8,
  [SYNERGY_COMBUSTION] = 7,
  [SYNERGY_SOUL_LEECH] = 6,
  [SYNERGY_HIDDEN_REFRESH] = 9,
  [SYNERGY_BLOOD_FUNNEL] = 6,
  [SYNERGY_CHARGED_LIGHTNING] = 9,
  [SYNERGY_BLESSED_SHARDS] = 9,
  [SYNERGY_HOLY_SHARDS] = 9,
  [SYNERGY_HEALING_COMBUSTION] = 9,
  [SYNERGY_PURIFY] = 9,
  [SYNERGY_HARVEST] = 9,
  [SYNERGY_BONE_WALL] = 9,
  [SYNERGY_SPINAL_SURGE] = 9,
  [SYNERGY_FEEDING_FRENZY] = 9,
  [SYNERGY_GRAVE_ROBBER] = 8,
  [SYNERGY_PURE_AGONY] = 8,
  [SYNERGY_SANGUINE_BURST] = 9,
  [SYNERGY_GRYPHONS_REPRISAL] = 9,
  [SYNERGY_RUNEBREAK] = 7,
}

SP.supportSpec = {
  [SYNERGY_BLOOD_FEAST] = 5,
  [SYNERGY_BLOOD_FUNNEL] = 6,
  [SYNERGY_CHARGED_LIGHTNING] = 6,
  [SYNERGY_BLESSED_SHARDS] = 7,
  [SYNERGY_HOLY_SHARDS] = 7,
  [SYNERGY_COMBUSTION] = 7,
  [SYNERGY_HEALING_COMBUSTION] = 8,
  [SYNERGY_CONDUIT] = 9,
  [SYNERGY_PURIFY] = 7,
  [SYNERGY_HARVEST] = 7,
  [SYNERGY_BONE_WALL] = 7,
  [SYNERGY_SPINAL_SURGE] = 7,
  [SYNERGY_SPAWN_BROODLING] = 9,
  [SYNERGY_BLACK_WIDOW] = 9,
  [SYNERGY_ARACHNOPHOBIA] = 9,
  [SYNERGY_RADIATE] = 9,
  [SYNERGY_SHACKLE] = 9,
  [SYNERGY_IGNITE] = 9,
  [SYNERGY_GRAVITY_CRUSH] = 9,
  [SYNERGY_SUPERNOVA] = 9,
  [SYNERGY_HIDDEN_REFRESH] = 7,
  [SYNERGY_SOUL_LEECH] = 9,
  [SYNERGY_FEEDING_FRENZY] = 8,
  [SYNERGY_GRAVE_ROBBER] = 9,
  [SYNERGY_PURE_AGONY] = 9,
  [SYNERGY_SANGUINE_BURST] = 9,
  [SYNERGY_GRYPHONS_REPRISAL] = 9,
  [SYNERGY_RUNEBREAK] = 9,
}
