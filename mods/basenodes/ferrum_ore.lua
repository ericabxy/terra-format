core.register_node("basenodes:stone_with_iron", {
	description = "Ferrum Ore",
	tiles = {"default_stone.png^default_mineral_iron.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = 'basenodes:iron_lump',
	sounds = basenodes.node_sound_stone_defaults(),
})

core.register_craftitem("basenodes:iron_lump", {
	description = "Ferrum Lump",
	inventory_image = "default_iron_lump.png",
})

core.register_ore({
	ore_type       = "scatter",
	ore            = "basenodes:stone_with_iron",
	wherein        = "basenodes:stone",
	clust_scarcity = 12*12*12,
	clust_num_ores = 3,
	clust_size     = 2,
	height_min     = -15,
	height_max     = 2,
})

core.register_ore({
	ore_type       = "scatter",
	ore            = "basenodes:stone_with_iron",
	wherein        = "basenodes:stone",
	clust_scarcity = 9*9*9,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -63,
	height_max     = -16,
})

core.register_ore({
	ore_type       = "scatter",
	ore            = "basenodes:stone_with_iron",
	wherein        = "basenodes:stone",
	clust_scarcity = 7*7*7,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -64,
	flags          = "absheight",
})

core.register_ore({
	ore_type       = "scatter",
	ore            = "basenodes:stone_with_iron",
	wherein        = "basenodes:stone",
	clust_scarcity = 24*24*24,
	clust_num_ores = 27,
	clust_size     = 6,
	height_min     = -31000,
	height_max     = -64,
	flags          = "absheight",
})
