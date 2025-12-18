return {
	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = 'prop_rolled_sock_02', pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 10,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['sprunk'] = {
		label = 'Sprunk',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a sprunk'
		}
	},
	['ecola'] = {
		label = 'eCola',
		weight = 350,
		client = {
			image = 'cola.png',
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'ng_proc_sodacan_01a', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a eCola'
		}
	},

	--kategori snack vending
	-- ['egoshaser'] = {
	-- 	label = 'Ego Chaser',
	-- 	weight = 350,
	-- 	client = {
	-- 		image = 'egochaser.png',
	-- 		status = { thirst = 200000 },
	-- 		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	-- 		prop = { model = 'prop_choc_ego', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
	-- 		usetime = 2000,
	-- 	}
	-- },

	['coffecan'] = {
		label = 'Coffe Can',
		weight = 350,
		client = {
			image = 'coffee_black.png',
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_fib_coffee', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
		client = {
			image = 'card_id.png'
		}
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_cs_panties_02', pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_food_mustard', pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 20,
		decay = true,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_flow_bottle', pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Fleeca Card',
		stack = false,
		weight = 10,
		client = {
			image = 'card_bank.png'
		}
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},

	["alive_chicken"] = {
		label = "Chicken",
		weight = 1,
		stack = true,
		close = true,
	},

	["blowpipe"] = {
		label = "Blowtorch",
		weight = 2,
		stack = true,
		close = true,
	},

	["bread"] = {
		label = "Bread",
		weight = 1,
		stack = true,
		close = true,
	},

	["cannabis"] = {
		label = "Cannabis",
		weight = 3,
		stack = true,
		close = true,
	},

	["carokit"] = {
		label = "Body Kit",
		weight = 3,
		stack = true,
		close = true,
	},

	["carotool"] = {
		label = "Tools",
		weight = 2,
		stack = true,
		close = true,
	},

	["clothe"] = {
		label = "Cloth",
		weight = 1,
		stack = true,
		close = true,
	},

	["copper"] = {
		label = "Copper",
		weight = 1,
		stack = true,
		close = true,
	},

	["cutted_wood"] = {
		label = "Cut wood",
		weight = 1,
		stack = true,
		close = true,
	},

	["diamond"] = {
		label = "Diamond",
		weight = 1,
		stack = true,
		close = true,
	},

	["essence"] = {
		label = "Gas",
		weight = 1,
		stack = true,
		close = true,
	},

	["fabric"] = {
		label = "Fabric",
		weight = 1,
		stack = true,
		close = true,
	},

	["fish"] = {
		label = "Fish",
		weight = 1,
		stack = true,
		close = true,
	},

	["fixkit"] = {
		label = "Repair Kit",
		weight = 3,
		stack = true,
		close = true,
	},

	["fixtool"] = {
		label = "Repair Tools",
		weight = 2,
		stack = true,
		close = true,
	},

	["gazbottle"] = {
		label = "Gas Bottle",
		weight = 2,
		stack = true,
		close = true,
	},

	["gold"] = {
		label = "Gold",
		weight = 1,
		stack = true,
		close = true,
	},

	["iron"] = {
		label = "Iron",
		weight = 1,
		stack = true,
		close = true,
	},

	["marijuana"] = {
		label = "Marijuana",
		weight = 2,
		stack = true,
		close = true,
	},

	["medikit"] = {
		label = "Medikit",
		weight = 2,
		stack = true,
		close = true,
	},

	["packaged_chicken"] = {
		label = "Chicken fillet",
		weight = 1,
		stack = true,
		close = true,
	},

	["packaged_plank"] = {
		label = "Packaged wood",
		weight = 1,
		stack = true,
		close = true,
	},

	["petrol"] = {
		label = "Oil",
		weight = 1,
		stack = true,
		close = true,
	},

	["petrol_raffin"] = {
		label = "Processed oil",
		weight = 1,
		stack = true,
		close = true,
	},

	["slaughtered_chicken"] = {
		label = "Slaughtered chicken",
		weight = 1,
		stack = true,
		close = true,
	},

	["stone"] = {
		label = "Stone",
		weight = 1,
		stack = true,
		close = true,
	},

	["washed_stone"] = {
		label = "Washed stone",
		weight = 1,
		stack = true,
		close = true,
	},

	["wood"] = {
		label = "Wood",
		weight = 1,
		stack = true,
		close = true,
	},

	["wool"] = {
		label = "Wool",
		weight = 1,
		stack = true,
		close = true,
	},

	["mining_copperbar"] = {
		label = "Copper Bar",
		weight = 1,
		stack = true,
		close = true,
	},

	["mining_copperfragment"] = {
		label = "Copper Fragment",
		weight = 1,
		stack = true,
		close = true,
	},

	["mining_goldbar"] = {
		label = "Gold Bar",
		weight = 1,
		stack = true,
		close = true,
	},

	["mining_goldnugget"] = {
		label = "Gold Nugget",
		weight = 1,
		stack = true,
		close = true,
	},

	["mining_ironbar"] = {
		label = "Iron Bar",
		weight = 1,
		stack = true,
		close = true,
	},

	["mining_ironfragment"] = {
		label = "Iron Nugget",
		weight = 1,
		stack = true,
		close = true,
	},

	["mining_pan"] = {
		label = "Pan",
		weight = 1,
		stack = true,
		close = true,
	},
	--MINING
	['pickaxe'] = {
		label = 'Pickaxe',
		weight = 325,
		stack = true,
		--degrade = 30, -- This is the time in minutes it takes for a pickaxe to degrade to 0
		--decay = true -- This is a feature that deletes the item when durability reaches 0 (ox_inventory v2.31.0 or later)
	},
	
	['scrap_metal'] = {
		label = 'Scrap Metal',
		weight = 280,
		stack = true,
	},
	
	['stone'] = {
		label = 'Stone',
		weight = 265,
		stack = true,
	},
	
	['raw_copper'] = {
		label = 'Raw Copper',
		weight = 245,
		stack = true,
	},
	
	['raw_iron'] = {
		label = 'Raw Iron',
		weight = 225,
		stack = true,
	},
	
	['raw_steel'] = {
		label = 'Raw Steel',
		weight = 210,
		stack = true,
	},
	
	['raw_silver'] = {
		label = 'Raw Silver',
		weight = 190,
		stack = true,
	},
	
	['raw_gold'] = {
		label = 'Raw Gold',
		weight = 190,
		stack = true,
	},
	
	['raw_diamond'] = {
		label = 'Raw Diamond',
		weight = 165,
		stack = true,
	},
	
	['raw_emerald'] = {
		label = 'Raw Emerald',
		weight = 140,
		stack = true,
	},
	
	['copper'] = {
		label = 'Copper',
		weight = 225,
		stack = true,
	},
	
	['iron'] = {
		label = 'Iron',
		weight = 200,
		stack = true,
	},
	
	['steel'] = {
		label = 'Steel',
		weight = 190,
		stack = true,
	},
	
	['silver'] = {
		label = 'Silver',
		weight = 175,
		stack = true,
	},
	
	['gold'] = {
		label = 'Gold',
		weight = 155,
		stack = true,
	},
	
	['diamond'] = {
		label = 'Diamond',
		weight = 140,
		stack = true,
	},
	
	['emerald'] = {
		label = 'Emerald',
		weight = 125,
		stack = true,
	},
	

	["wood_plank "] = {
		label = "wood_plank ",
		weight = 1,
		stack = true,
		close = true,
	},

	["tree_bark"] = {
		label = "tree_bark",
		weight = 1,
		stack = true,
		close = true,
	},

	["tree_lumber"] = {
		label = "tree_lumber",
		weight = 1,
		stack = true,
		close = true,
	},
	--mechanic item
	['repair_kit'] = {
		label = 'Repair Kit Mechanic',
		weight = 5,
		stack = true,
		client = {
			image = "repairkit.png"
		}
	},
	
	['wash_tool'] = {
		label = 'Cleaning Kit Mechanic',
		weight = 5,
		stack = true,
		client = {
			image = "washtool.png"
		}
	},
	['sponge'] = {
		label = 'Sponge Mechanic',
		weight = 5,
		stack = true,
		client = {
			image = "sponge.png"
		}
	},
	['dirty_sponge'] = {
		label = 'Dirty Sponge Mechanic',
		weight = 5,
		stack = true,
		client = {
			image = "dirtsponge.png"
		}
	},
	['welding_torch'] = {
		label = 'Welding Torch Mechanic',
		weight = 5,
		stack = true,
		client = {
			image = "welding.png"
		}
	},
	['carkeys'] = {
		label = 'Car Key',
		weight = 5,
		stack = true,
		client = {
			event = 'sy_carkeys:llavesindatos',
			image = 'kunci.png'
		}
	},
	--DRUGS
	['coke_raw'] = {
		label = 'Coke Raw',
		description = "",
		weight = 15,
		stack = true
	},

	['coke_bag'] = {
		label = 'Coke Bag',
		description = "",
		weight = 25,
		stack = true
	},

	['coke_card'] = {
		label = 'Access Card',
		description = "Access Card for Coke Lab",
		weight = 50,
		stack = true
	},

	['plastic_bag'] = {
		label = 'Plastic Bag',
		description = "",
		weight = 10,
		stack = true
	},

	['weed_bud'] = {
		label = 'Biji Cubung',
		description = "",
		weight = 15,
		stack = true
	},

	['weed'] = {
		label = 'Weed',
		description = "",
		weight = 25,
		stack = true,
		close = true
	},

	['papirky'] = {
		label = 'Roller Cubung',
		description = "",
		weight = 10,
		stack = true
	},

	['joint'] = {
		label = 'Joint',
		description = "",
		weight = 1,
		stack = true
	},

	['weed_card'] = {
		label = 'Access Card',
		description = "Weed Acces Room",
		weight = 50,
		stack = true
	},

	--farming
	['tomato'] = {
		label = 'Tomat',
		weight = 70,
		client = {
			status = { hunger = 20000 },
			anim = 'eating',
			usetime = 2500,
			notification = 'You ate a delicious Tomato'
		},
	},
	['mango'] = {
		label = 'Mangga',
		weight = 200,
		client = {
			status = { hunger = 50000 },
			anim = 'eating',
			usetime = 2500,
			notification = 'You ate a delicious Mango'
		},
	},
	
	['orange'] = {
		label = 'Orange',
		weight = 200,
		client = {
			status = { hunger = 50000 },
			anim = 'eating',
			usetime = 2500,
			notification = 'You ate a delicious Orange'
		},
	},

	['pineapple'] = {
		label = 'Nanas',
		weight = 200,
		client = {
			status = { hunger = 50000 },
			anim = 'eating',
			usetime = 2500,
			notification = ''
		},
	},

	['strawberry'] = {
		label = 'Stroberi',
		weight = 200,
		client = {
			status = { hunger = 50000 },
			anim = 'eating',
			usetime = 2500,
			notification = ''
		},
	},

	['potato'] = {
		label = 'Kentang',
		weight = 200,
	},
	['pumpkin'] = {
		label = 'Labu',
		weight = 200,
	},

	['apple'] = {
		label = 'Apple',
		weight = 200,
		client = {
			status = { hunger = 50000 },
			anim = 'eating',
			usetime = 2500,
			notification = 'You ate a delicious Apple'
		},
	},
	['gauva'] = {
		label = 'Alpukat',
		weight = 200,
		client = {
			status = { hunger = 50000 },
			anim = 'eating',
			usetime = 2500,
			notification = 'You ate a delicious Gauva'
		},
	},


	['orangejuice'] = {
		label = 'Jeruk Juice',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = "prop_ld_flow_bottle", pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You drinks a delicious Orange Juice'
		}
	},
	['mangojuice'] = {
		label = 'Mangga Juice',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = "prop_ld_flow_bottle", pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You drinks a delicious Mango Juice'
		}
	},
	['applejuice'] = {
		label = 'Apple Juice',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = "prop_ld_flow_bottle", pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You drinks a delicious Apple Juice'
		}
	},
	['gauvajuice'] = {
		label = 'Alpukat Juice',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = "prop_ld_flow_bottle", pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You drinks a delicious Gauva Juice'
		}
	},


	['applewine'] = {
		label = 'Apple Wine',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = "prop_amb_beer_bottle", pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Im Drunk'
		}
	},

	['orangewine'] = {
		label = 'Jeruk Wine',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = "prop_amb_beer_bottle", pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Im Drunk'
		}
	},

	['gauvawine'] = {
		label = 'Alpukat Wine',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = "prop_amb_beer_bottle", pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Im Drunk'
		}
	},
	['mangowine'] = {
		label = 'Mangga Wine',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = "prop_amb_beer_bottle", pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Im Drunk'
		}
	},

	['tomato_ketchup'] = {
		label = 'Tamato Ketchup',
		weight = 250,
	},
	['tomato_paste'] = {
		label = 'Tamato Paste',
		weight = 250,
	},

	--Pancing
	['basic_rod'] = {
		label = 'Fishing rod',
		stack = false,
		weight = 250
	},

	['graphite_rod'] = {
		label = 'Graphite rod',
		stack = false,
		weight = 350
	},

	['titanium_rod'] = {
		label = 'Titanium rod',
		stack = false,
		weight = 450
	},

	['worms'] = {
		label = 'Worms',
		weight = 10
	},

	['artificial_bait'] = {
		label = 'Artificial bait',
		weight = 30
	},

	['anchovy'] = {
		label = 'Anchovy',
		weight = 20
	},

	['grouper'] = {
		label = 'Grouper',
		weight = 3500
	},

	['haddock'] = {
		label = 'Haddock',
		weight = 500
	},

	['mahi_mahi'] = {
		label = 'Mahi Mahi',
		weight = 3500
	},

	['piranha'] = {
		label = 'Piranha',
		weight = 1500
	},

	['red_snapper'] = {
		label = 'Red Snapper',
		weight = 2500
	},

	['salmon'] = {
		label = 'Salmon',
		weight = 1000
	},

	['shark'] = {
		label = 'Shark',
		weight = 7500
	},

	['trout'] = {
		label = 'Trout',
		weight = 750
	},

	['tuna'] = {
		label = 'Tuna',
		weight = 10000
	},

	--mainan
	['princes_bubblegum'] = {
		label = 'Pet Princess',
		weight = 1,
		client = {
			image = "princess.png",
		},
	},
	['wasabi_cat'] = {
		label = 'Pet Wasabi Cat',
		weight = 1,
		client = {
			image = "wasabicat.png",
		},
	},
	['toy_balbazar'] = {
		label = 'Balbazar Toy Kepala',
		weight = 1,
		client = {
			image = "toy_balbazar.png",
		},
	},
	['toy_balbazar2'] = {
		label = 'Balbazar Toy Bahu',
		weight = 1,
		client = {
			image = "toy_balbazar.png",
		},
	},
	['toy_charmander'] = {
		label = 'Charmander Toy',
		weight = 1,
		client = {
			image = "toy_charmander.png",
		},
	},
	['toy_fred'] = {
		label = 'Fred Toy',
		weight = 1,
		client = {
			image = "toy_fred.png",
		},
	},
	['toy_goku'] = {
		label = 'Goku Toy',
		weight = 1,
		client = {
			image = "toy_goku.png",
		},
	},
	['toy_nezuko'] = {
		label = 'Nezuko Toy',
		weight = 1,
		client = {
			image = "toy_nezuko.png",
		},
	},
	['toy_patrick'] = {
		label = 'Patrick Toy',
		weight = 1,
		client = {
			image = "toy_patrick.png",
		},
	},
	['toy_spongebob'] = {
		label = 'Spongebob Toy',
		weight = 1,
		client = {
			image = "toy_spongebob.png",
		},
	},
	['toy_squirtle'] = {
		label = 'Squirtle Toy Kepala',
		weight = 1,
		client = {
			image = "toy_squirtle.png",
		},
	},
	['toy_squirtle2'] = {
		label = 'Squirtle Toy Bahu',
		weight = 1,
		client = {
			image = "toy_squirtle.png",
		},
	},
	['toy_batman'] = {
		label = 'Batman Toy',
		weight = 1,
		client = {
			image = "toy_batman.png",
		},
	},
	-- Shared Items
	['skateboard'] = {['name'] = 'skateboard', ['label'] = 'Skateboard', ['weight'] = 100, ['type'] = 'item', ['image'] = 'skateboard.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil,['description'] = 'Skateboard'},


	--MAKANAN
	['sweetmadame'] = {
		label = 'Ayam Panggang',
		weight = 10,
		degrade = 7200,
		decay = true,
		client = {
			status = { hunger = 2000000 },
			anim = 'eating',
			usetime = 2500,
			image = "sweetmadame.png"
		},
	},
	--MINUMAN
	['wolfhookjuice'] = {
		label = 'Jus Anggur',
		weight = 10,
		degrade = 7200,
		decay = true,
		client = {
			status = { thirst = 2000000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			usetime = 2500,
			image = "wolfhookjuice.png"
		},
	},

	--hunting

	["leather"] = {
		label = "Leather",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = "leather.png"
		},
	},

	["meat"] = {
		label = "Meat",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = "meat.png"
		},
	},
	["speaker"] = {
		label = "speaker",
		weight = 1,
		stack = false,
		close = true,
		client = {
			image = "boombox.png"
		},
	},
	['jerrycan'] = {
		label = 'Jerrycan',
		weight = 2000,
		stack = false,
		close = true,
		description = '',
		client = {
			image = "fuel.png"
		}
	},

	["kq_wild_cannabis"] = {
		label = "Wild cannabis",
		weight = 1,
		stack = true,
		close = true,
	},

	["kq_empty_baggie"] = {
		label = "Empty baggie",
		weight = 1,
		stack = true,
		close = true,
	},

	["kq_packaged_wild_cannabis"] = {
		label = "Bagged wild cannabis",
		weight = 1,
		stack = true,
		close = true,
	},

	["grinder"] = {
		label = "Grinder",
		weight = 1000,
	},
	
	["gold_ingot"] = {
		label = "Gold Ingot",
		weight = 1000,
	},

	["jewels"] = {
		label = "Jewels",
		weight = 1,
		stack = true,
		close = true,
	},

	["id_card_f"] = {
		label = "Malicious Access Card",
		weight = 1,
		stack = true,
		close = true,
	},

	["secure_card"] = {
		label = "Secure ID Card",
		weight = 1,
		stack = true,
		close = true,
	},

	--lation mining

	['ls_pickaxe'] = {
		label = 'Pickaxe',
		weight = 100
	},
	
	['ls_copper_pickaxe'] = {
		label = 'Copper Pickaxe',
		weight = 100
	},
	
	['ls_iron_pickaxe'] = {
		label = 'Iron Pickaxe',
		weight = 100
	},
	
	['ls_silver_pickaxe'] = {
		label = 'Silver Pickaxe',
		weight = 100
	},
	
	['ls_gold_pickaxe'] = {
		label = 'Gold Pickaxe',
		weight = 100
	},
	
	['ls_copper_ore'] = {
		label = 'Copper Ore',
		weight = 100
	},
	
	['ls_coal_ore'] = {
		label = 'Coal Ore',
		weight = 100
	},
	
	['ls_iron_ore'] = {
		label = 'Iron Ore',
		weight = 100
	},
	
	['ls_silver_ore'] = {
		label = 'Silver Ore',
		weight = 100
	},
	
	['ls_gold_ore'] = {
		label = 'Gold Ore',
		weight = 100
	},
	
	['ls_copper_ingot'] = {
		label = 'Copper Ingot',
		weight = 500
	},
	
	['ls_iron_ingot'] = {
		label = 'Iron Ingot',
		weight = 500
	},
	
	['ls_silver_ingot'] = {
		label = 'Silver Ingot',
		weight = 500
	},
	
	['ls_gold_ingot'] = {
		label = 'Gold Ingot',
		weight = 500
	},

	["nos"] = {
		label = "NOS Bottle",
		weight = 200,
		stack = false,
		close = true,
		client = {
			disable = { move = true, car = true, combat = true },
			usetime = 3500,
			cancel = true,
			export = "ND_Nitro.nos"
		}
	},

	['big_bag'] = {
		label = "Tas Besar",
		weight = 0,
		consume = 0,
		client = {
			image = "tas.png"
		},
	},

	["boombox"] = {["name"] = "boombox", ["label"] = "Boombox", ["weight"] = 5000, ["type"] = "item",["image"] = "boombox.png",["unique"] = true,["useable"] = true,["shouldClose"] = true,["combinable"] = nil,["description"] = "Play some music anywhere."},
	
	['racing_gps'] = {['name'] = 'racing_gps', ['label'] = 'Racing GPS', ['weight'] = 500, ['type'] = 'item', ['image'] = 'racing_gps.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'Wroom wroom.'},
	
	--RAINMAD PERLENGKAPAN
	['key1'] = {
		label = "Keycard Door",
		weight = 0,
		consume = 0,
		description = "Untuk Membuka Pintu Masuk Casino",
		client = {
			image = "kunci1.png"
		},
	},
	['key2'] = {
		label = "Keycard Basement",
		weight = 0,
		consume = 0,
		description = "Untuk Membuka Pintu Basement Casino",
		client = {
			image = "kunci2.png"
		},
	},
	['coke_pooch'] = {
		label = "Cocaine",
		weight = 0,
		consume = 0,
		client = {
			image = "cocaine.png"
		},
	},
	['heavy_rope'] = {
		label = "Tali",
		weight = 0,
		consume = 0,
		client = {
			image = "rope.png"
		},
	},
	['laptop'] = {
		label = "Laptop",
		weight = 0,
		consume = 0,
		client = {
			image = "laptop.png"
		},
	},
	['hack_usb'] = {
		label = "USB Hack",
		weight = 0,
		consume = 0,
		client = {
			image = "usb_black.png"
		},
	},

	["heist_papers"] = {
		label = "Vehicle Papers",
		weight = 0,
		stack = false,
		close = true,
		description = "Delivery documents.",
		client = {
			image = "heist_papers.png",
		}
	},
	--RAINMAD LOOT
	['rolex'] = {
		label = "Jam Rolex",
		weight = 0,
		consume = 0,
		client = {
			image = "rolex.png"
		},
	},
	['ring'] = {
		label = "Ring",
		weight = 0,
		consume = 0,
		client = {
			image = "ring.png"
		},
	},
	['necklace'] = {
		label = "Necklace",
		weight = 0,
		consume = 0,
		client = {
			image = "necklace.png"
		},
	},

	--HEIST ITEMS RAINMAD
	['thermite_bomb'] = {['name'] = 'thermite_bomb', ['label'] = 'Thermite Bomb', ['weight'] = 100, ['type'] = 'item', ['image'] = 'thermite_bomb.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Explosive'},

	['c4_bomb'] = {['name'] = 'c4_bomb', ['label'] = 'C4 Bomb', ['weight'] = 220, ['type'] = 'item', ['image'] = 'c4_bomb.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Explosive'},

	["cutter"] = {["name"] = "cutter", ["label"] = "Cutter", ["weight"] = 150, ["type"] = "item", ["image"] = "cutter.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Cutter."},

	["bag"] = {["name"] = "bag", ["label"] = "Bag", ["weight"] = 10, ["type"] = "item", ["image"] = "bag.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Bag."},

	["gasmask"] = {["name"] = "gasmask", ["label"] = "Masker Gas", ["weight"] = 10, ["type"] = "item", ["image"] = "gasmask.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Melindungi Dari Asap Beracun"},

	['drill'] = {['name'] = 'drill', ['label'] = 'Drill', ['weight'] = 200, ['type'] = 'item', ['image'] = 'drill.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'The real deal...'},

	['goldbar'] = {['name'] = 'goldbar', ['label'] = 'Gold Bar', ['weight'] = 500, ['type'] = 'item', ['image'] = 'goldbar.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Looks pretty expensive to me'},

	['paintingg'] = {['name'] = 'paintingg', ['label'] = 'Painting G', ['weight'] = 120, ['type'] = 'item', ['image'] = 'paintingg.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Painting G'},

	['paintingf'] = {['name'] = 'paintingf', ['label'] = 'Painting F', ['weight'] = 120, ['type'] = 'item', ['image'] = 'paintingf.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Painting F'},



	['contract'] = {
		label = 'Contract',
		weight = 100,
		stack = true,
		client = {
			image = "contract.png"
		},
	},

	['casino_chips'] = {
		label = 'Casino Chip',
		weight = 0,
		stack = true,
		client = {
			image = "chip.png"
		}
	},

	--BBV ANTILAG
	['antilag_installer'] 			 = {['name'] = 'antilag_installer', 				['label'] = 'Antilag Installer', 				['weight'] = 5500, 		['type'] = 'item', 		['image'] = 'antilag_installer.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Marked for police seizure'},
	['antilag_remover'] 			 = {['name'] = 'antilag_remover', 				['label'] = 'Antilag Remover', 				['weight'] = 5500, 		['type'] = 'item', 		['image'] = 'antilag_remover.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Marked for police seizure'},

   	--- Eox Jobs 
	["mining_pickaxe"] = {
		label = 'Pick Axe',
		weight = 10,
		description = 'Untuk Menambang Batu'
	},
	["mining_stone"] = {
		label = 'Batu',
		weight = 10,
		description = 'Cocok di gunakan untuk melempar kepala orang.'
	},
	["mining_washedstone"] = {
		label = 'Batu Cuci',
		weight = 10,
		description = 'Apakah ini bisa di buat cincin?'
	},
	["lumber"] = {
		label = 'Kayu',
		weight = 10,
		description = 'Sepertinya ini untuk membuat rumah.'
	},
	["treebark"] = {
		label = 'Kulit Pohon',
		weight = 10,
		description = 'Sepertinya ini untuk membuat kertas.'
	},
	["woodplank"] = {
		label = 'Papan Kayu',
		weight = 10,
		description = 'Bisa di gunakan untuk membuat rumah.'
	},

	--HOUSING ITEMS
	["key_ent"] = {
		label = "Kunci Rumah",
		weight = 10,
		stack = false,
		close = true,
	},

	--mileage vehicle
    ['spark_plugs'] = {
        label = 'Spark Plugs',
        weight = 500,
        stack = true,
        close = true,
        description = 'Vehicle spark plugs',
        client = {
            event = 'wizard_vehiclemileage:client:changesparkplug'
        }
    },
    ['engine_oil'] = {
        label = 'Engine Oil',
        weight = 4000,
        stack = true,
        close = true,
        description = 'Engine oil for vehicle maintenance',
        client = {
            event = 'wizard_vehiclemileage:client:changeoil'
        }
    },
    ['oil_filter'] = {
        label = 'Oil Filter',
        weight = 500,
        stack = true,
        close = true,
        description = 'Oil filter for vehicle maintenance',
        client = {
            event = 'wizard_vehiclemileage:client:changeoilfilter'
        }
    },
    ['air_filter'] = {
        label = 'Air Filter',
        weight = 300,
        stack = true,
        close = true,
        description = 'Air filter for vehicle maintenance',
        client = {
            event = 'wizard_vehiclemileage:client:changeairfilter'
        }
    },
    ['tires'] = {
        label = 'Tires',
        weight = 2000,
        stack = true,
        close = true,
        description = 'Vehicle tires',
        client = {
            event = 'wizard_vehiclemileage:client:changetires'
        }
    },
    ['brake_parts'] = {
        label = 'Brake Parts',
        weight = 1000,
        stack = true,
        close = true,
        description = 'Vehicle brake parts',
        client = {
            event = 'wizard_vehiclemileage:client:changebrakes'
        }
    },
    ['suspension_parts'] = {
        label = 'Suspension Parts',
        weight = 1500,
        stack = true,
        close = true,
        description = 'Vehicle suspension parts',
        client = {
            event = 'wizard_vehiclemileage:client:changesuspension'
        }
    },
    ['clutch'] = {
        label = 'Clutch',
        weight = 1500,
        stack = true,
        close = true,
        description = 'Vehicle clutch',
        client = {
            event = 'wizard_vehiclemileage:client:changeclutch'
        }
    },

	--cham paint
		['chameleonpaint_161'] = {
		label = 'Monochrome Spray',
		weight = 1,
		stack = true,
		consume = 1,
		close = true,
		description = 223,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_162'] = {
		label = 'Night & Day Spray',
		weight = 1,
		stack = true,
		close = true,
		consume = 1,
		description = 224,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_163'] = {
		label = 'The Verlierer Spray',
		weight = 1,
		stack = true,
		consume = 1,
		close = true,
		description = 225,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_164'] = {
		label = 'Sprunk Extreme Spray',
		weight = 1,
		stack = true,
		consume = 1,
		close = true,
		description = 226,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_165'] = {
		label = 'Vice City Spray',
		weight = 1,
		stack = true,
		consume = 1,
		close = true,
		description = 227,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_166'] = {
		label = 'Synthwave Nights Spray',
		weight = 1,
		stack = true,
		consume = 1,
		close = true,
		description = 228,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_167'] = {
		label = 'Four Seasons Spray',
		weight = 1,
		stack = true,
		close = true,
		consume = 1,
		description = 229,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_168'] = {
		label = 'Maisonette 9 Throwback Spray',
		weight = 1,
		stack = true,
		consume = 1,
		close = true,
		description = 230 ,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_169'] = {
		label = 'Bubblegum Spray',
		weight = 1,
		consume = 1,
		stack = true,
		close = true,
		description = 231,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_170'] = {
		label = 'Full Rainbow Spray',
		weight = 1,
		stack = true,
		close = true,
		consume = 1,
		description = 232,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_171'] = {
		label = 'Sunset Spray',
		weight = 1,
		stack = true,
		close = true,
		consume = 1,
		description = 233,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_172'] = {
		label = 'The Seven Spray',
		weight = 1,
		stack = true,
		close = true,
		description = 234,
		consume = 1,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_173'] = {
		label = 'Kamen Rider Spray',
		weight = 1,
		stack = true,
		close = true,
		description = 235,
		consume = 1,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_174'] = {
		label = 'Chromatic Aberration Sprayool',
		weight = 1,
		stack = true,
		close = true,
		description = 236,
		consume = 1,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_175'] = {
		label = 'Its Christmas! Spray',
		weight = 1,
		stack = true,
		close = true,
		description = 237,
		consume = 1,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},
	['chameleonpaint_176'] = {
		label = 'Temperature Spray',
		weight = 1,
		stack = true,
		close = true,
		description = 238,
		consume = 1,
		client = {
			export = 'chameleonpaint.chameleonpaint',
		},
	},

	--farming lation
	['ls_shovel'] = {
    label = 'shovel',
    weight = 100
	},

	['ls_copper_shovel'] = {
		label = 'Copper shovel',
		weight = 100
	},

	['ls_iron_shovel'] = {
		label = 'Iron shovel',
		weight = 100
	},

	['ls_silver_shovel'] = {
		label = 'Silver shovel',
		weight = 100
	},

	['ls_gold_shovel'] = {
		label = 'Gold shovel',
		weight = 100
	},

	--ID Card
	['id_card'] = {
		label = 'ID card',
	},

	['license_drive'] = {
		label = 'Driving license',
	},

	['license_weapon'] = {
		label = 'Weapon license',
	},

	--polaroid camera
	
	["tripolar_camera"] = {
    label = "tripolar camera",
    weight = 5000,
    stack = false,
    close = true,
    description = "Did we just go back in time?",
    client = {
        image = "tripolar.png",
    	}
	},
	["tripolar_paper"] = {
		label = "tripolar paper",
		weight = 10,
		stack = true,
		close = false,
		description = "Some paper",
		client = {
			image = "photo.png",
		}
	},
	["tripolar"] = {
		label = "tripolar image",
		weight = 10,
		stack = false,
		close = true,
		description = "Cool image bro",
		client = {
			image = "photo.png",
			export = "mtc-tripolar.showitem"
		}
	},
	--PETANI JOB
	--SEEDS

	["cabbage_seed"] = {
		label = "Bibit Kubis",
		weight = 20,
		stack = true,
		close = true,
	},
	["tomato_seed"] = {
		label = "Bibit Tomat",
		weight = 20,
		stack = true,
		close = true,
	},
	["corn_seed"] = {
		label = "Bibit Jagung",
		weight = 20,
		stack = true,
		close = true,
	},
	["onion_seed"] = {
		label = "Bibit Bawang",
		weight = 20,
		stack = true,
		close = true,
	},


	--HARVEST ITEMS
	
	["cabbage"] = {
		label = "Cabbage",
		weight = 50,
		stack = true,
		close = true,
	},
	["tomato"] = {
		label = "Tomato",
		weight = 50,
		stack = true,
		close = true,
	},
	["corn"] = {
		label = "Corn",
		weight = 50,
		stack = true,
		close = true,
	},
	["onion"] = {
		label = "Onion",
		weight = 50,
		stack = true,
		close = true,
	},

	--illegal bisnis
	-- ox_inventory items
	['chemical'] = {
		label = 'Chemicals',
		weight = 100,
		stack = true,
		close = true,
	},
	['meth'] = {
		label = 'Methamphetamine',
		weight = 100,
		stack = true,
		close = true,
	},
	['coca_leaf'] = {
		label = 'Coca Leaves',
		weight = 100,
		stack = true,
		close = true,
	},
	['cocaine'] = {
		label = 'Cocaine',
		weight = 100,
		stack = true,
		close = true,
	},
	['weed_seed'] = {
		label = 'Weed Seeds',
		weight = 50,
		stack = true,
		close = true,
	},
	['weed'] = {
		label = 'Marijuana',
		weight = 100,
		stack = true,
		close = true,
	},
	['diving_gear'] = {
		label = 'Diving Gear',
		weight = 1000,
		stack = false,
		close = true,
		description = 'Scuba mask and tank for underwater exploration',
		consume = 0,
		client = {
		event = "peleg-divegear:client:useGear"
		}
	},
	['lscm'] = {
	label = 'Golf Club Membership',
	weight = 1,
	stack = false,
	close = true,
	description = 'The Most Prestigious Golf Club'
	},

	--peternakan

	['milk'] = {
		label = 'Susu Segar',
		weight = 100,
		stack = true,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			usetime = 2500,
			image = "susu.png"
		},
	},
	["cowmeat"] = {
		label = "Daging Sapi",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "rawmeat.png"
		},
	},
	["slaughtered_cow"] = {
		label = "Daging Sapi Potong",
		weight = 100,
		stack = true,
	},
	["packaged_cow"] = {
		label = "Paket Daging Sapi",
		weight = 100,
		stack = true,
	},
	--BERBURU
	-- ITEM HUNTING
	['meat_deer'] = { label = 'Daging Rusa', weight = 500, stack = true },
	['skin_deer'] = { label = 'Kulit Rusa', weight = 1000, stack = true },
	
	['meat_boar'] = { label = 'Daging Babi Hutan', weight = 600, stack = true },
	['skin_boar'] = { label = 'Kulit Babi Hutan', weight = 1200, stack = true },
	
	['meat_coyote'] = { label = 'Daging Coyote', weight = 400, stack = true },
	['skin_coyote'] = { label = 'Kulit Coyote', weight = 800, stack = true },
	
	['meat_lion'] = { label = 'Daging Singa Gunung', weight = 800, stack = true },
	['skin_lion'] = { label = 'Kulit Singa Gunung', weight = 1500, stack = true },

}