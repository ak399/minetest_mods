--[[Simple Machine Components]]

minetest.register_craftitem("safr_simple_machines:lever", {
	description = "Lever",
	inventory_image = "safr_simple_machines_lever.png",
})

minetest.register_craft({
	output = "safr_simple_machines:lever",
	recipe = {
		{"safr_simple_machines:inclined_plane"},
		{"default:stick"},
	},
})

minetest.register_craftitem("safr_simple_machines:wheel_and_axle", {
	description = "Wheel and Axle",
	inventory_image = "safr_simple_machines_wheel_and_axle.png",
})

minetest.register_craft({
	output = "safr_simple_machines:wheel_and_axle 4",
	recipe = {
		{"", "default:copper_ingot", ""},
		{"default:copper_ingot", "default:stick", "default:copper_ingot"},
		{"", "default:copper_ingot", ""},
	},
})

minetest.register_craftitem("safr_simple_machines:pulley", {
	description = "Pulley",
	inventory_image = "safr_simple_machines_pulley.png",
})

minetest.register_craft({
	output = "safr_simple_machines:pulley 2",
	recipe = {
		{"safr_simple_machines:wheel_and_axle"},
		{"farming:string"},
		{"safr_simple_machines:wheel_and_axle"},
	},
})

minetest.register_craftitem("safr_simple_machines:inclined_plane", {
	description = "Inclined Plane",
	inventory_image = "safr_simple_machines_inclined_plane.png",
})

minetest.register_craft({
	output = "safr_simple_machines:inclined_plane 3",
	recipe = {
		{"", "", "default:copper_ingot"},
		{"", "default:copper_ingot", ""},
		{"default:copper_ingot", "", ""},
	},
})

minetest.register_craftitem("safr_simple_machines:wedge", {
	description = "Wedge",
	inventory_image = "safr_simple_machines_wedge.png",
})

minetest.register_craft({
	output = "safr_simple_machines:wedge 2",
	recipe = {
		{"safr_simple_machines:inclined_plane","safr_simple_machines:inclined_plane"},
	},
})

minetest.register_craftitem("safr_simple_machines:screw", {
	description = "Screw",
	inventory_image = "safr_simple_machines_screw.png",
})

minetest.register_craft({
	output = "safr_simple_machines:screw 3",
	recipe = {
		{"default:copper_ingot", ""},
		{"", "default:copper_ingot"},
		{"default:copper_ingot", ""},
	},
})

--[[Other Components]]

minetest.register_craftitem("safr_simple_machines:gear", {
	description = "Gear",
	inventory_image = "safr_simple_machines_gear.png",
})

minetest.register_craft({
	output = "safr_simple_machines:gear 5",
	recipe = {
		{"", "default:copper_ingot", ""},
		{"default:copper_ingot", "safr_simple_machines:wheel_and_axle", "default:copper_ingot"},
		{"", "default:copper_ingot", ""},
	},
})

minetest.register_craftitem("safr_simple_machines:nut", {
	description = "Nut",
	inventory_image = "safr_simple_machines_nut.png",
})

minetest.register_craft({
	output = "safr_simple_machines:nut",
	recipe = {
		{"safr_simple_machines:screw"},
		{"default:copper_ingot"},
	},
	replacements = {
		{"safr_simple_machines:screw", "safr_simple_machines:screw"},
})

minetest.register_craftitem("safr_simple_machines:belt", {
	description = "Gear",
	inventory_image = "safr_simple_machines_belt.png",
})

minetest.register_craft({
	output = "safr_simple_machines:belt 2",
	recipe = {
		{"farming:string", "default:paper", "farming:string"},
		{"safr_simple_machines:wheel_and_axle", "", "safr_simple_machines:wheel_and_axle"},
		{"farming:string", "default:paper", "farming:string"},
	},
	replacements = {
		{"safr_simple_machines:wheel_and_axle", "safr_simple_machines:wheel_and_axle"},
})
