core.register_node("materials:silicon", {
	description = ("Silicon"),
	tiles = {"materials_silicon.png"},
	groups = {crumbly = 3, falling_node = 1, sand = 1},
	--sounds = default.node_sound_sand_defaults(),
	_tnt_loss = 2,
})

core.register_ore({
	ore_type        = "blob",
	ore             = "materials:silicon",
	wherein         = {"basenodes:stone"},
	clust_scarcity  = 16 * 16 * 16,
	clust_size      = 5,
	y_max           = 0,
	y_min           = -31,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 2316,
		octaves = 1,
		persist = 0.0
	},
})
