setblock ~ ~1 ~ coarse_dirt
setblock ~ ~ ~ air

scoreboard players set 20w14s.default_snake_tail_length global 14
function 20w14s:mobs/command_snake/summon_command_snake

fill ~-1 ~ ~-1 ~1 ~ ~1 dirt replace air