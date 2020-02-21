tag @s add 20w14s.portal_teleportation_initialized

# Copy scores
scoreboard players operation player_in_id 20w14s.prtl_tp = @s 20w14s.id
execute store result score player_in_y_rotation 20w14s.prtl_tp run data get entity @s Rotation[0] 1
execute if score player_in_y_rotation 20w14s.prtl_tp matches ..-1 run scoreboard players add player_in_y_rotation 20w14s.prtl_tp 360