core.register_alias("mapgen_cobble", "basenodes:cobble")
core.register_alias("mapgen_mossycobble", "basenodes:mossycobble")

minetest.register_node("basenodes:cobble", {
	description = "Cobbled Bitstone",
	tiles = {"default_cobble.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=2},
	--sounds = default.node_sound_stone_defaults(),
})

core.register_node("basenodes:mossycobble", {
	description = "Mossy bitstone",
	tiles = {"default_mossycobble.png"},
	is_ground_content = true,
	groups = {cracky=3},
	--sounds = default.node_sound_stone_defaults(),
})

