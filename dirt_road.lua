local slope_cbox = {
	type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5, 0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25, 0.5,     0, 0.5},
		{-0.5,     0,     0, 0.5,  0.25, 0.5},
		{-0.5,  0.25,  0.25, 0.5,   0.5, 0.5}
	}
}

--Dirt Road
minetest.register_node("mypaths:dirt_road", {
	description = "Dirt Road",
	tile_images = {"mypaths_dirt_road.png"},
	drawtype = "normal",
	groups = {crumbly = 2},
	sounds = default.node_sound_dirt_defaults(),
	})
--Craft
minetest.register_craft({
	type = "cooking",
	output = "mypaths:dirt_road 1",
	recipe = "default:dirt",
})

--Dirt Road Side
minetest.register_node("mypaths:dirt_road_side", {
	description = "Dirt Road Side",
	tile_images = {"mypaths_dirt_road_side.png",
			"mypaths_dirt_road_side.png",
			"mypaths_grass.png",
			"mypaths_dirt_road.png",
			"mypaths_dirt_road_side2.png",
			"mypaths_dirt_road_side.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {crumbly = 2},
	sounds = default.node_sound_dirt_defaults(),
	})
--Craft
minetest.register_craft({
	output = "mypaths:dirt_road_side 9",
	recipe = {
		{"mypaths:dirt_road", "mypaths:dirt_road","default:dirt"},
		{"mypaths:dirt_road", "mypaths:dirt_road","default:dirt"},
		{"mypaths:dirt_road", "mypaths:dirt_road","default:dirt"},
	}
})

--Dirt Road Inside Corner
minetest.register_node("mypaths:dirt_road_icorner", {
	description = "Dirt Road Inside Corner",
	tile_images = {"mypaths_dirt_road_icorner.png",
			"mypaths_dirt_road_icorner.png^[transformR90",
			"mypaths_dirt_road_side2.png",
			"mypaths_dirt_road.png",
			"mypaths_dirt_road.png",
			"mypaths_dirt_road_side.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {crumbly = 2},
	sounds = default.node_sound_dirt_defaults(),
	})
--Craft
minetest.register_craft({
	output = "mypaths:dirt_road_icorner 9",
	recipe = {
		{"mypaths:dirt_road", "mypaths:dirt_road","mypaths:dirt_road"},
		{"mypaths:dirt_road", "mypaths:dirt_road","mypaths:dirt_road"},
		{"mypaths:dirt_road", "mypaths:dirt_road","default:dirt"},
	}
})

--Dirt Road Outside Corner
minetest.register_node("mypaths:dirt_road_ocorner", {
	description = "Dirt Road Outside Corner",
	tile_images = {"mypaths_dirt_road_ocorner.png",
			"mypaths_dirt_road_ocorner.png^[transformR270",
			"mypaths_grass.png",
			"mypaths_dirt_road_side2.png",
			"mypaths_grass.png",
			"mypaths_dirt_road_side.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {crumbly = 2},
	sounds = default.node_sound_dirt_defaults(),
	})
--Craft
minetest.register_craft({
	output = "mypaths:dirt_road_ocorner 9",
	recipe = {
		{"default:dirt", "default:dirt","default:dirt"},
		{"mypaths:dirt_road", "mypaths:dirt_road","default:dirt"},
		{"mypaths:dirt_road", "mypaths:dirt_road","default:dirt"},
	}
})

minetest.register_node("mypaths:dirt_road_slope", {
	description = "Dirt Road Edge Slope",
	drawtype = "mesh",
	mesh = "slope_test_slope.obj",
	tiles = {"mypaths_path_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_dirt_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
minetest.register_node("mypaths:dirt_road_slope2", {
	description = "Dirt Road Edge Slope 2",
	drawtype = "mesh",
	mesh = "slope_test_slope.obj",
	tiles = {"mypaths_path_mesh2.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_dirt_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
minetest.register_node("mypaths:dirt_dirt_slope", {
	description = "Dirt Road Slope",
	drawtype = "mesh",
	mesh = "slope_test_slope.obj",
	tiles = {"mypaths_dirt_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_dirt_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
