core.register_node("obsidian:blue_block", {
	description = ("Steel Block"),
	tiles = {"obsidian_blue_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	--sounds = default.node_sound_metal_defaults(),
})
--[[
core.register_biome({
    name = "obsidian_land",
    node_top = "obsidian:blue_block",
    depth_top = 1,
    node_filler = "obsidian:blue_block",
    depth_filler = 3,
    y_max = 1000,
    y_min = -3,
    heat_point = 0,
    humidity_point = 75,
    weight = 0.1
})--]]
