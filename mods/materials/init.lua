core.register_alias("mapgen_dirt", "materials:bauxite")

core.register_node("materials:bauxite", {
	description = "Bauxite",
	tiles = {"materials_bauxite.png"},
	is_ground_content = true,
	groups = {crumbly=3, falling_node=1, sand=1},
	--sounds = basenodes.node_sound_sand_defaults(),
})

core.register_ore({
	ore_type        = "blob",
	ore             = "materials:bauxite",
	wherein         = {"basenodes:stone"},
	clust_scarcity  = 64 * 64 * 64,
	clust_size      = 32,
	y_max           = 31000,
	y_min           = -31,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 17676,
		octaves = 1,
		persist = 0.0
	},
})

dofile(core.get_modpath("materials").."/aluminum.lua")
dofile(core.get_modpath("materials").."/copper.lua")
dofile(core.get_modpath("materials").."/silicon.lua")
