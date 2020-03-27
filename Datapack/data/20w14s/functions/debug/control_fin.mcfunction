execute store result score rx temp run data get entity @p Rotation[0] 100
execute store result score ry temp run data get entity @p Rotation[1] 100
execute store result score roll temp run data get entity @p SelectedItemSlot

scoreboard players add rx temp 0
scoreboard players remove ry temp 9000

execute if entity @p[gamemode=creative] store result entity 00000000-0000-0003-0000-0000000b2797 Pose.LeftArm[1] float 0.01 run scoreboard players get rx temp
execute if entity @p[gamemode=creative] store result entity 00000000-0000-0003-0000-0000000b2797 Pose.LeftArm[0] float 0.01 run scoreboard players get ry temp
execute if entity @p[gamemode=creative] store result entity 00000000-0000-0003-0000-0000000b2797 Pose.LeftArm[2] float 20.0 run scoreboard players get roll temp

schedule function 20w14s:debug/control_fin 1t