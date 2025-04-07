
--Dirt
minetest.register_node("mypaths:dirt", {
	description = "Dirt",
	tiles = {"mypaths_dirt_road.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {crumbly = 2},
	is_ground_content = false,
	sounds = default.node_sound_dirt_defaults(),
})

--Dirt Road Side
minetest.register_node("mypaths:dirt_road_side", {
	description = "Dirt Road Side",
	tiles = {"default_grass.png^mypaths_dirt_road_side.png",
			"default_grass.png^mypaths_dirt_road_side.png",
			"default_grass.png",
			"default_grass.png^mypaths_dirt_road.png",
			"default_grass.png^mypaths_dirt_road_side2.png",
			"default_grass.png^mypaths_dirt_road_side.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {crumbly = 2},
	is_ground_content = false,
	sounds = default.node_sound_dirt_defaults(),
})
--Dirt Road Side Angle
minetest.register_node("mypaths:dirt_road_side_angle", {
	description = "Dirt Road Side Angle",
	tiles = {"default_grass.png^mypaths_dirt_road_side_angle.png",
			"default_grass.png",
			"default_grass.png",
			"default_grass.png^mypaths_dirt_road.png",
			"default_grass.png^mypaths_dirt_road.png",
			"default_grass.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {crumbly = 2},
	is_ground_content = false,
	sounds = default.node_sound_dirt_defaults(),
})
--Dirt Road Side Angle End
minetest.register_node("mypaths:dirt_road_side_angle_end1", {
	description = "Dirt Road Angle End 1",
	tiles = {"default_grass.png^mypaths_dirt_road_side_angle_end1.png",
			"default_grass.png^mypaths_dirt_road_side_angle_end2.png^[transformR180",
			"default_grass.png",
			"default_grass.png^mypaths_dirt_road.png",
			"default_grass.png^mypaths_dirt_road_side.png^[transformR180",
			"default_grass.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {crumbly = 2},
	is_ground_content = false,
	sounds = default.node_sound_dirt_defaults(),
})
--Dirt Road Side Angle End
minetest.register_node("mypaths:dirt_road_side_angle_end2", {
	description = "Dirt Road Angle End 2",
	tiles = {"default_grass.png^mypaths_dirt_road_side_angle_end2.png",
			"default_grass.png^mypaths_dirt_road_side_angle_end2.png^[transformFY",
			"default_grass.png^mypaths_dirt_road.png",
			"default_grass.png",
			"default_grass.png^mypaths_dirt_road_side.png",
			"default_grass.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {crumbly = 2},
	is_ground_content = false,
	sounds = default.node_sound_dirt_defaults(),
})
--Dirt Road Side Angle End
minetest.register_node("mypaths:dirt_road_side_angle_end3", {
	description = "Dirt Road Angle End 3",
	tiles = {"default_grass.png^mypaths_dirt_road_side_angle_end3.png",
			"default_grass.png^mypaths_dirt_road_side_angle_end4.png^[transformR180",
			"default_grass.png^mypaths_dirt_road.png",
			"default_grass.png^mypaths_dirt_road_side.png",
			"default_grass.png^mypaths_dirt_road.png",
			"default_grass.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {crumbly = 2},
	is_ground_content = false,
	sounds = default.node_sound_dirt_defaults(),
})
--Dirt Road Side Angle End
minetest.register_node("mypaths:dirt_road_side_angle_end4", {
	description = "Dirt Road Angle End 4",
	tiles = {"default_grass.png^mypaths_dirt_road_side_angle_end4.png",
			"default_grass.png^mypaths_dirt_road_side_angle_end3.png^[transformR180",
			"default_grass.png^mypaths_dirt_road_side.png^[transformR180",
			"default_grass.png^mypaths_dirt_road.png",
			"default_grass.png^mypaths_dirt_road.png",
			"default_grass.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {crumbly = 2},
	is_ground_content = false,
	sounds = default.node_sound_dirt_defaults(),
})
--Dirt Road Inside Corner
minetest.register_node("mypaths:dirt_road_icorner", {
	description = "Dirt Road Inside Corner",
	tiles = {"default_grass.png^mypaths_dirt_road_icorner.png",
			"default_grass.png^mypaths_dirt_road_icorner.png^[transformR90",
			"default_grass.png^mypaths_dirt_road_side2.png",
			"default_grass.png^mypaths_dirt_road.png",
			"default_grass.png^mypaths_dirt_road.png",
			"default_grass.png^mypaths_dirt_road_side.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {crumbly = 2},
	is_ground_content = false,
	sounds = default.node_sound_dirt_defaults(),
})

--Dirt Road Outside Corner
minetest.register_node("mypaths:dirt_road_ocorner", {
	description = "Dirt Road Outside Corner",
	tiles = {"default_grass.png^mypaths_dirt_road_ocorner.png",
			"default_grass.png^mypaths_dirt_road_ocorner.png^[transformR270",
			"default_grass.png",
			"default_grass.png^mypaths_dirt_road_side2.png",
			"default_grass.png",
			"default_grass.png^mypaths_dirt_road_side.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {crumbly = 2},
	is_ground_content = false,
	sounds = default.node_sound_dirt_defaults(),
})

