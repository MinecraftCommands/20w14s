#> Calculates various things that help teleport the player

# Get portal id
scoreboard players operation portal_in_id 20w14s.prtl_tp = @s 20w14s.prtl_id

# Get portal color to teleport to
execute if entity @s[tag=20w14s.blue_portal] run scoreboard players set portal_out_color 20w14s.prtl_tp 1
execute if entity @s[tag=20w14s.orange_portal] run scoreboard players set portal_out_color 20w14s.prtl_tp 0
execute if entity @s[tag=20w14s.red_portal] run scoreboard players set portal_out_color 20w14s.prtl_tp 3
execute if entity @s[tag=20w14s.yellow_portal] run scoreboard players set portal_out_color 20w14s.prtl_tp 2
execute if entity @s[tag=20w14s.light_blue_portal] run scoreboard players set portal_out_color 20w14s.prtl_tp 5
execute if entity @s[tag=20w14s.purple_portal] run scoreboard players set portal_out_color 20w14s.prtl_tp 4

# Get portal direction player is teleporting from
scoreboard players operation portal_in_direction 20w14s.prtl_tp = @s 20w14s.prtl_dir

# Get direction of portal the player is teleporting to
execute if score portal_out_color 20w14s.prtl_tp matches 0 as @e[type=area_effect_cloud,name=20w14s.portal_main,tag=20w14s.portal_main,tag=20w14s.blue_portal_main] if score @s 20w14s.prtl_id = portal_in_id 20w14s.prtl_tp if score @s 20w14s.prtl_ct = player_blue_portal_count 20w14s.prtl_tp run scoreboard players operation portal_out_direction 20w14s.prtl_tp = @s 20w14s.prtl_dir
execute if score portal_out_color 20w14s.prtl_tp matches 1 as @e[type=area_effect_cloud,name=20w14s.portal_main,tag=20w14s.portal_main,tag=20w14s.orange_portal_main] if score @s 20w14s.prtl_id = portal_in_id 20w14s.prtl_tp if score @s 20w14s.prtl_ct = player_orange_portal_count 20w14s.prtl_tp run scoreboard players operation portal_out_direction 20w14s.prtl_tp = @s 20w14s.prtl_dir
execute if score portal_out_color 20w14s.prtl_tp matches 2 as @e[type=area_effect_cloud,name=20w14s.portal_main,tag=20w14s.portal_main,tag=20w14s.red_portal_main] if score @s 20w14s.prtl_id = portal_in_id 20w14s.prtl_tp if score @s 20w14s.prtl_ct = player_red_portal_count 20w14s.prtl_tp run scoreboard players operation portal_out_direction 20w14s.prtl_tp = @s 20w14s.prtl_dir
execute if score portal_out_color 20w14s.prtl_tp matches 3 as @e[type=area_effect_cloud,name=20w14s.portal_main,tag=20w14s.portal_main,tag=20w14s.yellow_portal_main] if score @s 20w14s.prtl_id = portal_in_id 20w14s.prtl_tp if score @s 20w14s.prtl_ct = player_yellow_portal_count 20w14s.prtl_tp run scoreboard players operation portal_out_direction 20w14s.prtl_tp = @s 20w14s.prtl_dir
execute if score portal_out_color 20w14s.prtl_tp matches 4 as @e[type=area_effect_cloud,name=20w14s.portal_main,tag=20w14s.portal_main,tag=20w14s.light_blue_portal_main] if score @s 20w14s.prtl_id = portal_in_id 20w14s.prtl_tp if score @s 20w14s.prtl_ct = player_light_blue_portal_count 20w14s.prtl_tp run scoreboard players operation portal_out_direction 20w14s.prtl_tp = @s 20w14s.prtl_dir
execute if score portal_out_color 20w14s.prtl_tp matches 5 as @e[type=area_effect_cloud,name=20w14s.portal_main,tag=20w14s.portal_main,tag=20w14s.purple_portal_main] if score @s 20w14s.prtl_id = portal_in_id 20w14s.prtl_tp if score @s 20w14s.prtl_ct = player_purple_portal_count 20w14s.prtl_tp run scoreboard players operation portal_out_direction 20w14s.prtl_tp = @s 20w14s.prtl_dir

# Get Y angle of portal teleporting from
scoreboard players operation portal_in_y_rotation 20w14s.prtl_tp = portal_in_direction 20w14s.prtl_tp
scoreboard players operation portal_in_y_rotation 20w14s.prtl_tp %= 4 const
scoreboard players operation portal_in_y_rotation 20w14s.prtl_tp *= 90 const

# Get Y angle of portal teleporting to, but rotate it 180 degrees
scoreboard players operation portal_out_y_rotation 20w14s.prtl_tp = portal_out_direction 20w14s.prtl_tp
scoreboard players operation portal_out_y_rotation 20w14s.prtl_tp %= 4 const
scoreboard players operation portal_out_y_rotation 20w14s.prtl_tp *= 90 const
scoreboard players remove portal_out_y_rotation 20w14s.prtl_tp 180
execute if score portal_out_y_rotation 20w14s.prtl_tp matches ..-1 run scoreboard players add portal_out_y_rotation 20w14s.prtl_tp 360

# Get number of degrees needed to rotate player to match the rotation of the portal teleporting to
scoreboard players operation player_out_y_rotation 20w14s.prtl_tp = portal_out_y_rotation 20w14s.prtl_tp
scoreboard players operation player_out_y_rotation 20w14s.prtl_tp -= player_in_y_rotation 20w14s.prtl_tp

scoreboard players operation player_out_rotation_delta 20w14s.prtl_tp = player_in_y_rotation 20w14s.prtl_tp
scoreboard players operation player_out_rotation_delta 20w14s.prtl_tp -= portal_in_y_rotation 20w14s.prtl_tp

scoreboard players operation player_out_y_rotation 20w14s.prtl_tp += player_out_rotation_delta 20w14s.prtl_tp
execute if score player_out_y_rotation 20w14s.prtl_tp matches ..-1 run scoreboard players add player_out_y_rotation 20w14s.prtl_tp 360