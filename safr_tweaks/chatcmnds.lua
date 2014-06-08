--GETTIME
function round(num, idp)
  local mult = 10^(idp or 0)
  return math.floor(num * mult + 0.5) / mult
end

minetest.register_chatcommand("gettime", {
	params = "",
	description = "print current time of day",
	privs = {shout=true},
	func = function(name, param)
		minetest.chat_send_player(name, "It is " .. (round(minetest.env:get_timeofday() * 24,2)) .. " o'clock")
	end,
})

--[[RESPAWN
minetest.register_chatcommand("respawn", {
	params = "",
	privs = {},
	description = "Respawn",
	func = function(name, param)
		local player = minetest.env:get_player_by_name(name)
		if not player then
			return
		else
			minetest.chat_send_all(name.." respawned")
			player:set_hp(0)
		end
	end
})
]]