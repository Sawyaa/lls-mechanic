Config = Config or {}

-- enables the version checher on resource start (if enabled and the resource is out of date it will print in server console)
Config.EnableVersionChecker = true

-- the derailCard position on the top of the screen (0 = right, 1 = left)
Config.detailCardMenuPosition = 0

-- the cash amount position on the top of the screen (0 = right, 1 = left)
Config.cashPosition = 0

-- if this turned off every mechanic position will be able to to cosmetics and upgrades otherwise only whitelist job can do upgrades 
Config.IsUpgradesOnlyForWhitelistJobPoints = false

-- The key to access the mechanic menu, the key code and the name can be found here: https://docs.fivem.net/docs/game-references/controls/
Config.Keys = {
    action = {key = 38, label = 'E', name = '~INPUT_PICKUP~'}
}

-- The default values access disrance from position if "Config.Positions" misses the value actionDistance
Config.DefaultActionDistance = 8.0

-- The default values for the blip if "Config.Positions" misses the value "blip = {}"
Config.DefaultBlip = {
    enable = false,
    type = 72,
    color = 0,
    title = 'Mechanic',
    scale = 0.5
}

-- Add or remove position for mechanic access points
-- pisition without "whitelistJobName" will be open for anyone and the price will have the multiple of "Config.PriceMultiplierWithoutTheJob" in "config/prices.lua"
-- if any position miss the "blip = {}" will be the default as seen above "Config.DefaultBlip"
-- if any position miss the "actionDistance" will be the default as seen above "Config.DefaultActionDistance"
Config.Positions = {
    { -- bennys
        pos = {x = -223.6, y = -1329.2, z = 30.9},
        whitelistJobName = 'mecano',
        blip = {
            enable = false,
            type = 72,
            color = 0,
            title = 'Bennys',
            scale = 0.5
        },
        actionDistance = 7.0
    },
}
