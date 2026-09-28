--- Silicon deposits throughout the mapgen.
core.register_alias("mapgen_dirt", "materials:silicon")

core.register_node("materials:silicon", {
	description = "Silicon",
	tiles = {"materials_silicon.png"},
	is_ground_content = true,
	groups = {crumbly=3, falling_node=1, sand=1},
	--sounds = basenodes.node_sound_sand_defaults(),
})

core.register_ore({
	ore_type       = "scatter",
	ore            = "materials:silicon",
	wherein        = "materials:stone",
	clust_scarcity = 20*20*20,
	clust_num_ores = 5*5*3,
	clust_size     = 5,
	height_min     = 500,
	height_max     = 31000,
})
