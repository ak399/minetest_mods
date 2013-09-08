--ithildin node
minetest.register_node("ithildin:ithildin_0", {
	description = "Ithildin",
	tiles = { 'ithildin_0.png' },
	inventory_image = ("ithildin_1.png"),
	drawtype = 'glasslike',
	walkable = false,
	pointable = false,
	sunlight_propagates = true,
	drop = "ithildin:ithildin_0",
	groups = {snappy=2,cracky=3},
	sounds = default.node_sound_glass_defaults(),
	furnace_burntime = 4,
})

minetest.register_node("ithildin:ithildin_1", {
	description = "Ithildin",
	tiles = { 'ithildin_1.png' },
	drawtype = 'glasslike',
	walkable = true,
	pointable = true,
	sunlight_propagates = true,
	light_source = 8,
	drop = "ithildin:ithildin_0",
	groups = {snappy=2,cracky=3},
	sounds = default.node_sound_glass_defaults(),
	furnace_burntime = 4,
})

--ithildin_stone node

minetest.register_node("ithildin:ithildin_stone_0", {
	description = "Ithildin Stone",
	tiles = {"ithildin_stone_0.png"},
	inventory_image = ("ithildin_stone_1.png"),
	drawtype = 'normal',
--	post_effect_color = {a=191, r=0, g=0, b=127}
	walkable = true,
	pointable = true,
	sunlight_propagates = false,
	drop = "ithildin:ithildin_stone_0",
	groups = {snappy=2,cracky=3},
	sounds = default.node_sound_glass_defaults(),
	furnace_burntime = 4,
})

minetest.register_node("ithildin:ithildin_stone_1", {
	description = "Ithildin Stone",
	tiles = { 'ithildin_stone_1.png' },
	drawtype = 'normal',
--	post_effect_color = { r=0, g=0, b=127, a=191 }
	walkable = false,
	pointable = true,
	sunlight_propagates = true,
	light_source = 8,
	drop = "ithildin:ithildin_stone_0",
	groups = {snappy=2,cracky=3},
	sounds = default.node_sound_glass_defaults(),
	furnace_burntime = 4,
})

--craft

minetest.register_craft({
	output = "ithildin:ithildin_0",
	recipe = {
	{"default:torch", "moreores:mithril_ingot", "default:torch"},
	{"default:glass", "", "default:glass"},
	{"default:torch", "moreores:mithril_ingot", "default:torch"},
	},
})

minetest.register_craft({
	output = "ithildin:ithildin_stone_0",
	recipe = {
	{"default:torch", "moreores:mithril_ingot", "default:torch"},
	{"default:glass", "default:stone", "default:glass"},
	{"default:torch", "moreores:mithril_ingot", "default:torch"},
	},
})

minetest.register_craft({
	output = "ithildin:ithildin_stone_0",
	recipe = {
	{"ithildin:ithildin_0"},
	{"default:stone"},
	},
})

minetest.register_craft({
	output = "ithildin:ithildin_0",
	recipe = {
	{"ithildin:ithildin_stone_0"},
	},
	replacements = {
	{"default:stone"},
	},
})

--ithildin function

minetest.register_abm(
	{nodenames = {"ithildin:ithildin_1"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.env:get_timeofday() > 0.2 and minetest.env:get_timeofday() < 0.8
		then
			minetest.env:set_node(pos, {name="ithildin:ithildin_0"})
		end
	end,
})

minetest.register_abm(
	{nodenames = {"ithildin:ithildin_0"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.env:get_timeofday() < 0.2 or minetest.env:get_timeofday() > 0.8
		then
			minetest.env:set_node(pos, {name="ithildin:ithildin_1"})
		end
	end,
})

--ithildin_stone function

minetest.register_abm(
	{nodenames = {"ithildin:ithildin_stone_1"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.env:get_timeofday() > 0.2 and minetest.env:get_timeofday() < 0.8
		then
			minetest.env:set_node(pos, {name="ithildin:ithildin_stone_0"})
		end
	end,
})

minetest.register_abm(
	{nodenames = {"ithildin:ithildin_stone_0"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.env:get_timeofday() < 0.2 or minetest.env:get_timeofday() > 0.8
		then
			minetest.env:set_node(pos, {name="ithildin:ithildin_stone_1"})
		end
	end,
})
