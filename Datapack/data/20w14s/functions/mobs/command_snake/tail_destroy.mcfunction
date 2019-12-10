scoreboard players remove @s 20w14s.tail 1

execute if score @s 20w14s.tail matches ..0 run setblock ~ ~ ~ air destroy
execute if score @s 20w14s.tail matches ..0 run kill @s
execute if score @s 20w14s.tail matches ..0 run summon item ~ ~ ~ {Motion:[0.0,0.2,0.0],Item:{id:"minecraft:chain_command_block",Count:1b}}