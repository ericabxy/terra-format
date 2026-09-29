--
-- Register stone nodes
--

core.register_node("basenodes:stone", {
	description = ("Stone"),
	tiles = {"default_stone.png"},
	groups = {cracky = 3, stone = 1},
	drop = "basenodes:cobble",
	legacy_mineral = true,
	sounds = basenodes.node_sound_stone_defaults(),
})

core.register_node("basenodes:cobble", {
	description = ("Cobblestone"),
	tiles = {"default_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = basenodes.node_sound_stone_defaults(),
	_tnt_loss = 4,
})

core.register_node("basenodes:desert_stone", {
	description = ("Desert Stone"),
	tiles = {"default_desert_stone.png"},
	groups = {cracky = 3, stone = 1},
	drop = "basenodes:desert_cobble",
	legacy_mineral = true,
	sounds = basenodes.node_sound_stone_defaults(),
})

core.register_node("basenodes:desert_cobble", {
	description = ("Desert Cobblestone"),
	tiles = {"default_desert_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = basenodes.node_sound_stone_defaults(),
	_tnt_loss = 4,
})
