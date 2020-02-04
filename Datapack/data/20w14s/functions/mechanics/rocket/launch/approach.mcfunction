# Get current realtime since start
execute store result score worldborder_size temp run worldborder get
scoreboard players remove worldborder_size temp 30000000

# Move rocket and pig
execute as @e[type=armor_stand,tag=20w14s.rocket] at @s run tp @s ~-3 ~ ~
execute as @e[type=pig,tag=20w14s.spectate_pig,limit=1] at @s run tp @s ~-2.6 ~ ~
execute as @a[tag=20w14s.in_rocket] run spectate @e[type=pig,tag=20w14s.spectate_pig,limit=1]

# Particles
execute at @e[type=armor_stand,tag=20w14s.rocket] run particle explosion_emitter ~15 ~ ~ 5 1 1 0 10 force
execute at @e[type=armor_stand,tag=20w14s.rocket] run particle flame ~15 ~ ~ 5 1 1 0.4 50 force

# Decide whether to end
execute if score worldborder_size temp matches ..399 run schedule function 20w14s:mechanics/rocket/launch/approach 3t
execute if score worldborder_size temp matches 400.. run schedule function 20w14s:mechanics/rocket/launch/crash 3t