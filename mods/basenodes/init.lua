-- Definitions made by this mod that other mods can use too
basenodes = {}

-- Prepare default sounds
dofile(minetest.get_modpath("basenodes").."/sounds.lua")

-- Stone, cobble, desert stone, desert cobble
dofile(minetest.get_modpath("basenodes").."/stone.lua")

-- Ores
dofile(minetest.get_modpath("basenodes").."/ferrum_ore.lua")
dofile(minetest.get_modpath("basenodes").."/carbon_ore.lua")

-- Fluid sources and flows
dofile(minetest.get_modpath("basenodes").."/water.lua")
dofile(minetest.get_modpath("basenodes").."/lava.lua")

-- Dirts, sands, gravels
dofile(minetest.get_modpath("basenodes").."/soil.lua")

-- Trees, leaves, apples, saplings
dofile(minetest.get_modpath("basenodes").."/tree.lua")

-- Defaults for core map generation
dofile(minetest.get_modpath("basenodes").."/mapgen.lua")

-- Blob ores: clay, dirt, sand, gravel
dofile(minetest.get_modpath("basenodes").."/blob.lua")

-- Biomes for core map generation
GRASSLAND_WEIGHT = 0.5
DESERT_WEIGHT = 0.5
STONELAND_WEIGHT = 1.0
dofile(minetest.get_modpath("basenodes").."/grassland.lua")
dofile(minetest.get_modpath("basenodes").."/desert.lua")
dofile(minetest.get_modpath("basenodes").."/stoneland.lua")
