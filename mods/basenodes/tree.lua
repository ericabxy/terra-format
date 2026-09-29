core.register_node("basenodes:tree", {
	description = "Tree",
	tiles = {"default_tree_top.png", "default_tree_top.png", "default_tree.png"},
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = basenodes.node_sound_wood_defaults(),
})

core.register_node("basenodes:leaves", {
	description = "Leaves",
	drawtype = "allfaces_optional",
	visual_scale = 1.3,
	tiles = {"default_leaves.png"},
	paramtype = "light",
	groups = {snappy=3, leafdecay=3, flammable=2, leaves=1},
	use_texture_alpha = true,
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'basenodes:sapling'},
				rarity = 20,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'basenodes:leaves'},
			}
		}
	},
	sounds = basenodes.node_sound_leaves_defaults(),
})

core.register_node("basenodes:sapling", {
	description = "Sapling",
	drawtype = "nodebox",
	node_box = {
    type = "fixed",
    fixed = {
      {-0.5/5, -2.5/5, -0.5/5, 0.5/5, 0.5/5, 0.5/5},
      {-0.5/5, -0.5/5, -1.5/5, 1.5/5, 1.5/5, 0.5/5},
      {-1.5/5, 0.5/5, -0.5/5, 0.5/5, 2.5/5, 1.5/5},
      {-0.5/5, -0.5/5, 0.5/5, 1.5/5, 0.5/5, 1.5/5},
      {-1.5/5, 0.5/5, -1.5/5, -0.5/5, 1.5/5, -0.5/5},
    }
  },
	visual_scale = 1.0,
	tiles = {"default_sapling.png"},
	paramtype = "light",
	walkable = false,
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1},
	sounds = basenodes.node_sound_leaves_defaults(),
})

core.register_node("basenodes:apple", {
	description = "Apple",
	drawtype = "nodebox",
	visual_scale = 1.0,
	tiles = {"default_apple_top.png", "default_apple.png", "default_apple.png", "default_apple.png", "default_apple.png", "default_apple.png"},
	node_box = { 
    type = "fixed",
    fixed = {
      {-1.5/5, -1.5/5, -1.5/5, 1.5/5, 1.5/5, 1.5/5},
      {-0.5/5, 1.5/5, -0.5/5, 0.5/5, 2.5/5, 0.5/5},
    }
  },
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3,dig_immediate=3,flammable=2,leafdecay=3,leafdecay_drop=1},
	on_use = core.item_eat(1),
	sounds = basenodes.node_sound_leaves_defaults(),
	after_place_node = function(pos, placer, itemstack)
		if placer:is_player() then
			core.set_node(pos, {name="basenodes:apple", param2=1})
		end
	end,
})
