execute store result score slot temp run data get entity @p SelectedItemSlot
execute unless score slot temp = prev_slot temp run tellraw @a [{"score":{"name":"20w14s.end_boss_tick","objective":"global"}},"\t",{"score":{"name":"slot","objective":"temp"}}]
scoreboard players operation prev_slot temp = slot temp

schedule function 20w14s:debug/print_player_selected_slot 1t