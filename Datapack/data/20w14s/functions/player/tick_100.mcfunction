# Check if new
execute as @s[tag=!20w14s.initialised] run function 20w14s:init/new_player

# Activate command snakes
execute if entity @s[gamemode=!spectator] run tag @e[type=armor_stand,tag=20w14s.command_snake_head,tag=!20w14s.active,distance=..16] add 20w14s.active

# Random events
function 20w14s:general/random_number
scoreboard players operation rng temp = seed 20w14s.random
scoreboard players operation rng temp /= 2048 const
scoreboard players operation rng temp %= 2048 const

# Creeper sound
execute if score rng temp matches 0 run playsound entity.creeper.primed master @s ^ ^ ^-0.1 2 0.5

# Seker spawn
execute if score rng temp matches ..512 if score @s 20w14s.mine_skrn matches 1.. run function 20w14s:mobs/seker/try_spawn

# Supply drop
execute if score rng temp matches ..7 if predicate 20w14s:in_overworld align xyz positioned ~0.5 ~ ~0.5 run function 20w14s:mechanics/air_drop/happen

# Sheep block spawn
execute if score rng temp matches 8..40 run function 20w14s:mechanics/sheep_block/spawn

# Volcano
execute if score rng temp matches ..100 as @e[type=area_effect_cloud,tag=20w14s.volcano,distance=..64] at @s run function 20w14s:mechanics/volcanic_erruption/warning

# Get-resourcepack title
title @s subtitle {"translate":"translation.test.args","with":["Set language to","English (US)"],"color":"aqua"}
title @s title {"translate":"Get the resourcepack!","color":"aqua"}