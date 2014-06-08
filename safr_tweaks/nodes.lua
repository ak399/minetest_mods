--COMPRESSED COAL

minetest.register_craft({
	type = "fuel",
	recipe = "safr_tweaks:compressed_carbon",
	burntime = 3350,
})

minetest.register_craft({
	type = "cooking",
	output = "default:diamond 4",
	recipe = "safr_tweaks:compressed_carbon",
})

minetest.register_node("safr_tweaks:compressed_carbon", {
	description = "Compressed Carbon",
	tiles = {"safr_tweaks_compressed_carbon.png"},
	is_ground_content = true,
	groups = {cracky=3},

})

minetest.register_craft({
	output = 'safr_tweaks:compressed_carbon',
	recipe = {
		{'default:coalblock', 'default:coalblock', 'default:coalblock'},
		{'default:coalblock', 'default:coalblock', 'default:coalblock'},
		{'default:coalblock', 'default:coalblock', 'default:coalblock'},
	}
})