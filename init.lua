-- Load support for MT game translation.
local S = minetest.get_translator("liquid_mercury")

-- Definitions made by this mod
liquid_mercury = {}

minetest.register_node("liquid_mercury:mercury_source", {
	description = S("Mercury Source"),
	drawtype = "liquid",
	waving = 1,
	tiles = {
		{
			name = "mercury_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
		{
			name = "mercury_source_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "liquid_mercury:mercury_flowing",
	liquid_alternative_source = "liquid_mercury:mercury_source",
	liquid_viscosity = 2,
	liquid_range = 3,
	liquid_renewable = false,
	post_effect_color = {a = 250, r = 0, g = 0, b = 0},
	groups = {liquid = 3, cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})

minetest.register_node("liquid_mercury:mercury_flowing", {
	description = S("Flowing Mercury"),
	drawtype = "flowingliquid",
	waving = 1,
	tiles = {"mercury.png"},
	special_tiles = {
		{
			name = "mercury_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.5,
			},
		},
		{
			name = "mercury_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.5,
			},
		},
	},
	paramtype2 = "flowingliquid",
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "liquid_mercury:mercury_flowing",
	liquid_alternative_source = "liquid_mercury:mercury_source",
	liquid_viscosity = 2,
	liquid_range = 3,
	liquid_renewable = false,
	post_effect_color = {a = 250, r = 0, g = 0, b = 0},
	groups = {liquid = 3, not_in_creative_inventory = 1, cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})
