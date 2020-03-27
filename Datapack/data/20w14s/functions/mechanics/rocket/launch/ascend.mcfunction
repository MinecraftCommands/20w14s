# Get current realtime since start
execute store result score worldborder_size temp run worldborder get
scoreboard players remove worldborder_size temp 30000000

# Raise rocket, adjust pig
execute as @e[type=pig,tag=20w14s.spectate_pig,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=20w14s.rocket,limit=1]
execute as @a[tag=20w14s.in_rocket] run spectate @e[type=pig,tag=20w14s.spectate_pig,limit=1]

# Particles
execute at @e[type=armor_stand,tag=20w14s.rocket] run particle explosion_emitter ~ ~-15 ~ 1 5 1 0 10 force
execute at @e[type=armor_stand,tag=20w14s.rocket] run particle flame ~ ~-15 ~ 1 5 1 0.4 50 force
execute as @e[type=armor_stand,tag=20w14s.rocket] at @s run tp @s ~ ~1 ~ ~3 ~
execute if score worldborder_size temp matches 80.. run execute as @e[type=armor_stand,tag=20w14s.rocket] at @s run tp @s ~ ~1 ~ ~5 ~

# Decide whether to end
execute if score worldborder_size temp matches ..199 run schedule function 20w14s:mechanics/rocket/launch/ascend 3t
execute if score worldborder_size temp matches 200.. run schedule function 20w14s:mechanics/rocket/launch/change_dimension 3t