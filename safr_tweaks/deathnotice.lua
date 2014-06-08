--[[DEATH NOTICE

minetest.register_on_dieplayer(function(player)
	minetest.chat_send_all(player:get_player_name().." found god")
end)
]]

--DEATH NOTICE v2

minetest.register_on_dieplayer(function(player)
local player_name = player:get_player_name()
if minetest.is_singleplayer() then
player_name = "You"
end
-- Death by lava
local nodename = minetest.get_node(player:getpos()).name
if nodename == "default:lava_source" or nodename == "default:lava_flowing" then
minetest.chat_send_all(player_name .. " met with Hephaestus.")
-- Death by drowning
elseif nodename == "default:water_source" or nodename == "default:water_flowing" then
minetest.chat_send_all(player_name .. " met with Poseidon.")
--Death by fire
elseif nodename == "fire:basic_flame" then
minetest.chat_send_all(player_name .. " met with Hephaestus.")
--Death by something else
else
minetest.chat_send_all(player_name .. " met with Hades.")
end

end)