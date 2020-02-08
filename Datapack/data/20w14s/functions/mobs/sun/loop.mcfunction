# Get current realtime since start
execute store result score worldborder_size temp in the_end run worldborder get
scoreboard players remove worldborder_size temp 30000000
# tellraw @a [{"score":{"name":"20w14s.end_boss_tick","objective":"global"}}," : ",{"score":{"name":"worldborder_size","objective":"temp"}}]

# Increment our tick by 1 when worldborder timer ahead of our tick
execute if score worldborder_size temp > 20w14s.end_boss_tick global in the_end run function 20w14s:mobs/sun/tree/layer_0/file_0
execute if score worldborder_size temp > 20w14s.end_boss_tick global run scoreboard players add 20w14s.end_boss_tick global 1

# Decide whether to end
execute if score 20w14s.end_boss_tick global matches 5101.. run schedule function 20w14s:mobs/sun/end 1t
# Else if we've caught up to worldborder, schedule loop again in 1 tick
execute if score 20w14s.end_boss_tick global matches ..5100 if score worldborder_size temp <= 20w14s.end_boss_tick global run schedule function 20w14s:mobs/sun/loop 1t
# Else if we haven't caught up, schedule loop again immediately
execute if score 20w14s.end_boss_tick global matches ..5100 if score worldborder_size temp > 20w14s.end_boss_tick global run function 20w14s:mobs/sun/loop
