local slope_cbox = {
	type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5, 0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25, 0.5,     0, 0.5},
		{-0.5,     0,     0, 0.5,  0.25, 0.5},
		{-0.5,  0.25,  0.25, 0.5,   0.5, 0.5}
	}
}

local slope_cbox_long = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5,   -1.5,  0.5, -0.375, 0.5},  --  NodeBox1
		{-0.5, -0.375, -1.25, 0.5, -0.25,  0.5},  --  NodeBox2
		{-0.5, -0.25,  -1,    0.5, -0.125, 0.5},  --  NodeBox3
		{-0.5, -0.125, -0.75, 0.5,  0,     0.5},  --  NodeBox4
		{-0.5,  0,     -0.5,  0.5,  0.125, 0.5},  --  NodeBox5
		{-0.5,  0.125, -0.25, 0.5,  0.25,  0.5},  --  NodeBox6
		{-0.5,  0.25,   0,    0.5,  0.375, 0.5},  --  NodeBox7
		{-0.5,  0.375,  0.25, 0.5,  0.5,   0.5},  --  NodeBox8
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
--Dirt Road Side Angle
minetest.register_node("mypaths:dirt_road_side_angle", {
	description = "Dirt Road Side Angle",
	tile_images = {"mypaths_dirt_road_side_angle.png",
			"mypaths_grass.png",
			"mypaths_grass.png",
			"mypaths_dirt_road.png",
			"mypaths_dirt_road.png",
			"mypaths_grass.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {crumbly = 2},
	sounds = default.node_sound_dirt_defaults(),
	})
--Craft
minetest.register_craft({
	output = "mypaths:dirt_road_side_angle 9",
	recipe = {
		{"default:dirt", "default:dirt","default:dirt"},
		{"mypaths:dirt_road", "default:dirt","default:dirt"},
		{"mypaths:dirt_road", "mypaths:dirt_road","default:dirt"},
	}
})
--Dirt Road Side Angle End
minetest.register_node("mypaths:dirt_road_side_angle_end1", {
	description = "Dirt Road Angle End 1",
	tile_images = {"mypaths_dirt_road_side_angle_end1.png",
			"mypaths_dirt_road_side_angle_end2.png^[transformR180",
			"mypaths_grass.png",
			"mypaths_dirt_road.png",
			"mypaths_dirt_road_side.png^[transformR180",
			"mypaths_grass.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {crumbly = 2},
	sounds = default.node_sound_dirt_defaults(),
	})
--Craft
minetest.register_craft({
	output = "mypaths:dirt_road_side_angle_end1 9",
	recipe = {
		{"default:dirt", "default:dirt","default:dirt"},
		{"default:dirt", "default:dirt","default:dirt"},
		{"mypaths:dirt_road", "mypaths:dirt_road","default:dirt"},
	}
})
--Dirt Road Side Angle End
minetest.register_node("mypaths:dirt_road_side_angle_end2", {
	description = "Dirt Road Angle End 2",
	tile_images = {"mypaths_dirt_road_side_angle_end2.png",
			"mypaths_dirt_road_side_angle_end2.png^[transformFY",
			"mypaths_dirt_road.png",
			"mypaths_grass.png",
			"mypaths_dirt_road_side.png",
			"mypaths_grass.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {crumbly = 2},
	sounds = default.node_sound_dirt_defaults(),
	})
--Craft
minetest.register_craft({
	output = "mypaths:dirt_road_side_angle_end2 9",
	recipe = {
		{"default:dirt", "default:dirt","default:dirt"},
		{"default:dirt", "default:dirt","default:dirt"},
		{"default:dirt", "mypaths:dirt_road","mypaths:dirt_road"},
	}
})
--Dirt Road Side Angle End
minetest.register_node("mypaths:dirt_road_side_angle_end3", {
	description = "Dirt Road Angle End 3",
	tile_images = {"mypaths_dirt_road_side_angle_end3.png",
			"mypaths_dirt_road_side_angle_end4.png^[transformR180",
			"mypaths_dirt_road.png",
			"mypaths_dirt_road_side.png",
			"mypaths_dirt_road.png",
			"mypaths_grass.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {crumbly = 2},
	sounds = default.node_sound_dirt_defaults(),
	})
--Craft
minetest.register_craft({
	output = "mypaths:dirt_road_side_angle_end3 9",
	recipe = {
		{"default:dirt", "default:dirt","mypaths:dirt_road"},
		{"mypaths:dirt_road", "mypaths:dirt_road","mypaths:dirt_road"},
		{"mypaths:dirt_road", "mypaths:dirt_road","mypaths:dirt_road"},
	}
})
--Dirt Road Side Angle End
minetest.register_node("mypaths:dirt_road_side_angle_end4", {
	description = "Dirt Road Angle End 4",
	tile_images = {"mypaths_dirt_road_side_angle_end4.png",
			"mypaths_dirt_road_side_angle_end3.png^[transformR180",
			"mypaths_dirt_road_side.png^[transformR180",
			"mypaths_dirt_road.png",
			"mypaths_dirt_road.png",
			"mypaths_grass.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {crumbly = 2},
	sounds = default.node_sound_dirt_defaults(),
	})
--Craft
minetest.register_craft({
	output = "mypaths:dirt_road_side_angle_end4 9",
	recipe = {
		{"mypaths:dirt_road", "default:dirt","default:dirt"},
		{"mypaths:dirt_road", "mypaths:dirt_road","mypaths:dirt_road"},
		{"mypaths:dirt_road", "mypaths:dirt_road","mypaths:dirt_road"},
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
--Dirt Road Side Slope
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
--Craft
minetest.register_craft({
	output = "mypaths:dirt_road_slope 6",
	recipe = {
		{"", "","mypaths:dirt_road_side"},
		{"", "mypaths:dirt_road_side","mypaths:dirt_road_side"},
		{"mypaths:dirt_road_side", "mypaths:dirt_road_side","mypaths:dirt_road_side"},
	}
})

--Dirt Road Side Slope 2
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
--Craft
minetest.register_craft({
	output = "mypaths:dirt_road_slope2 6",
	recipe = {
		{"mypaths:dirt_road_side", "",""},
		{"mypaths:dirt_road_side", "mypaths:dirt_road_side",""},
		{"mypaths:dirt_road_side", "mypaths:dirt_road_side","mypaths:dirt_road_side"},
	}
})

--Dirt Road Slope
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
--Craft
minetest.register_craft({
	output = "mypaths:dirt_dirt_slope 6",
	recipe = {
		{"", "","mypaths:dirt_road"},
		{"", "mypaths:dirt_road","mypaths:dirt_road"},
		{"mypaths:dirt_road", "mypaths:dirt_road","mypaths:dirt_road"},
	}
})
--Dirt Road Slope Long
minetest.register_node("mypaths:dirt_slope_long", {
	description = "Dirt Long slope",
	drawtype = "mesh",
	mesh = "slope_test_slope_long.obj",
	tiles = {"mypaths_dirt_long_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
--Craft
minetest.register_craft({
	output = "mypaths:dirt_slope_long 1",
	recipe = {
		{"mypaths:dirt_dirt_slope", "mypaths:dirt_dirt_slope",""},
		{"", "",""},
		{"", "",""},
	}
})

--Dirt Road Side Slope Long
minetest.register_node("mypaths:dirt_side_slope_long", {
	description = "Dirt Side Long slope",
	drawtype = "mesh",
	mesh = "slope_test_slope_long.obj",
	tiles = {"mypaths_dirt_side_long_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_dirt_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
--Craft
minetest.register_craft({
	output = "mypaths:dirt_side_slope_long 1",
	recipe = {
		{"mypaths:dirt_road_slope", "mypaths:dirt_road_slope",""},
		{"", "",""},
		{"", "",""},
	}
})

--Dirt Road Side Slope Long2
minetest.register_node("mypaths:dirt_side_slope_long2", {
	description = "Dirt Side Long slope 2",
	drawtype = "mesh",
	mesh = "slope_test_slope_long.obj",
	tiles = {"mypaths_dirt_side_long_mesh2.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_dirt_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
--Craft
minetest.register_craft({
	output = "mypaths:dirt_side_slope_long2 1",
	recipe = {
		{"mypaths:dirt_road_slope2", "mypaths:dirt_road_slope2",""},
		{"", "",""},
		{"", "",""},
	}
})
