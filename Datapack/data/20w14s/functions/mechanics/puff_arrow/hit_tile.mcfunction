summon minecraft:pufferfish ~ ~ ~ {Air:100s,PuffState:2}
function 20w14s:general/random_number
scoreboard players operation #temp temp = seed 20w14s.random
scoreboard players operation #temp temp %= 360 const
execute store result entity @e[type=pufferfish,limit=1,sort=nearest] Rotation[0] float 1 run scoreboard players get #temp temp
kill @s[type=arrow]