dofile(minetest.get_modpath("safr_tweaks").."/chatcmnds.lua")
dofile(minetest.get_modpath("safr_tweaks").."/deathnotice.lua")
dofile(minetest.get_modpath("safr_tweaks").."/nodes.lua")

--[[timestop
minetest.register_chatcommand("stoptime_noon", {
	params = "",
	description = "make day permanent",
	privs = {shout=true,settime=true},
	func = function()
		override_day_night_ratio(1)
	end,
})

minetest.register_chatcommand("stoptime_night", {
	params = "",
	description = "make night permanent",
	privs = {shout=true,settime=true},
	func = function()
		override_day_night_ratio(0)
	end,
})

minetest.register_chatcommand("starttime", {
	params = "",
	description = "return to the regular clock",
	privs = {shout=true,settime=true},
	func = function()
		override_day_night_ratio(nil)
	end,
})
]]
--[[JOIN INFO

minetest.register_on_joinplayer(function(player)
	minetest.after(10, minetest.chat_send_player, player:get_player_name(), "Welcome to SAFR's server!")
end)
]]