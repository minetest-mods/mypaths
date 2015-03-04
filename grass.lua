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

local icorner_cbox = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5}, -- NodeBox5
		{-0.5, -0.5, -0.25, 0.5, 0, 0.5}, -- NodeBox6
		{-0.5, -0.5, -0.5, 0.25, 0, 0.5}, -- NodeBox7
		{-0.5, 0, -0.5, 0, 0.25, 0.5}, -- NodeBox8
		{-0.5, 0, 0, 0.5, 0.25, 0.5}, -- NodeBox9
		{-0.5, 0.25, 0.25, 0.5, 0.5, 0.5}, -- NodeBox10
		{-0.5, 0.25, -0.5, -0.25, 0.5, 0.5}, -- NodeBox11
	}
}

local ocorner_cbox = {
	type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5,   0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25,  0.25,     0, 0.5},
		{-0.5,     0,     0,     0,  0.25, 0.5},
		{-0.5,  0.25,  0.25, -0.25,   0.5, 0.5}
	}
}

minetest.register_node("mypaths:grass", {
	description = "Grass",
	tiles = {"default_grass.png"},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {crumbly = 2, soil=1},
	sounds = default.node_sound_leaves_defaults(),
	})
--Craft
minetest.register_craft({
	output = "mypaths:grass 9",
	recipe = {
		{"default:dirt", "default:dirt","default:dirt"},
		{"default:dirt", "default:dirt","default:dirt"},
		{"default:dirt", "default:dirt","default:dirt"},
	}
})

minetest.register_node("mypaths:grass_slope", {
	description = "Grass slope",
	drawtype = "mesh",
	mesh = "slope_test_slope.obj",
	tiles = {"mypaths_grass_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_leaves_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
--Craft
minetest.register_craft({
	output = "mypaths:grass_slope 6",
	recipe = {
		{"", "","mypaths:grass"},
		{"", "mypaths:grass","mypaths:grass"},
		{"mypaths:grass", "mypaths:grass","mypaths:grass"},
	}
})
minetest.register_node("mypaths:grass_slope_long", {
	description = "Grass Slope Long",
	drawtype = "mesh",
	mesh = "slope_test_slope_long.obj",
	tiles = {"mypaths_grass_mesh.png"},
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
	output = "mypaths:grass_slope_long 1",
	recipe = {
		{"mypaths:grass_slope", "mypaths:grass_slope",""},
		{"", "",""},
		{"", "",""},
	}
})

minetest.register_node("mypaths:grass_ocorner", {
	description = "Grass slope (outer corner)",
	drawtype = "mesh",
	mesh = "slope_test_ocorner.obj",
	tiles = {"mypaths_grass_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_leaves_defaults(),
	on_place = minetest.rotate_node,
	collision_box = ocorner_cbox,
	selection_box = ocorner_cbox
})
--Craft
minetest.register_craft({
	output = "mypaths:grass_ocorner 4",
	recipe = {
		{"", "",""},
		{"", "mypaths:grass","mypaths:grass"},
		{"", "mypaths:grass","mypaths:grass"},
	}
})


minetest.register_node("mypaths:grass_icorner", {
	description = "Grass slope (inner corner)",
	drawtype = "mesh",
	mesh = "slope_test_icorner.obj",
	tiles = {"mypaths_grass_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_leaves_defaults(),
	on_place = minetest.rotate_node,
	collision_box = icorner_cbox,
})
--Craft
minetest.register_craft({
	output = "mypaths:grass_icorner 5",
	recipe = {
		{"mypaths:grass", "mypaths:grass","mypaths:grass"},
		{"mypaths:grass", "",""},
		{"mypaths:grass", "",""},
	}
})
