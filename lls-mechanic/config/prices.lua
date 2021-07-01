Config = Config or {}

-- The vehicle price will be the first option and will change the upgrades price 
Config.VehicleOverridePrice = {
    [`elegy`] = {
        price = 21000
    },
    [`elegy2`] = {
        price = 25000
    }
}

-- If a is not included in "Config.VehicleOverridePrice" then price of the vehicle will be as the class
Config.VehicleClassPrice = {
    ['0'] = 10000, -- Compacts
    ['1'] = 15000, -- Sedans
    ['2'] = 20000, -- SUVs
    ['3'] = 15000, -- Coupes
    ['4'] = 25000, -- Muscle
    ['5'] = 25000, -- Sports Classics
    ['6'] = 20000, -- Sports
    ['7'] = 35000, -- Super
    ['8'] = 20000, -- Motorcycles
    ['9'] = 15000, -- Off-road
    ['10'] = 10000, -- Industrial
    ['11'] = 10000, -- Utility
    ['12'] = 10000, -- Vans
    ['13'] = 100, -- Cycles
    ['14'] = 10000, -- Boats
    ['15'] = 50000, -- Helicopters
    ['16'] = 50000, -- Planes
    ['17'] = 10000, -- Service
    ['18'] = 10000, -- Emergency
    ['20'] = 10000 -- Commercial
}

-- If a is not included in "Config.VehicleOverridePrice" and the class of the vehicle is not included in the "Config.VehicleClassPrice" the price will be as the "Config.VehicleDefaultPrice"
Config.VehicleDefaultPrice = 50000

-- This multiplier will add to the parts multiplier for the position that is not for whitelist job
Config.PriceMultiplierWithoutTheJob = 2.0

-- The price of the repair for the points with whitelist job (for the open points the "Config.PriceMultiplierWithoutTheJob" multiplier will apply)
Config.VehicleRepairPrice = 500

-- The multiplier of parts for the points with whitelist job (for the open points the "Config.PriceMultiplierWithoutTheJob" multiplier will add to that)
Config.VehicleCustomisePriceMultiplier = {
    ['engine'] = {10.0, 20.00, 30.00, 40.00, 50.00, 60.00},
    ['brakes'] = {2.0, 4.00, 9.00, 18.00, 20.0},
    ['transmission'] = {10.0, 20.00, 30.00, 40.00, 50.0},
    ['suspension'] = {10.0, 20.00, 30.00, 40.00, 50.00, 60.00, 70.0},
    ['armor'] = {20.0, 50.00, 60.00, 65.0, 75.0, 90.0, 100.0, 115.0},
    ['turbo'] = {10.0, 50.00},

    ['extras'] = 2.0,
    ['windowTint'] = 1.00,

    ['horn'] = 1.00,
    ['speakers'] = 6.00,
    ['trunk'] = 5.00,
    ['hydrulics'] = 5.00,
    ['engine_block'] = 5.00,
    ['air_filter'] = 3.00,
    ['struts'] = 6.00,
    ['tank'] = 4.00,

    ['spoilers'] = 2.00,
    ['front_bumper'] = 2.00,
    ['rear_bumper'] = 2.00,
    ['side_skirts'] = 2.00,
    ['exhaust'] = 2.00,
    ['cage'] = 2.00,
    ['grille'] = 2.00,
    ['hood'] = 2.00,
    ['left_fender'] = 2.00,
    ['right_fender'] = 2.00,
    ['roof'] = 2.00,
    ['arch_cover'] = 4.00,
    ['aerials'] = 1.00,
    ['wings'] = 6.00,
    ['windows'] = 1.00,

    ['dashboard'] = 5.00,
    ['dashboard_color'] = 1.00,
    ['dial'] = 4.00,
    ['door_speaker'] = 5.00,
    ['seat'] = 4.00,
    ['steering_wheel'] = 4.00,
    ['shifter_leaver'] = 3.00,
    ['ornaments'] = 1.0,
    ['interior'] = 6.00,
    ['interior_color'] = 1.0,

    ['primary_paint'] = 1.00,
    ['secondary_paint'] = 1.00,
    ['primary_paint_type'] = 0.5,
    ['secondary_paint_type'] = 0.5,
    ['pearlescent'] = 0.5,

    ['wheels_color'] = 1.00,
    ['smoke_color'] = 1.00,

    ['sport'] = 1.00,
    ['muscle'] = 1.00,
    ['lowrider'] = 1.00,
    ['suv'] = 1.00,
    ['offroad'] = 1.00,
    ['tuner'] = 1.00,
    ['bike_wheels'] = 1.00,
    ['high_end'] = 1.00,

    ['plate_type'] = 1.00,
    ['plate_color'] = 1.00,
    ['plate_holder'] = 3.00,

    ['xenon'] = 0.1,
    ['neon'] = 1.00,

    ['stickers'] = 6.0,
    ['livery'] = 6.0
}
