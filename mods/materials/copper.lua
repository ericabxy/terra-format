core.register_node("materials:stone_with_copper", {
	description = ("Copper Ore"),
	tiles = {"default_stone.png^materials_copper_ingot.png"},
	groups = {cracky = 2},
	drop = "materials:copper_lump",
	--sounds = default.node_sound_stone_defaults(),
})

core.register_ore({
	ore_type       = "scatter",
	ore            = "materials:stone_with_copper",
	wherein        = "basenodes:stone",
	clust_scarcity = 12*12*12,
	clust_num_ores = 4,
	clust_size     = 3,
	height_min     = -15,
	height_max     = 2,
})

core.register_ore({
	ore_type       = "scatter",
	ore            = "materials:stone_with_copper",
	wherein        = "basenodes:stone",
	clust_scarcity = 9*9*9,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -63,
	height_max     = -16,
})
