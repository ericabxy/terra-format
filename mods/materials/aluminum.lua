minetest.register_alias("mapgen_tree", "materials:aluminum")

core.register_node("materials:aluminum", {
	description = ("Aluminum"),
	tiles = {"materials_aluminum.png"},
	groups = {choppy = 2, oddly_breakable_by_hand = 1},
	--sounds = default.node_sound_wood_defaults(),
})

core.register_decoration({
	name = "materials:aluminum",
	deco_type = "simple",
	place_on = {"materials:bauxite"},
	sidelen = 16,
	noise_params = {
		offset = 0.024,
		scale = 0.015,
		spread = {x = 100, y = 100, z = 100},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	y_max = 31000,
	y_min = 1,
	decoration = "materials:aluminum",
	height = 3,
        height_max = 5,
})
