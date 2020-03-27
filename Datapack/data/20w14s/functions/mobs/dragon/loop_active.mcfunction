# Movement loop
scoreboard players add 20w14s.dragon_loop timer 1
execute if score 20w14s.dragon_loop timer matches 1348 run scoreboard players set 20w14s.dragon_loop timer 0
execute as 00000000-0000-0004-0000-0000000b2797 in the_end run function 20w14s:mobs/dragon/tree/layer_0/file_0

# Attack cycle
scoreboard players add 20w14s.dragon_attack timer 1
execute if score 20w14s.dragon_attack timer matches 20.. run scoreboard players set 20w14s.dragon_attack timer 0
execute if score 20w14s.dragon_attack timer matches 0 run scoreboard players set recursion_limit temp 64
execute if score 20w14s.dragon_attack timer matches 0 run scoreboard players set ray_hit temp 0
execute if score 20w14s.dragon_attack timer matches 0 as 00000000-0000-0004-0000-0000000b2797 at @s at @r[tag=20w14s.fighting_red_dragon,gamemode=!spectator,distance=..128] facing entity @s feet run function 20w14s:mobs/dragon/attack_check

# Update bossbar
execute store result score dragon_health temp run data get entity 00000000-0000-0005-0000-0000000b2797 Health 1000
execute store result bossbar 20w14s:red_dragon_health value run scoreboard players get dragon_health temp

# Reschedule self
execute if score dragon_health temp matches 1.. run schedule function 20w14s:mobs/dragon/loop_active 3t

# Check for death
execute if score dragon_health temp matches 0 run kill 00000000-0000-0004-0000-0000000b2797
execute if score dragon_health temp matches 0 run loot give @a[tag=20w14s.fighting_red_dragon] loot 20w14s:entity/red_dragon