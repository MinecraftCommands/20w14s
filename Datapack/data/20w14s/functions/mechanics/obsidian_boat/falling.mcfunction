#      -0.7  0  0.7
#  0.7   *   *   *
#    0   *   *   *
# -0.7   *   *   *

# Check if block below
scoreboard players set falling temp 0
execute if block ~0.7 ~-0.1 ~0.7 #20w14s:no_hitbox if block ~0.7 ~-0.1 ~ #20w14s:no_hitbox if block ~0.7 ~-0.1 ~-0.7 #20w14s:no_hitbox if block ~ ~-0.1 ~0.7 #20w14s:no_hitbox if block ~ ~-0.1 ~ #20w14s:no_hitbox if block ~ ~-0.1 ~-0.7 #20w14s:no_hitbox if block ~-0.7 ~-0.1 ~0.7 #20w14s:no_hitbox if block ~-0.7 ~-0.1 ~ #20w14s:no_hitbox if block ~-0.7 ~-0.1 ~-0.7 #20w14s:no_hitbox run scoreboard players set falling temp 1

# If there is, add NoGravity and stop falling
execute if score falling temp matches 0 if entity @s[tag=20w14s.was_falling] run data modify entity @s NoGravity set value 1b
execute if score falling temp matches 0 if entity @s[tag=20w14s.was_falling] run tp @s @s

# Else continue falling and reschedule this
execute if score falling temp matches 1 if entity @s[tag=!20w14s.was_falling] run data modify entity @s NoGravity set value 0b
execute if score falling temp matches 1 run schedule function 20w14s:mechanics/obsidian_boat/continue_falling 1t

# Tag for next time
tag @s remove 20w14s.was_falling
execute if score falling temp matches 1 run tag @s add 20w14s.was_falling