data merge entity @e[type=boat,tag=!20w14s.obsidian_boat,nbt={Type:acacia},limit=1,sort=nearest] {Invulnerable:1b,NoGravity:1b,Tags:["20w14s.obsidian_boat","20w14s.new_temp"]}
execute as @e[type=boat,tag=20w14s.new_temp,limit=1,sort=nearest] run function 20w14s:mechanics/obsidian_boat/boat_tick
tag @e[type=boat,tag=20w14s.new_temp,limit=1,sort=nearest] remove 20w14s.new_temp

scoreboard players set @s 20w14s.obsn_boat 0