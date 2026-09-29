print('This file will be run at load time!')

core.register_node("basenodes:dirt", {
	description = "Dirt",
	tiles = {"default_dirt.png"},
	is_ground_content = true,
	groups = {crumbly=3,soil=1},
	--sounds = default.node_sound_dirt_defaults(),
})

core.register_node("basenodes:sand", {
	description = "Sand",
	tiles = {"default_sand.png"},
	is_ground_content = true,
	groups = {crumbly=3, falling_node=1, sand=1},
	--sounds = default.node_sound_sand_defaults(),
})

core.register_node('basenodes:stone', {
	description = 'Bitstone',
	tiles = {'default_stone.png'},
	groups = {cracky = 3}
})

core.register_node('basenodes:water', {
	description = 'Water',
	drawtype = 'liquid',
	tiles = {'water.png'},
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	liquidtype = 'source',
	liquid_viscosity = 1,
	groups = {water = 3, liquid = 3, cools_lava = 1}
})

core.register_node("basenodes:water_source", {
	description = "Water Source".."\n"..
		"Swimmable, spreading, renewable liquid".."\n"..
		"Drowning damage: 1",
	drawtype = "liquid",
	waving = 3,
	tiles = {"default_water.png".."^[opacity:" .. 160},
	special_tiles = {
		{name = "default_water.png".."^[opacity:" .. 160, backface_culling = false},
		{name = "default_water.png".."^[opacity:" .. 160, backface_culling = true},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "basenodes:water_flowing",
	liquid_alternative_source = "basenodes:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 64, r = 100, g = 100, b = 200},
	post_effect_color_shaded = true,
	groups = {water = 3, liquid = 3},
})

core.register_node("basenodes:water_flowing", {
	description = "Flowing Water".."\n"..
		"Swimmable, spreading, renewable liquid".."\n"..
		"Drowning damage: 1",
	drawtype = "flowingliquid",
	waving = 3,
	tiles = {"default_water_flowing_animated.png"},
	special_tiles = {
		{name = "default_water_flowing_animated.png".."^[opacity:" .. 160,
			backface_culling = false},
		{name = "default_water_flowing_animated.png".."^[opacity:" .. 160,
			backface_culling = false},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "basenodes:water_flowing",
	liquid_alternative_source = "basenodes:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 64, r = 100, g = 100, b = 200},
	post_effect_color_shaded = true,
	groups = {water = 3, liquid = 3},
})

-- ESSENTIAL node aliases
-- Basic nodes
core.register_alias("mapgen_stone", "basenodes:stone")
core.register_alias("mapgen_water_source", "basenodes:water_source")
core.register_alias("mapgen_river_water_source", "basenodes:water")

-- Additional essential aliases for v6
core.register_alias("mapgen_dirt", "basenodes:dirt")
core.register_alias("mapgen_dirt_with_grass", "basenodes:dirt_with_grass")
core.register_alias("mapgen_sand", "basenodes:sand")

-- Basic biome(s)
core.register_biome({
    name = "stoneland",
    node_top = "basenodes:stone",
    depth_top = 1,
    node_filler = "basenodes:stone",
    depth_filler = 3,
    y_max = 1000,
    y_min = -3,
    heat_point = 50,
    humidity_point = 50,
})

core.register_biome({
    name = "dirtland",
    node_top = "basenodes:dirt",
    depth_top = 1,
    node_filler = "basenodes:dirt",
    depth_filler = 3,
    y_max = 1000,
    y_min = -3,
    heat_point = 50,
    humidity_point = 50,
})


-- Load additional nodes and materials.
dofile(minetest.get_modpath("basenodes").."/carbon.lua")
dofile(minetest.get_modpath("basenodes").."/cobble.lua")
dofile(minetest.get_modpath("basenodes").."/ferrum.lua")
