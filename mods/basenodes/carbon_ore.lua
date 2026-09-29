--- Basic carbon-based ores and materials.
core.register_alias("mapgen_stone_with_coal", "basenodes:stone_with_coal")

core.register_node("basenodes:stone_with_coal", {
	description = "Carbon Ore",
	tiles = {"default_stone.png^default_mineral_coal.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'basenodes:coal_lump',
	sounds = basenodes.node_sound_stone_defaults(),
})

core.register_craftitem("basenodes:coal_lump", {
	description = "Carbon Lump",
	inventory_image = "default_coal_lump.png",
})

core.register_ore({
	ore_type       = "scatter",
	ore            = "basenodes:stone_with_coal",
	wherein        = "basenodes:stone",
	clust_scarcity = 8*8*8,
	clust_num_ores = 8,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = 64,
})

core.register_ore({
	ore_type       = "scatter",
	ore            = "basenodes:stone_with_coal",
	wherein        = "basenodes:stone",
	clust_scarcity = 24*24*24,
	clust_num_ores = 27,
	clust_size     = 6,
	height_min     = -31000,
	height_max     = 0,
	flags          = "absheight",
})
