# Summon
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon armor_stand ~ ~-0.51 ~ {Tags:["20w14s.command_snake_head","20w14s.new_temp"],Passengers:[{id:"minecraft:slime",CustomName:'"Command Snake"',Tags:["20w14s.command_snake_slime","20w14s.new_temp"],ActiveEffects:[{Id:14b,Duration:2147483647,ShowParticles:0b}],Size:1,Silent:1b,AbsorptionAmount:1000000f}],Fire:32767s,ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1,tag:{CustomModelData:1}}],Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b}

# Assign ID (to armorstand and slime)
scoreboard players add .next_snake 20w14s.id 1
scoreboard players operation @e[tag=20w14s.new_temp,limit=2] 20w14s.id = .next_snake 20w14s.id
scoreboard players operation @e[type=armor_stand,tag=20w14s.new_temp,limit=1] 20w14s.tail = 20w14s.default_snake_tail_length global

# Clean-up
tag @e[tag=20w14s.new_temp] remove 20w14s.new_temp