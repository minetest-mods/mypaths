
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
			"default_grass.png",
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
			"default_grass.png",
			"default_grass.png",
			"mypaths_dirt_road.png",
			"mypaths_dirt_road.png",
			"default_grass.png",
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
			"default_grass.png",
			"mypaths_dirt_road.png",
			"mypaths_dirt_road_side.png^[transformR180",
			"default_grass.png",
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
			"default_grass.png",
			"mypaths_dirt_road_side.png",
			"default_grass.png",
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
			"default_grass.png",
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
			"default_grass.png",
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
			"default_grass.png",
			"mypaths_dirt_road_side2.png",
			"default_grass.png",
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

