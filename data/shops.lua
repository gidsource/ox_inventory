return {
	General = {
		name = 'Supermarket',
		blip = {
			id = 59, colour = 69, scale = 0.7
		}, inventory = {
			{ name = 'burger', price = 10 },
			{ name = 'water', price = 10 },
			{ name = 'phone', price = 10000 },
			{ name = 'radio', price = 5000 },
			{ name = 'nos', price = 100 },
			{ name = 'sweetmadame', price = 50 },
			{ name = 'wolfhookjuice', price = 50 },
			{ name = 'racing_gps', price = 100 },
			{ name = 'contract', price = 10000 },
			{ name = 'skateboard', price = 5000 },
			{ name = 'tripolar_camera', price = 5000 },
			{ name = 'tripolar_paper', price = 50 },


		}, locations = {
			vec3(25.7, -1347.3, 29.49),
			vec3(-3038.71, 585.9, 7.9),
			vec3(-3241.47, 1001.14, 12.83),
			vec3(1728.66, 6414.16, 35.03),
			vec3(1697.99, 4924.4, 42.06),
			vec3(1961.48, 3739.96, 32.34),
			vec3(547.79, 2671.79, 42.15),
			vec3(2679.25, 3280.12, 55.24),
			vec3(2557.94, 382.05, 108.62),
			vec3(373.55, 325.56, 103.56),
			vec3(-708.54, -914.09, 19.22),
			vec3(-1819.17, 792.6, 138.13),
			vec3(160.97, 6641.23, 31.71),
			vec3(-2070.39, -332.66, 13.32),
			vec3(646.62, 261.3, 103.3),
			--roxwood
			--vec3(-2774.17, 7036.47, 28.65)
		}, targets = {
			{ loc = vec3(25.06, -1347.32, 29.5), length = 0.7, width = 0.5, heading = 0.0, minZ = 29.5, maxZ = 29.9, distance = 1.5 },
			{ loc = vec3(-3039.18, 585.13, 7.91), length = 0.6, width = 0.5, heading = 15.0, minZ = 7.91, maxZ = 8.31, distance = 1.5 },
			{ loc = vec3(-3242.2, 1000.58, 12.83), length = 0.6, width = 0.6, heading = 175.0, minZ = 12.83, maxZ = 13.23, distance = 1.5 },
			{ loc = vec3(1728.39, 6414.95, 35.04), length = 0.6, width = 0.6, heading = 65.0, minZ = 35.04, maxZ = 35.44, distance = 1.5 },
			{ loc = vec3(1698.37, 4923.43, 42.06), length = 0.5, width = 0.5, heading = 235.0, minZ = 42.06, maxZ = 42.46, distance = 1.5 },
			{ loc = vec3(1960.54, 3740.28, 32.34), length = 0.6, width = 0.5, heading = 120.0, minZ = 32.34, maxZ = 32.74, distance = 1.5 },
			{ loc = vec3(548.5, 2671.25, 42.16), length = 0.6, width = 0.5, heading = 10.0, minZ = 42.16, maxZ = 42.56, distance = 1.5 },
			{ loc = vec3(2678.29, 3279.94, 55.24), length = 0.6, width = 0.5, heading = 330.0, minZ = 55.24, maxZ = 55.64, distance = 1.5 },
			{ loc = vec3(2557.19, 381.4, 108.62), length = 0.6, width = 0.5, heading = 0.0, minZ = 108.62, maxZ = 109.02, distance = 1.5 },
			{ loc = vec3(373.13, 326.29, 103.57), length = 0.6, width = 0.5, heading = 345.0, minZ = 103.57, maxZ = 103.97, distance = 1.5 },
			{ loc = vec3(-706.64, -913.71, 19.22), length = 1.0, width = 0.8, heading = 0.0, minZ = 14.82, maxZ = 19.62, distance = 3.5 },
			{ loc = vec3(-1819.17, 792.6, 138.13), length = 1.0, width = 1.0, heading = 312.0, minZ = 134.53, maxZ = 138.53, distance = 3.5 },
			{ loc = vec3(160.97, 6641.23, 31.71), length = 0.45, width = 0.6, heading = 316.0, minZ = 28.31, maxZ = 32.31, distance = 3.5 },
			{ loc = vec3(-2070.39, -332.66, 13.32), length = 0.5, width = 0.45, heading = 352.0, minZ = 9.72, maxZ = 13.72, distance = 3.5 },
			{ loc = vec3(646.62, 261.3, 103.3), length = 0.4, width = 0.5, heading = 330.0, minZ = 99.7, maxZ = 103.7, distance = 3.5 },
			--roxwood
			--{ loc = vec3(-2774.17, 7036.47, 28.65), length = 0.6, width = 2.4, heading = 0.0, minZ = 25.05, maxZ = 29.05, distance = 3.5 }
		}
	},

	Market = { --market tanpa blip
		name = 'Supermarket',
		inventory = {
			{ name = 'burger', price = 10 },
			{ name = 'water', price = 10 },
			{ name = 'phone', price = 10000 },
			{ name = 'radio', price = 5000 },
			{ name = 'nos', price = 100 },
			{ name = 'sweetmadame', price = 50 },
			{ name = 'wolfhookjuice', price = 50 },
			{ name = 'racing_gps', price = 100 },
			{ name = 'contract', price = 10000 },
			{ name = 'skateboard', price = 5000 },
			{ name = 'tripolar_camera', price = 5000 },
			{ name = 'tripolar_paper', price = 50 },
		}, locations = {
			vec3(-692.14, -859.35, 23.73),
		}, targets = {
			{ loc = vec3(-692.14, -859.35, 23.73), length = 0.4, width = 0.6, heading = 0.0, minZ = 19.53, maxZ = 24.13, distance = 3.5 },
		}
	},

	Liquor = {
		name = 'Supermarket',
		blip = {
			id = 59, colour = 69, scale = 0.7
		}, inventory = {
			{ name = 'burger', price = 10 },
			{ name = 'water', price = 10 },
			{ name = 'phone', price = 10000 },
			{ name = 'radio', price = 5000 },
			{ name = 'nos', price = 100 },
			{ name = 'sweetmadame', price = 50 },
			{ name = 'wolfhookjuice', price = 50 },
			{ name = 'racing_gps', price = 100 },
			{ name = 'contract', price = 10000 },
			{ name = 'skateboard', price = 5000 },
			{ name = 'tripolar_camera', price = 5000 },
			{ name = 'tripolar_paper', price = 50 },
		}, locations = {
			vec3(1135.808, -982.281, 46.415),
			vec3(-1222.915, -906.983, 12.326),
			vec3(-1487.553, -379.107, 40.163),
			vec3(-2968.243, 390.910, 15.043),
			vec3(1166.024, 2708.930, 38.157),
			vec3(1392.562, 3604.684, 34.980),
			vec3(-1393.409, -606.624, 30.319),
			vec3(-2539.89, 2313.81, 33.41),
			vec3(-345.79, -1477.97, 30.76),
			--roxwood
			--vec3(-1226.73, 6927.61, 20.63),
			--vec3(-525.93, 7559.29, 6.52)
		}, targets = {
			{ loc = vec3(1134.9, -982.34, 46.41), length = 0.5, width = 0.5, heading = 96.0, minZ = 46.4, maxZ = 46.8, distance = 1.5 },
			{ loc = vec3(-1222.33, -907.82, 12.43), length = 0.6, width = 0.5, heading = 32.7, minZ = 12.3, maxZ = 12.7, distance = 1.5 },
			{ loc = vec3(-1486.67, -378.46, 40.26), length = 0.6, width = 0.5, heading = 133.77, minZ = 40.1, maxZ = 40.5, distance = 1.5 },
			{ loc = vec3(-2967.0, 390.9, 15.14), length = 0.7, width = 0.5, heading = 85.23, minZ = 15.0, maxZ = 15.4, distance = 1.5 },
			{ loc = vec3(1165.95, 2710.20, 38.26), length = 0.6, width = 0.5, heading = 178.84, minZ = 38.1, maxZ = 38.5, distance = 1.5 },
			{ loc = vec3(1393.0, 3605.95, 35.11), length = 0.6, width = 0.6, heading = 200.0, minZ = 35.0, maxZ = 35.4, distance = 1.5 },
			{ loc = vec3(-47.27, -1757.55, 29.42), length = 1.6, width = 0.4, heading = 319, minZ = 24.47, maxZ = 29.87, distance = 3.5},
			{ loc = vec3(1164.23, -322.92, 69.21), length = 1.2, width = 2.0, heading = 280, minZ = 65.61, maxZ = 69.61, distance = 3.5},
			{ loc = vec3(-2539.89, 2313.81, 33.41), length = 0.6, width = 0.6, heading = 4, minZ = 30.01, maxZ = 34.01, distance = 3.5},
			{ loc = vec3(-345.79, -1477.97, 30.76), length = 0.6, width = 0.4, heading = 0, minZ = 27.16, maxZ = 31.16, distance = 3.5},
			--roxwood
			--{ loc = vec3(-1226.73, 6927.61, 20.63), length = 0.5, width = 0.5, heading = 0, minZ = 27.16, maxZ = 31.16, distance = 3.5},
			--{ loc = vec3(-525.93, 7559.29, 6.52), length = 2.6, width = 0.6, heading = 319, minZ = 2.92, maxZ = 6.92, distance = 3.5}
		}
	},

	YouTool = {
		name = 'Mall Store',
		blip = {
			id = 434, colour = 69, scale = 0.8
		}, inventory = {
			{ name = 'lockpick', price = 10 },
			{ name = 'racing_gps', price = 100 },
			{ name = 'boombox', price = 100 },
			{ name = 'thermite_bomb', price = 100 },
			{ name = 'c4_bomb', price = 100 },
			{ name = 'cutter', price = 100 },
			{ name = 'bag', price = 100 },
			{ name = 'drill', price = 100 },
			{ name = 'laptop', price = 100 },
			{ name = 'hack_usb', price = 100 },
			{ name = 'key1', price = 100 },
			{ name = 'key2', price = 100 },
			{ name = 'gasmask', price = 100},
			{ name = 'heavy_rope', price = 500},
			{ name = 'skateboard', price = 5000 },
			
		}, locations = {
			vec3(2748.0, 3473.0, 55.67),
			vec3(342.99, -1298.26, 32.51)
		}, targets = {
			{ loc = vec3(2746.8, 3473.13, 55.67), length = 0.6, width = 3.0, heading = 65.0, minZ = 55.0, maxZ = 56.8, distance = 3.0 }
		}
	},

	TunerShop = {
		name = 'Tuner Shop',
		blip = {
			id = 446, colour = 46, scale = 0.7
		}, inventory = {
			{ name = 'lockpick', price = 10 },
			{ name = 'racing_gps', price = 100 },
			{ name = 'nos', price = 500},
			{ name = 'contract', price = 10000 },
			--{ name = '', price = 500},
		}, locations = {
			vec3(149.89, -3014.25, 7.04),
		}, targets = {
			{ loc = vec3(149.89, -3014.25, 7.04), length = 1.0, width = 1.0, heading = 0.0, minZ = 3.44, maxZ = 7.44, distance = 3.0 }
		}
	},

	VehicleParts = {
		name = 'Vehicle Parts',
		inventory = {
			{ name = 'engine_oil', price = 1500},
			{ name = 'oil_filter', price = 1500},
			{ name = 'air_filter', price = 1500},
			{ name = 'tires', price = 1500},
			{ name = 'brake_parts', price = 1500},
			{ name = 'clutch', price = 1500},
			{ name = 'spark_plugs', price = 1000},
			{ name = 'suspension_parts', price = 2500},
			--{ name = '', price = 500},
		}, locations = {
			vec3(149.89, -3014.25, 7.04),
		}, targets = {
			{ loc = vec3(149.89, -3014.25, 7.04), length = 1.0, width = 1.0, heading = 0.0, minZ = 3.44, maxZ = 7.44, distance = 3.0 }
		}
	},

	Ammunation = {
		name = 'Ammunation',
		blip = {
			id = 110, colour = 69, scale = 0.7
		}, inventory = {
			{ name = 'WEAPON_KNIFE', price = 20000 },
			{ name = 'WEAPON_BAT', price = 35000 },
			--{ name = '', price =  },
		}, locations = {
			vec3(-662.180, -934.961, 21.829),
			vec3(808.86, -2158.37, 29.77),
			vec3(1693.44, 3760.16, 34.71),
			vec3(-330.24, 6083.88, 31.45),
			vec3(252.63, -50.00, 69.94),
			vec3(23.67, -1106.59, 29.95),
			vec3(2567.69, 294.38, 108.73),
			vec3(-1117.58, 2698.61, 18.55),
			vec3(842.44, -1033.42, 28.19),
			--roxwood
			--vec3(-1799.63, 8374.63, 36.43)
		}, targets = {
			{ loc = vec3(-660.92, -934.10, 21.94), length = 0.6, width = 0.5, heading = 180.0, minZ = 21.8, maxZ = 22.2, distance = 2.0 },
			{ loc = vec3(808.86, -2158.37, 29.77), length = 0.6, width = 1.0, heading = 0.0, minZ = 26.03, maxZ = 30.03, distance = 3.0 },
			{ loc = vec3(1693.57, 3761.60, 34.82), length = 0.6, width = 0.5, heading = 227.39, minZ = 34.7, maxZ = 35.1, distance = 2.0 },
			{ loc = vec3(-330.29, 6085.54, 31.57), length = 0.6, width = 0.5, heading = 225.0, minZ = 31.4, maxZ = 31.8, distance = 2.0 },
			{ loc = vec3(252.85, -51.62, 70.0), length = 0.6, width = 0.5, heading = 70.0, minZ = 69.9, maxZ = 70.3, distance = 2.0 },
			{ loc = vec3(23.67, -1106.59, 29.95), length = 0.6, width = 0.8, heading = 340.0, minZ = 26.21, maxZ = 30.21, distance = 3.0 },
			{ loc = vec3(2566.59, 293.13, 108.85), length = 0.6, width = 0.5, heading = 360.0, minZ = 108.7, maxZ = 109.1, distance = 2.0 },
			{ loc = vec3(-1117.61, 2700.26, 18.67), length = 0.6, width = 0.5, heading = 221.82, minZ = 18.5, maxZ = 18.9, distance = 2.0 },
			{ loc = vec3(841.05, -1034.76, 28.31), length = 0.6, width = 0.5, heading = 360.0, minZ = 28.2, maxZ = 28.6, distance = 2.0 },
			--roxwood
			--{ loc = vec3(-1799.63, 8374.63, 36.43), length = 0.6, width = 0.6, heading = 25.0, minZ = 32.2, maxZ = 36.6, distance = 3.0 }
		}
	},

	PoliceArmoury = {
		name = 'Police Armoury',
		groups = shared.police,
		blip = {
			id = 110, colour = 84, scale = 0.5
		}, inventory = {
			{ name = 'ammo-9', price = 5, },
			{ name = 'ammo-rifle', price = 5, },
			{ name = 'WEAPON_FLASHLIGHT', price = 200 },
			{ name = 'WEAPON_NIGHTSTICK', price = 100 },
			{ name = 'WEAPON_PISTOL', price = 500, metadata = { registered = true, serial = 'POL' }, license = 'weapon' },
			{ name = 'WEAPON_CARBINERIFLE', price = 1000, metadata = { registered = true, serial = 'POL' }, license = 'weapon', grade = 3 },
			{ name = 'WEAPON_STUNGUN', price = 500, metadata = { registered = true, serial = 'POL'} }
		}, locations = {
			vec3(451.51, -979.44, 30.68)
		}, targets = {
			{ loc = vec3(453.21, -980.03, 30.68), length = 0.5, width = 3.0, heading = 270.0, minZ = 30.5, maxZ = 32.0, distance = 6 }
		}
	},

	Medicine = {
		name = 'Medicine Cabinet',
		groups = {
			['ambulance'] = 0
		},
		blip = {
			id = 403, colour = 69, scale = 0.5
		}, inventory = {
			{ name = 'medikit', price = 26 },
			{ name = 'bandage', price = 5 }
		}, locations = {
			vec3(306.3687, -601.5139, 43.28406)
		}, targets = {

		}
	},

	BlackMarketArms = {
		name = 'Black Market (Arms)',
		inventory = {
			{ name = 'weapon_microsmg', price = 5000000, metadata = { registered = false}, currency = 'black_money' },
			{ name = 'weapon_smg', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_smg_mk2', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_assaultsmg', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_combatpdw', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_machinepistol', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_minismg', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_raycarbine', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_tecpistol', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_pumpshotgun', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_pumpshotgun_mk2', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_sawnoffshotgun', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_assaultshotgun', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_bullpupshotgun', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_heavyshotgun', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_dbshotgun', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_autoshotgun', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_combatshotgun', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_assaultrifle', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_assaultrifle_mk2', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_carbinerifle', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_carbinerifle_mk2', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_advancedrifle', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_specialcarbine', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_specialcarbine_mk2', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_bullpuprifle', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_bullpuprifle_mk2', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_compactrifle', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_militaryrifle', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_heavyrifle', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_tacticalrifle', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_mg', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_combatmg', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_combatmg_mk2', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_gusenberg', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_sniperrifle', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_heavysniper', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_heavysniper_mk2', price = 15000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_marksmanrifle', price = 15000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_marksmanrifle_mk2', price = 15000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_precisionrifle', price = 15000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_musket', price = 5000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_rpg', price = 25000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_grenadelauncher', price = 15000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_firework', price = 25000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_railgun', price = 25000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_hominglauncher', price = 25000000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'weapon_fireextinguisher', price = 50000, metadata = { registered = false }, currency = 'black_money' }
			--{ name = '', price = 50000, metadata = { registered = false }, currency = 'black_money' },
		}, locations = {
			vec3(309.09, -913.75, 56.46),
			vec3(-2165.89, 5198.2, 17.03)
		}, targets = {
			{ loc = vec3(-2165.89, 5198.2, 17.03), length = 2.0, width = 1.0, heading = 11.0, minZ = 14.03, maxZ = 18.03, distance = 3.5 }
		}
	},

	VendingMachineSprunk = {
		name = 'Sprunk Vending Machine',
		inventory = {
			{ name = 'sprunk', price = 10 },
		},
		model = {
			"prop_vend_soda_02",
		}
	},
	VendingMachinecola = {
		name = 'eCola Vending Machine',
		inventory = {
			{ name = 'ecola', price = 10 },
		},
		model = {
			"prop_vend_soda_01",
		}
	},
	VendingMachinecoffe = {
		name = 'Coffe Vending Machine',
		inventory = {
			{ name = 'coffecan', price = 10 },
		},
		model = {
			"prop_vend_coffe_01",
		}
	},
	VendingMachineSnak = {
		name = 'Snak Vending Machine',
		inventory = {
			{ name = 'snak', price = 10 },
		},
		model = {
			"prop_vend_snak_01",
		}
	},
	VendingMachineWater = {
		name = 'Water Vending Machine',
		inventory = {
			{ name = 'water', price = 10 },
		},
		model = {
			"prop_vend_water_01",
		}
	},

	cayoshop = {
		name = 'Cayo Shops',
		blip = {
			id = 59, colour = 5, scale = 0.7
		}, inventory = {
			{ name = 'papirky', price = 2500 },
			{ name = 'plastic_bag', price = 1000 },
		}, locations = {
			vec3(4520.29, -4515.58, 4.52),
		}, targets = {
			{ loc = vec3(4520.29, -4515.58, 4.52), length = 1.0, width = 1.0, heading = 20.0, minZ = 1.72, maxZ = 5.72, distance = 3.0 },
		}
	},
}
